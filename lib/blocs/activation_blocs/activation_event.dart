part of 'activation_bloc.dart';

@immutable
abstract class ActivationEvent {
  const ActivationEvent();
}

class GetLicenseEvent extends ActivationEvent {
  final String code;
  const GetLicenseEvent(this.code);
}
