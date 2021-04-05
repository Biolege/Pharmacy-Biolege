import 'dart:io';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/locator.dart';
import '../../../../app/router.gr.dart';
// import '../../../../services/local_storage.dart';
import '../../../../services/filePicker_service.dart';

class AddPharmacyOwnerDetailsScreenViewModel extends BaseViewModel {
  // __________________________________________________________________________
  // Locating the Dependencies
  final NavigationService _navigatorService = locator<NavigationService>();
  // final StorageService _storageService = locator<StorageService>();
  final SnackbarService _snackBarService = locator<SnackbarService>();
  final FilePickHelperService _filePickHelperService =
      locator<FilePickHelperService>();

  // __________________________________________________________________________
  // Controller and Variables

  Uint8List _selectedPharmacyOwnerIdProof;
  Uint8List get getPharmacyOwnerIdProof => _selectedPharmacyOwnerIdProof;
  final pharmacyOwnerDetailsFormKey = GlobalKey<FormState>();
  TextEditingController pharmacyOwnerName = TextEditingController();
  TextEditingController pharmacyPhoneNumber = TextEditingController();
  TextEditingController pharmacyOwnerPhoneNumber = TextEditingController();
  // ________v__________________________________________________________________
  // Helper function
  void pickPharmacyOwnerIdProof() async {
    // Starts the picking process
    var image = await _filePickHelperService.pickImage(ImageSource.gallery);

    // Validate the incoming filesize
    if (validatePharmacyOwnerIdProof(File(image.path)) == null) return;

    _selectedPharmacyOwnerIdProof = await image.readAsBytes();

    notifyListeners();
  }

  // _________________________________________________________________________
  // Validators

  String validatePharmacyOwnerIdProof(File file) {
    // Checks if the size the more than 3 Mb
    if (file.lengthSync() > 3000000) {
      _snackBarService.showSnackbar(message: "Image must be of less than 3 Mb");
      return null;
    } else
      return "Success";
  }

  String validatePharmacyOwnerName(String value) {
    return value.isEmpty
        ? "Owner name cannot be empty"
        : value.length > 3
            ? null
            : "Owner name should be atleast 4 characters long";
  }

  String validatePharmacyOwnerPhoneNumber(String phone) {
    return phone.isEmpty
        ? "Phone number cannot be empty"
        : phone.length == 10
            ? null
            : "Phone number should be 10 digits";
  }

  // _________________________________________________________________________
  // Saving to local storages
  void savePharmacyOwnerDetails() async {
    pharmacyOwnerDetailsFormKey.currentState.save();

    if (!pharmacyOwnerDetailsFormKey.currentState.validate()) return;

    if (_selectedPharmacyOwnerIdProof == null) {
      _snackBarService.showSnackbar(message: "Please upload a ID Proof");
      return;
    }

    // Sets the value in Local Storage
    // await _storageService.setPharmacyOwnerDetails(
    //     pharmacyOwnerName: pharmacyOwnerName.text,
    //     pharmacyOwnerPhoneNumber: int.parse(pharmacyPhoneNumber.text),
    //     pharmacyLocationLatitude: pharmacyLatitude,
    //     pharmacyLocationLongitude: pharmacyLongitude,
    //     pharmacyOwnerIdProof: _selectedPharmacyOwnerIdProof,
    //     pharmacyOwnerIdProofType: _idProofType);
    // Next Page
    navigateToWelcomeScreen();
  }

  // _________________________________________________________________________
  void navigateToWelcomeScreen() {
    _navigatorService.pushNamedAndRemoveUntil(Routes.root,
        predicate: (route) => false);
  }
}
