import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  Future<void> changeLanguage(
    bool isAr,
  ) async {
    // Change language to Arabic
    emit(ChangeLanguage(isAr));
  }
}
