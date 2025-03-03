import 'package:get_it/get_it.dart';
import 'package:trendco_app/core/shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;
void setUpServiceLocator() {
  getIt.registerSingleton<CashHelperSharedPreferences>(
      CashHelperSharedPreferences());
  // GetIt.instance.registerSingleton<DatabaseService>(FirebaseService());
}
