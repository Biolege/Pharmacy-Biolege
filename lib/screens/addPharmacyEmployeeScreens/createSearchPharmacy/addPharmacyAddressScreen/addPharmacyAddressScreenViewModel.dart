import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/locator.dart';
import '../../../../app/router.gr.dart';
// import '../../../../services/local_storage.dart';
// import '../../../../services/filePicker_service.dart';

class AddPharmacyAddressViewModel extends BaseViewModel {
  // __________________________________________________________________________
  // Locating the Dependencies
  final NavigationService _navigatorService = locator<NavigationService>();
  // final StorageService _storageService = locator<StorageService>();
  // final FilePickHelperService _filePickHelperService =
  //     locator<FilePickHelperService>();
  // final SnackbarService _snackBarService = locator<SnackbarService>();
  // __________________________________________________________________________
  // Controllers and Variables
  final pharmacyDesciptionFormKey = GlobalKey<FormState>();
  TextEditingController pharmacyStateName = TextEditingController();
  TextEditingController pharmacyCityName = TextEditingController();
  TextEditingController pharmacyAddress = TextEditingController();
  TextEditingController pharmacyPincode = TextEditingController();
  // __________________________________________________________________________
  // Validators

  String validatePharmacyStateName(String value) {
    return value.isEmpty
        ? "Pharmacy state name cannot be empty"
        : value.length > 1
            ? null
            : "Pharmacy state name should be atleast 2 characters long";
  }

  String validatePharmacyCityName(String value) {
    return value.isEmpty
        ? "Pharmacy city name cannot be empty"
        : value.length > 3
            ? null
            : "Pharmacy city name should be atleast 4 characters long";
  }

  String validatePharmacyCityAddress(String value) {
    return value.isEmpty
        ? "Pharmacy address cannot be empty"
        : value.length > 9
            ? null
            : "Pharmacy address should be atleast 10 characters long";
  }

  String validatePharmacyPincode(String value) {
    int pinC = value.isEmpty ? 0 : int.parse(value);
    return pinC == 0
        ? "Pincode cannot be empty"
        : value.length == 6
            ? null
            : "Pincode should be of 6 digit";
  }

  // _________________________________________________________________________
  // Helper functions

  // _________________________________________________________________________
  // Saving Pharmacy description
  void savePharmacyDescription() async {
    pharmacyDesciptionFormKey.currentState.save();
    if (!pharmacyDesciptionFormKey.currentState.validate()) return;

    // Sets the value in Local Storage
    // await _storageService.setPharmacyDescription(
    //     pharmacyStateName: pharmacyStateName.text,
    //     pharmacyCityName: pharmacyCityName.text,
    //     pharmacyAddress: pharmacyAddress.text,
    //     pharmacyPinCode: pharmacyPincode.text,
    //     pharmacyAddressProof: _selectedPharmacyAddressProof);
    // Next Page
    navigateToPharmacyOwnerDetails();
  }

  void navigateToPharmacyOwnerDetails() {
    _navigatorService.navigateTo(
      Routes.addPharmacyOwnerDetailsScreenView,
    );
  }
}
