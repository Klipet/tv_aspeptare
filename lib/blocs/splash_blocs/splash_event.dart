part of 'splash_bloc.dart';

@immutable
sealed class SplashEvent {}

class GetUrlEvent extends SplashEvent {}
