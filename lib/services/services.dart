import 'package:injectable/injectable.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'onShopBillingDataService.dart';

abstract class ThirdPartyServicesModule {
  @lazySingleton
  // __________________________________________________________________________
  // ---------------------------------------------------
  // Data Services
  // ---------------------------------------------------
  OnShopBillingDataService get onShopBillingDataService;
  // ---------------------------------------------------
  // Navigation Services
  NavigationService get navigationService;
  // ---------------------------------------------------
  // Theme Services
  // ---------------------------------------------------
  ThemeService get themeService;
  // ---------------------------------------------------
  // Authentication Services
  // ---------------------------------------------------
  // AuthenticationService get authenticationService;
  // ---------------------------------------------------
  // Utility Services
  // ---------------------------------------------------
  DialogService get dialogService;
  SnackbarService get snackbarService;
  BottomSheetService get bottomSheetService;
  // FilePickHelperService get filePickHelperService;
  // APIServices get aPIServices;
  // ---------------------------------------------------
  // __________________________________________________________________________
}
