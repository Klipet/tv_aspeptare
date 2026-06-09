part of 'adb_bloc.dart';

@immutable
sealed class AdbState {
  const AdbState();
}

final class AdbInitial extends AdbState {}
final class AdbLoading extends AdbState {}
final class AdbSuccess extends AdbState {}
final class AdbError extends AdbState {
  final String message;

  const AdbError(this.message);
}
