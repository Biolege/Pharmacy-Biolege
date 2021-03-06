import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/router.gr.dart';
import '../../../../app/locator.dart';
// import '../../../../services/services/api_service.dart';
// import '../../../../services/services/auth_service.dart';
// import '../../../../services/services/local_storage.dart';

class SearchPharmacyViewModel extends FutureViewModel {
  // __________________________________________________________________________
  // Locating the Dependencies
  // final DataFromApi _dataFromApiService = locator<DataFromApi>();
  final SnackbarService _snackBarService = locator<SnackbarService>();
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService _navigatorService = locator<NavigationService>();
  // final APIServices _apiServices = locator<APIServices>();

  // final AuthenticationService _authenticationService =
  //     locator<AuthenticationService>();
  // final StorageService _storageService = locator<StorageService>();
  // __________________________________________________________________________
  // Variables and Controller
  TextEditingController search = TextEditingController();
  List<Pharmacy> allPharmacy;
  List<Pharmacy> results = [];

  void searchPharmacy() {
    results.clear();
    allPharmacy
        .where((pharmacy) =>
            pharmacy.name.toLowerCase().contains(search.text.toLowerCase()))
        .forEach((pharmacy) => results.add(pharmacy));

    if (search.text.length == 0) results.clear();

    notifyListeners();
  }

  void setPharmacyForEmployee(Pharmacy clc) async {
    DialogResponse response = await _dialogService.showConfirmationDialog(
        title: "Do you want to continue ?",
        description:
            "This will add/update pharmacy to your profile and by clicking on continue, you are agreeing to our terms of use & privacy policy",
        cancelTitle: "Cancel",
        confirmationTitle: "Continue",
        dialogPlatform: DialogPlatform.Custom);

    if (response.confirmed) {
      setBusy(true);
      // await _dataFromApiService.savePharmacyForEmployeeINIT(clc.id);
      setBusy(false);
      navigateToWelcomeScreen();
    }
  }

  // ___________________________________________________________________________
  void navigateToWelcomeScreen() {
    _navigatorService.pushNamedAndRemoveUntil(Routes.root,
        predicate: (route) => false);
  }
  // ___________________________________________________________________________

  @override
  Future futureToRun() async {
    try {
      setBusy(true);
      // allPharmacy = _dataFromApiService.getAllPharmacys;
      setBusy(false);
    } catch (e) {
      _snackBarService.showSnackbar(message: e.toString());
    }
    throw UnimplementedError();
  }
}
