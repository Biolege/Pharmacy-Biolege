import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../services/local_storage.dart';
import '../../../app/locator.dart';
import '../../../app/router.gr.dart';

class CreateOrSearchPharmacyViewModel extends BaseViewModel {
  // ___________________________________________________________________________
  final NavigationService _navigatorService = locator<NavigationService>();
  final StorageService _storageService = locator<StorageService>();
  // final AuthenticationService _authenticationService =
  //     locator<AuthenticationService>();
  // final APIServices _apiServices = locator<APIServices>();
  // ___________________________________________________________________________
  // Controller and Variables
  int _roleType;
  int get getRoleType => _roleType;
  // ___________________________________________________________________________
  // Helper Functions

  void navigateToSeachClinicView() async {
    // _authenticationService.signOut();
    _navigatorService.navigateTo(Routes.searchPharmacyScreenView);
  }

  void setRoleType() {
    _roleType = _storageService.getRoleType;
    notifyListeners();
  }
  // ___________________________________________________________________________

  void navigateToAddClinicView() {
    _navigatorService.navigateTo(Routes.addPharmacyScreenView);
  }
}
