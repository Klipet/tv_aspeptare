import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:rich_console/rich_console.dart';
import 'package:tv_aspeptare/db_isar/isar_repository/license_isar_repository.dart';
import 'package:tv_aspeptare/services/get_url_service.dart';

import '../../providers/logger_providers/app_logger.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final GetUrlService getUrlService;

  SplashBloc(this.getUrlService) : super(SplashInitial()) {
    on<SplashEvent>(_onSplashStarted);
  }

  Future<void> _onSplashStarted(
    SplashEvent event,
    Emitter<SplashState> emit,
  ) async {
    emit(SplashLoading());
    try {
      final LicenseIsarRepository repository = LicenseIsarRepository();
      final url = await repository.getUrl()??'';
      if (url.isEmpty || url == '') {
        await AppLogger().log(
          action: 'SplashBloc',
          message: 'Uri is Empty',
          details: "Ошибка занрузки данных",
          type: 2,
        );
        emit(SplashError());
      } else {
        final licenseID = await repository.getApiKey() ?? '';
        final response = await getUrlService.getUrl(licenseID: licenseID);
        await repository.save(
          licenseCode: response.appData?.licenseCode ?? '',
          uri: response.appData?.uri ?? '',
          apikey: response.appData?.licenseID ?? '',
          company: response.appData?.company ?? '',
        );
        emit(SplashLoaded());
      }
    } catch (e) {
      await AppLogger().log(
        action: 'SplashBloc',
        message: e.toString(),
        details: "",
        type: 2,
      );
      emit(SplashError());
    }
  }
}
