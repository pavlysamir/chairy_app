part of 'home_cubit.dart';

class HomeState {}

final class HomeInitial extends HomeState {}

final class ChangeLanguage extends HomeState {
  final bool isAr;

  ChangeLanguage(this.isAr);
}
