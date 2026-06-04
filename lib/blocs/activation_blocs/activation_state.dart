part of 'activation_bloc.dart';

@immutable
sealed class ActivationState {
  const ActivationState();
}

final class ActivationInitial extends ActivationState {}
final class ActivationLoading extends ActivationState {}
final class ActivationSuccess extends ActivationState {}
final class ActivationError extends ActivationState {
  final String message;

  const ActivationError(this.message);
}

