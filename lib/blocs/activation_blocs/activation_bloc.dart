import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../db_isar/isar_repository/license_isar_repository.dart';
import '../../providers/logger_providers/app_logger.dart';
import '../../services/activation_api_service.dart';

part 'activation_event.dart';
part 'activation_state.dart';

class ActivationBloc extends Bloc<ActivationEvent, ActivationState> {
  final ActivationApi activationApi;
  ActivationBloc(this.activationApi) : super(ActivationInitial()) {
    on<GetLicenseEvent>(_onFetchActivationData);
  }


  Future<void> _onFetchActivationData(GetLicenseEvent event, Emitter<ActivationState> emit) async {
    emit(ActivationLoading());
    final apiResponse = await activationApi.activationLicense(event.code);
    final LicenseIsarRepository repository = LicenseIsarRepository();
    final apikey = apiResponse?.appData?.licenseID;
    final company = apiResponse?.appData?.company;
    try {
      if (apiResponse != null && apiResponse.errorCode == 0 && apiResponse.appData != null) {
        final uri = apiResponse.appData?.uri;
        final licenseCode = apiResponse.appData?.licenseCode;
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
