part of 'order_bloc.dart';

@immutable
sealed class OrderEvent {}

/// Запустить polling (вызывается один раз при старте)
class HomeStarted extends OrderEvent {}

/// Остановить polling
class HomeStopped extends OrderEvent {}

/// Принудительно обновить данные
class HomeRefreshRequested extends OrderEvent {}

/// Внутреннее событие — пришли данные с сервера (вызывается таймером)
class _HomeTicked extends OrderEvent {}
