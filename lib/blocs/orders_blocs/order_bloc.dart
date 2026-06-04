import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../db_isar/isar_repository/license_isar_repository.dart';
import '../../models/order_model.dart';
import '../../providers/logger_providers/app_logger.dart';
import '../../services/get_orders_service.dart';

part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  /// Интервал polling — 5 секунд
  static const _pollInterval = Duration(seconds: 5);

  /// Таймер polling
  Timer? _pollTimer;

  /// Последние известные списки (чтобы не терять данные при ошибке сети)
  List<dynamic> _lastLeft = [];
  List<int> _lastRight = [];

  /// Кол-во часов для фильтрации заказов (приходит снаружи)
  final int deleteHours;

  OrderBloc({this.deleteHours = 24}) : super(HomeInitial()) {
    on<HomeStarted>(_onStarted);
    on<HomeStopped>(_onStopped);
    on<HomeRefreshRequested>(_onRefreshRequested);
    on<_HomeTicked>(_onTicked);
  }

  // ── Handlers ─────────────────────────────────────────────────────────────────

  Future<void> _onStarted(
      HomeStarted event,
      Emitter<OrderState> emit,
      ) async {
    emit(HomeLoading());
    await _fetchAndEmit(emit);
    _startTimer();
  }

  Future<void> _onStopped(
      HomeStopped event,
      Emitter<OrderState> emit,
      ) async {
    _stopTimer();
  }

  Future<void> _onRefreshRequested(
      HomeRefreshRequested event,
      Emitter<OrderState> emit,
      ) async {
    await _fetchAndEmit(emit);
  }

  Future<void> _onTicked(
      _HomeTicked event,
      Emitter<OrderState> emit,
      ) async {
    await _fetchAndEmit(emit);
  }

  // ── Timer ─────────────────────────────────────────────────────────────────────

  void _startTimer() {
    _pollTimer?.cancel();
    _pollTimer = Timer.periodic(_pollInterval, (_) {
      if (!isClosed) add(_HomeTicked());
    });
  }

  void _stopTimer() {
    _pollTimer?.cancel();
    _pollTimer = null;
  }

  // ── Fetch ─────────────────────────────────────────────────────────────────────

  Future<void> _fetchAndEmit(Emitter<OrderState> emit) async {
    final url = await LicenseIsarRepository().getUrl();

    if (url == null || url.isEmpty) {
      emit(HomeNotActivated());
      return;
    }

    try {
      final orders = await OrderService().getOrdeers(url: url, deleteHours: deleteHours);
      if(orders != null){
        _applyStatus(orders);
        emit(HomeLoaded(
          ordersListLeft: List.from(_lastLeft),
          ordersListRight: List.from(_lastRight),
        ));
      } else {
        emit(HomeNoConnection(
          ordersListLeft: _lastLeft,
          ordersListRight: _lastRight,
        ));
      }
    } on TimeoutException {
      emit(HomeNoConnection(
        ordersListLeft: _lastLeft,
        ordersListRight: _lastRight,
      ));
    } catch (e) {
      emit(HomeNoConnection(
        ordersListLeft: _lastLeft,
        ordersListRight: _lastRight,
      ));
    }
  }

  // ── Бизнес-логика статусов ────────────────────────────────────────────────────

  Future<void> _applyStatus(List<Order> orders) async {
    final tempLeft = <dynamic>[];
    final tempRight = <int>[];

    for (final order in orders) {
      try {
        if (order.state == 2 || order.state == 3) {
          tempLeft.add(order.number);
        } else if (order.state == 6) {
          if (!tempRight.contains(order.number)) {
            tempRight.add(order.number);
          }
        } else if (order.state == 4) {
          tempRight.remove(order.number);
        }
      } catch (e) {
        await AppLogger().log(
          action: '_applyStatus',
          message: 'Error apply data',
          details: e.toString(),
          type: 2,
        );
      }
    }

    _lastLeft = tempLeft;
    _lastRight = tempRight;
  }

  @override
  Future<void> close() {
    _stopTimer();
    return super.close();
  }
}