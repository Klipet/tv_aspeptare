part of 'order_bloc.dart';

@immutable
sealed class OrderState {}

/// Начальное состояние
class HomeInitial extends OrderState {}

/// Загрузка (первый запрос)
class HomeLoading extends OrderState {}

/// Данные получены
class HomeLoaded extends OrderState {
  final List<dynamic> ordersListLeft;
  final List<int> ordersListRight;

  HomeLoaded({
    required this.ordersListLeft,
    required this.ordersListRight,
  });

  /// Копия с изменёнными полями
  HomeLoaded copyWith({
    List<dynamic>? ordersListLeft,
    List<int>? ordersListRight,
  }) {
    return HomeLoaded(
      ordersListLeft: ordersListLeft ?? this.ordersListLeft,
      ordersListRight: ordersListRight ?? this.ordersListRight,
    );
  }
}

/// Ошибка сети (нет связи)
class HomeNoConnection extends OrderState {
  /// Последние известные данные — экран не гаснет при потере связи
  final List<dynamic> ordersListLeft;
  final List<int> ordersListRight;

  HomeNoConnection({
    this.ordersListLeft = const [],
    this.ordersListRight = const [],
  });
}

/// URL не задан — нужна активация
class HomeNotActivated extends OrderState {}
