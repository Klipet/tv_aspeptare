part of 'adb_bloc.dart';

@immutable
abstract class AdbEvent {
  const AdbEvent();
}

class GetCodeAdbEvent extends AdbEvent{
  final String code;
  const GetCodeAdbEvent(this.code);
}
