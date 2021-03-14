import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '../services/onShopBillingDataService.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';

final locator = GetIt.instance;

@injectable
void setupLocator() {
  // Services
  locator.registerLazySingleton(() => ThemeService());
  locator.registerLazySingleton(() => NavigationService());
  // locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => SnackbarService());
  // locator.registerLazySingleton(() => StorageService());
  // locator.registerLazySingleton(() => APIServices());
  // locator.registerLazySingleton(() => FilePickHelperService());
  locator.registerLazySingleton(() => BottomSheetService());
  // Data
  locator.registerLazySingleton(() => OnShopBillingDataService());
  // locator.registerLazySingleton(() => DataFromApi());
  // Helper Data Service (Data inside these classes changes)
  // locator.registerLazySingleton(() => PatientDetailsAccountScreen());
  // locator.registerLazySingleton(() => PatientDetails());
  // locator.registerLazySingleton(() => DoctorAppointments());
}
