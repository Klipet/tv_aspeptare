import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../db_isar/isar_repository/license_isar_repository.dart';
import '../../services/activation_adb_service.dart';

part 'adb_event.dart';
part 'adb_state.dart';

class AdbBloc extends Bloc<AdbEvent, AdbState> {
  final ActivationAdbService activationApi;
  AdbBloc(this.activationApi) : super(AdbInitial()) {
    on<GetCodeAdbEvent>(_onFetchActivationAdb);
  }


  Future<void> _onFetchActivationAdb(GetCodeAdbEvent event, Emitter<AdbState> emit) async {
    emit(AdbLoading());
    final apiResponse = await activationApi.activationLicenseAdb( licenseCode: event.code);
    final LicenseIsarRepository repository = LicenseIsarRepository();

    try {
      if (apiResponse != null && apiResponse.errorCode == 0 && apiResponse.data != null) {
        final apikey = apiResponse.data.deviceKey;
        await repository.save(apikey: apikey!,uri:  uri!,licenseCode:  licenseCode!, company:  company!);
        emit(ActivationSuccess());
      } else {
        await AppLogger().log(
          action: 'ActivationBloc',
          message: "Ошибка занрузки данных",
          details: apiResponse!.errorMessage,
          type: 2,
        );
        emit( ActivationError(apiResponse.errorMessage));
      }
    } catch (e, t) {
      await AppLogger().log(
        action: 'ActivationBloc',
        message: e,
        details: "Ошибка занрузки данных",
        type: 2,
      );
      emit(ActivationError(e.toString()));
    }
  }
}
