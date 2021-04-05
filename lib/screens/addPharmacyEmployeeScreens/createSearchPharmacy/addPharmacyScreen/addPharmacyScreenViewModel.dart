import 'dart:io';
import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/locator.dart';
import '../../../../app/router.gr.dart';
import '../../../../services/local_storage.dart';
import '../../../../services/filePicker_service.dart';

class AddPharmacyScreenViewModel extends BaseViewModel {
  // __________________________________________________________________________
  // Locating the Dependencies
  final NavigationService _navigatorService = locator<NavigationService>();
  final StorageService _storageService = locator<StorageService>();
  final FilePickHelperService _filePickHelperService =
      locator<FilePickHelperService>();
  final SnackbarService _snackBarService = locator<SnackbarService>();
  // __________________________________________________________________________
  // Controller and Variables
  final createPharmacyForm = GlobalKey<FormState>();
  TextEditingController pharmacyName = TextEditingController();
  TextEditingController pharmacyPhoneNumber = TextEditingController();
  Uint8List get getPharmacyAddressProof => _selectedPharmacyAddressProof;
  Uint8List _selectedPharmacyAddressProof;
  Uint8List _selectedPharmacyLogo;
  File pharmacyLogo;
  Uint8List get getPharmacyLogo => _selectedPharmacyLogo;
  // __________________________________________________________________________
  // Map related controllers
  bool isLocationMarked = false;
  double pharmacyLongitude, pharmacyLatitude;
  Completer<GoogleMapController> locationOnMapcontroller = Completer();
  LocationData locationData;
  GoogleMapController mapController;
  final LatLng center = const LatLng(28.7041, 77.1025);
  LatLng _lastMapPosition = LatLng(28.7041, 77.1025);
  final Set<Marker> markers = {};
  // __________________________________________________________

  Future getCurrentLocation() async {
    // Check for services and permission
    bool _serviceEnabled;

    PermissionStatus _permissionGranted;
    Location location = new Location();
    _serviceEnabled = await location.serviceEnabled();

    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) return null;
    }
    _permissionGranted = await location.hasPermission();

    if (_permissionGranted == PermissionStatus.DENIED) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.GRANTED) return null;
    }
    notifyListeners();
  }

  void pickedLocationOnMap(CameraPosition position) {
    _lastMapPosition = position.target;
    print("CamView : " + position.target.toString());
  }

  void onAddMarkerButtonPressed() {
    if (markers.length == 0) {
      savePharmacyCoordinates(_lastMapPosition);
      markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        draggable: true,
        onDragEnd: (v) => {_lastMapPosition = v, savePharmacyCoordinates(v)},
        icon: BitmapDescriptor.defaultMarker,
      ));
      isLocationMarked = true;
      // Update on map
      notifyListeners();
    } else
      _snackBarService.showSnackbar(
          message: "You have already marked a location");
  }

  void removeMarker() {
    markers.clear();
    isLocationMarked = false;
    pharmacyLatitude = null;
    pharmacyLongitude = null;
    notifyListeners();
  }

  void savePharmacyCoordinates(LatLng coo) async {
    pharmacyLatitude = coo.latitude;
    pharmacyLongitude = coo.longitude;
    print(pharmacyLatitude);
    notifyListeners();
  }

  CameraPosition initialCoordinates = CameraPosition(
    target: LatLng(28.7041, 77.1025),
    zoom: 2,
  );

  // __________________________________________________________________________
  // Validators

  String validatePharmacyName(String value) {
    return value.isEmpty
        ? "Pharmacy name cannot be empty"
        : value.length > 4
            ? null
            : "Pharmacy name should be atleast 5 characters long";
  }

  String validatePharmacyPhoneNumber(String value) {
    // /^\+(91)[6-9]\d{9}$/g
    return value.isEmpty
        ? "Phone number cannot be empty"
        : value.length == 10
            ? null
            : "Phone number should be 10 digits";
  }

  String validatePharmacyCityAddress(String value) {
    return value.isEmpty
        ? "Pharmacy address cannot be empty"
        : value.length > 9
            ? null
            : "Pharmacy address should be atleast 10 characters long";
  }

  String validateLogo(File file) {
    // Checks if the size the more than 3 Mb
    if (file.lengthSync() > 3000000) {
      _snackBarService.showSnackbar(message: "Image must be of less than 3 Mb");
      return null;
    } else
      return "Success";
  }

  // _________________________________________________________________________
  // Helper functions

  void pickPharmacyAddressProof() async {
    // Starts the picking process
    var image = await _filePickHelperService.pickImage(ImageSource.gallery);

    // Validate the incoming filesize
    if (validateLogo(File(image.path)) == null) return;
    _selectedPharmacyAddressProof = await image.readAsBytes();
    notifyListeners();
  }

  void pickPharmacyLogo() async {
    // Starts the picking process
    var image = await _filePickHelperService.pickImage(ImageSource.gallery);

    // Validate the incoming filesize
    if (validateLogo(File(image.path)) == null) return;

    _selectedPharmacyLogo = await image.readAsBytes();
    notifyListeners();
  }

  // _________________________________________________________________________
  // Saving Pharmacy details
  void savePharmacyDetails() async {
    createPharmacyForm.currentState.save();

    if (!createPharmacyForm.currentState.validate()) return;

    if (_selectedPharmacyAddressProof == null) {
      _snackBarService.showSnackbar(message: "Please upload an address proof");
      return;
    }
    if (_selectedPharmacyLogo == null) {
      _snackBarService.showSnackbar(message: "Please upload a logo");
      return;
    }
    if (pharmacyLatitude == null) {
      _snackBarService.showSnackbar(
          message: "Please select the pharmacy location");
      return;
    }

    // Sets the value in Local Storage
    // await _storageService.setPharmacyDetails(
    //     pharmacyName: pharmacyName.text,
    //     pharmacyPhone: int.parse(pharmacyPhoneNumber.text),
    //     pharmacyLogo: _selectedPharmacyLogo,
    //     pharmacyLocationType: _pharmacyLocationType);
    // Next Page
    navigateToAddPharmacyOwnerDetailsView();
  }

  void navigateToAddPharmacyOwnerDetailsView() =>
      _navigatorService.navigateTo(Routes.addPharmacyAddressScreenView);

  // _________________________________________________________________________
}
