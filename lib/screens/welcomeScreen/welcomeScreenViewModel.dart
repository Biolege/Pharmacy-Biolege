import 'package:pharmacyapp/screens/sidebar/sideBarScreenView/sidebarScreenView.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../app/locator.dart';
// import '../../app/router.gr.dart';

class WelcomeScreenViewModel extends FutureViewModel<Map<String, String>> {
  // __________________________________________________________________________
  // Locating the Dependencies
  final NavigationService _navigatorService = locator<NavigationService>();
  final SnackbarService _snackBarService = locator<SnackbarService>();
  // final StorageService _storageService = locator<StorageService>();
  // final Clinic _clinicDataService = locator<Clinic>();
  // final APIServices _apiServices = locator<APIServices>();
  // final DataFromApi _dataFromApiService = locator<DataFromApi>();
  // final AuthenticationService _authenticationService =
  //     locator<AuthenticationService>();

  // __________________________________________________________________________
  // Streams/Futures
  @override
  Future<Map<String, String>> futureToRun() async {
    try {
      return {
        // "clinicEmployeeName": _dataFromApiService.getClinicEmployee.name,
        // "clinicName": _dataFromApiService.getClinic.name,
        // "designation": (_dataFromApiService.getClinicEmployee.role == 0)
        //     ? "Owner"
        //     : (_dataFromApiService.getClinicEmployee.role == 1)
        //         ? "Staff Member"
        //         : "Receiptionist"
      };
    } catch (e) {
      _snackBarService.showSnackbar(message: e.toString());
    }
    throw UnimplementedError("Error occured on the welcome screen");
  }
  // __________________________________________________________________________

  void navigateToHomePageView() {
    _navigatorService.navigateToView(SideBarView());
  }
  // __________________________________________________________________________
}
