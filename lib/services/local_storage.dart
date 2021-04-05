import 'dart:typed_data';
import '../../app/locator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../misc/localKeys/localStorageKeys.dart';
import 'filePicker_service.dart';

class StorageService {
  // ___________________________________________________________________________
  // User Variables and their getters
  // ...........................................................................
  static String _employeeImage;
  String get getEmployeeImage => _employeeImage;
  // ------------------------------------------------------------
  int _phoneNumber;
  int get getPhoneNumber => _phoneNumber;
  // ------------------------------------------------------------
  static String _uid;
  String get getUID => _uid;
  // ...........................................................................
  static String _name;
  String get getName => _name;
  // ...........................................................................
  static String _emailAddress;
  String get getEmailAddress => _emailAddress;
  // ...........................................................................
  static String _gender;
  String get getGender => _gender;
  // ------------------------------------------------------------
  static String _dateOfBirth;
  String get getDateOfBirth => _dateOfBirth;
  // ...........................................................................
  static String _state;
  String get getState => _state;
  // ------------------------------------------------------------
  static String _cityName;
  String get getCityName => _cityName;
  // ------------------------------------------------------------
  int _pinCode;
  int get getPinCode => _pinCode;
  // ------------------------------------------------------------
  static String _address;
  String get getAddress => _address;
  // ...........................................................................
  static int _roleType;
  int get getRoleType => _roleType;
  // ...........................................................................

  // ___________________________________________________________________________
  // Pharmacy Related Variables and their getters
  // ------------------------------------------------------------
  static String _pharmacyId;
  String get getPharmacyId => _pharmacyId;
  // ...........................................................................
  static String _pharmacyName;
  String get getPharmacyName => _pharmacyName;
  // ------------------------------------------------------------
  static int _pharmacyPhoneNumber;
  int get getPharmacyPhoneNumber => _pharmacyPhoneNumber;
  // ------------------------------------------------------------
  static String _pharmacyLogo;
  String get getPharmacyLogo => _pharmacyLogo;
  // ...........................................................................
  static String _pharmacyStateName;
  String get getPharmacyStateName => _pharmacyStateName;
  // ------------------------------------------------------------
  static String _pharmacyCityName;
  String get getPharmacyCityName => _pharmacyCityName;
  // ------------------------------------------------------------
  static String _pharmacyPinCode;
  String get getPharmacyPinCode => _pharmacyPinCode;
  // ------------------------------------------------------------
  static String _pharmacyAddress;
  String get getPharmacyAddress => _pharmacyAddress;
  // ------------------------------------------------------------
  static String _pharmacyAddressProof;
  String get getPharmacyAddressProof => _pharmacyAddressProof;
  // ...........................................................................
  static String _pharmacyOwnerName;
  String get getPharmacyOwnerName => _pharmacyOwnerName;
  // ------------------------------------------------------------
  static int _pharmacyOwnerPhoneNumber;
  int get getPharmacyOwnerPhone => _pharmacyOwnerPhoneNumber;
  // ------------------------------------------------------------
  static String _pharmacyOwnerIdProof;
  String get getPharmacyOwnerIdProof => _pharmacyOwnerIdProof;
  // ------------------------------------------------------------
  static double _pharmacyLocationLongitude;
  double get getPharmacyLocationLongitude => _pharmacyLocationLongitude;
  // ------------------------------------------------------------
  static double _pharmacyLocationLatitude;
  double get getPharmacyLocationLatitude => _pharmacyLocationLatitude;

  // ...........................................................................
  // ___________________________________________________________________________
  // Assign the variables if present

  Future initLocalStorages() async {
    try {
      SharedPreferences _localStorage = await SharedPreferences.getInstance();
      // .......................................................................
      _uid = _localStorage.getString(uidLocalStorageKey);
      // ------------------------------------------------------------------
      _phoneNumber = _localStorage.getInt(phoneNumberLocalStorageKey);
      // .......................................................................
      _name = _localStorage.getString(nameLocalStorageKey);
      // .......................................................................
      _emailAddress = _localStorage.getString(emailAddressLocalStorageKey);
      // .......................................................................
      _gender = _localStorage.getString(genderLocalStorageKey);
      // ------------------------------------------------------------------
      _dateOfBirth = _localStorage.getString(dateOfBirthLocalStorageKey);
      // .......................................................................
      _state = _localStorage.getString(stateLocalStorageKey);
      // ------------------------------------------------------------------
      _cityName = _localStorage.getString(cityNameLocalStorageKey);
      // ------------------------------------------------------------------
      _pinCode = _localStorage.getInt(pinCodeLocalStorageKey);
      // ------------------------------------------------------------------
      _address = _localStorage.getString(addressLocalStorageKey);
      // .......................................................................
      _roleType = _localStorage.getInt(roleTypeLocalStorageKey);
      // .......................................................................
      _employeeImage = _localStorage.getString(employeeImageLocalStorageKey);
      // .......................................................................
      _pharmacyId = _localStorage.getString(pharmacyIdLocalStorageKey);
      // .......................................................................
      _pharmacyName = _localStorage.getString(pharmacyNameLocalStorageKey);
      // ------------------------------------------------------------------
      _pharmacyPhoneNumber =
          _localStorage.getInt(pharmacyPhoneNumberLocalStorageKey);
      // ------------------------------------------------------------------
      _pharmacyLogo = _localStorage.getString(pharmacyLogoLocalStorageKey);
      // .......................................................................
      _pharmacyStateName =
          _localStorage.getString(pharmacyStateNameLocalStorageKey);
      // ------------------------------------------------------------------
      _pharmacyCityName =
          _localStorage.getString(pharmacyCityNameLocalStorageKey);
      // ------------------------------------------------------------------
      _pharmacyAddress =
          _localStorage.getString(pharmacyAddressLocalStorageKey);
      // ------------------------------------------------------------------
      _pharmacyPinCode =
          _localStorage.getString(pharmacyPinCodeLocalStorageKey);
      // ------------------------------------------------------------------
      // ------------------------------------------------------------------
      _pharmacyAddressProof =
          _localStorage.getString(pharmacyAddressProofLocalStorageKey);
      // .......................................................................
      _pharmacyOwnerName =
          _localStorage.getString(pharmacyOwnerNameLocalStorageKey);
      // ------------------------------------------------------------------
      _pharmacyOwnerPhoneNumber =
          _localStorage.getInt(pharmacyOwnerPhoneLocalStorageKey);
      // ------------------------------------------------------------------
      _pharmacyOwnerIdProof =
          _localStorage.getString(pharmacyOwnerIdProofLocalStorageKey);
      // ------------------------------------------------------------------
      _pharmacyLocationLongitude =
          _localStorage.getDouble(pharmacyLocationLongitudeLocalStorageKey);
      // ------------------------------------------------------------------
      _pharmacyLocationLatitude =
          _localStorage.getDouble(pharmacyLocationLatitudeLocalStorageKey);
      //........................................................................
    } catch (e) {
      // To check the line number for the respective error remove the try catch
      print("Inititialising Local Storage Failed :  " + e);
    }
  }

  // ___________________________________________________________________________
  // Setters into local
  Future setPhoneNumber(int phone) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _phoneNumber = phone;
    await _localStorage.setInt(phoneNumberLocalStorageKey, _phoneNumber);
  }

  Future setUID(String uid) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _uid = uid;
    await _localStorage.setString(uidLocalStorageKey, _uid);
  }

  // ...........................................................................
  Future setName(String name) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _name = name;
    await _localStorage.setString(nameLocalStorageKey, _name);
  }

  // -------------------------------------------------------------------------
  Future setEmailAddress(String emailAddress) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _emailAddress = emailAddress;
    await _localStorage.setString(emailAddressLocalStorageKey, _emailAddress);
  }

// ...........................................................................
  Future setGenderAndDateOfBirth({String gender, String dob}) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _gender = gender;
    _dateOfBirth = dob;
    await _localStorage.setString(genderLocalStorageKey, _gender);
    await _localStorage.setString(dateOfBirthLocalStorageKey, _dateOfBirth);
  }

// ...........................................................................
  Future setAddressDetails(
      {String state, String city, int pinCode, String address}) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _address = address;
    _state = state;
    _pinCode = pinCode;
    _cityName = city;
    await _localStorage.setString(addressLocalStorageKey, _address);
    await _localStorage.setString(stateLocalStorageKey, _state);
    await _localStorage.setInt(pinCodeLocalStorageKey, _pinCode);
    await _localStorage.setString(cityNameLocalStorageKey, _cityName);
  }

// ...........................................................................
  Future setRoleType(int role) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _roleType = role;
    _localStorage.setInt(roleTypeLocalStorageKey, _roleType);
  }
  // ...........................................................................

  Future setEmployeeImage(String imageUrl) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _employeeImage = imageUrl;
    await _localStorage.setString(employeeImageLocalStorageKey, _employeeImage);
  }

// ...........................................................................
  Future setPharmacyDetails({
    String pharmacyName,
    Uint8List pharmacyAddressProof,
    Uint8List pharmacyLogo,
    double pharmacyLocationLongitude,
    double pharmacyLocationLatitude,
  }) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    final FilePickHelperService _filePickHelperService =
        locator<FilePickHelperService>();

    _pharmacyLogo = _filePickHelperService.base64String(pharmacyLogo);
    _pharmacyAddressProof =
        _filePickHelperService.base64String(pharmacyAddressProof);
    _pharmacyLogo = _filePickHelperService.base64String(pharmacyLogo);
    _pharmacyLocationLatitude = pharmacyLocationLatitude;
    _pharmacyLocationLongitude = pharmacyLocationLongitude;

    await _localStorage.setString(pharmacyNameLocalStorageKey, _pharmacyName);
    await _localStorage.setString(
        pharmacyAddressProofLocalStorageKey, _pharmacyAddressProof);

    await _localStorage.setString(pharmacyLogoLocalStorageKey, _pharmacyLogo);
    await _localStorage.setDouble(
        pharmacyLocationLongitudeLocalStorageKey, _pharmacyLocationLongitude);
    await _localStorage.setDouble(
        pharmacyLocationLatitudeLocalStorageKey, _pharmacyLocationLatitude);
  }

// ...........................................................................
  Future setPharmacyAddress({
    String pharmacyStateName,
    String pharmacyCityName,
    String pharmacyAddress,
    String pharmacyPinCode,
  }) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();

    _pharmacyStateName = pharmacyStateName;
    _pharmacyCityName = pharmacyCityName;
    _pharmacyAddress = pharmacyAddress;
    _pharmacyPinCode = pharmacyPinCode;

    await _localStorage.setString(
        pharmacyStateNameLocalStorageKey, _pharmacyStateName);
    await _localStorage.setString(
        pharmacyCityNameLocalStorageKey, _pharmacyCityName);
    await _localStorage.setString(
        pharmacyAddressLocalStorageKey, _pharmacyAddress);
    await _localStorage.setString(
        pharmacyPinCodeLocalStorageKey, _pharmacyPinCode);
  }

// ...........................................................................
  Future setPharmacyDescription({
    int pharmacyPhoneNumber,
    String pharmacyOwnerName,
    int pharmacyOwnerPhoneNumber,
    Uint8List pharmacyOwnerIdProof,
  }) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    final FilePickHelperService _filePickHelperService =
        locator<FilePickHelperService>();

    _pharmacyPhoneNumber = pharmacyPhoneNumber;
    _pharmacyOwnerName = pharmacyOwnerName;
    _pharmacyOwnerPhoneNumber = pharmacyOwnerPhoneNumber;
    _pharmacyOwnerIdProof =
        _filePickHelperService.base64String(pharmacyOwnerIdProof);

    await _localStorage.setInt(
        pharmacyPhoneNumberLocalStorageKey, _pharmacyPhoneNumber);
    await _localStorage.setString(
        pharmacyOwnerNameLocalStorageKey, _pharmacyOwnerName);
    await _localStorage.setInt(
        pharmacyOwnerPhoneLocalStorageKey, _pharmacyOwnerPhoneNumber);
    await _localStorage.setString(
        pharmacyOwnerIdProofLocalStorageKey, _pharmacyOwnerIdProof);
  }

  // ...........................................................................

  Future setPharmacyId(String pharmacyId) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    _pharmacyId = pharmacyId;
    _localStorage.setString(pharmacyIdLocalStorageKey, _pharmacyId);
  }

// _____________________________________________________________________________
// Individual Getters from Local
//..............................................................................
  Future<int> getPhoneNumberFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getInt(phoneNumberLocalStorageKey);
  }

// ---------------------------------------------------------------
  Future<String> getUIDFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(uidLocalStorageKey);
  }

// .............................................................................
  Future<String> getEmployeeImageFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(employeeImageLocalStorageKey);
  }

// .............................................................................
  Future<String> getNameFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(nameLocalStorageKey);
  }

// .............................................................................
  Future<String> getEmailAddressFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(emailAddressLocalStorageKey);
  }

// .............................................................................
  Future<String> getGenderFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(genderLocalStorageKey);
  }

// ---------------------------------------------------------------
  Future<String> getDateOfBirthFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(dateOfBirthLocalStorageKey);
  }

// .............................................................................

  Future<String> getStateFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(stateLocalStorageKey);
  }

// ---------------------------------------------------------------
  Future<String> getCityNameFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(cityNameLocalStorageKey);
  }

// ---------------------------------------------------------------
  Future<int> getPinCodeFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getInt(pinCodeLocalStorageKey);
  }

// ---------------------------------------------------------------
  Future<String> getAddressFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(addressLocalStorageKey);
  }

// .............................................................................
  Future<int> getRoleTypeFromLocal(int role) async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getInt(roleTypeLocalStorageKey);
  }
  // .............................................................................

  Future<String> getPharmacyIdFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(pharmacyIdLocalStorageKey);
  }

// .............................................................................

  Future<String> getPharmacyNameFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(cityNameLocalStorageKey);
  }

// ---------------------------------------------------------------
  Future<String> getPharmacyPhoneNumberFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(pharmacyPhoneNumberLocalStorageKey);
  }

// ---------------------------------------------------------------
  Future<Uint8List> getPharmacyLogoFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    final FilePickHelperService _filePickHelperService =
        locator<FilePickHelperService>();

    return _filePickHelperService.dataFromBase64String(
        _localStorage.getString(pharmacyLogoLocalStorageKey));
  }

// ---------------------------------------------------------------
  Future<String> getPharmacyAddressFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(pharmacyAddressLocalStorageKey);
  }

// .............................................................................
  Future<String> getPharmacyStateNameFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(pharmacyStateNameLocalStorageKey);
  }

// ---------------------------------------------------------------
  Future<String> getPharmacyCityNameFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(pharmacyCityNameLocalStorageKey);
  }

// ---------------------------------------------------------------
  Future<String> getPharmacyPinCodeFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(pharmacyAddressLocalStorageKey);
  }

// ---------------------------------------------------------------
  Future<Uint8List> getPharmacyAddressProofFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    final FilePickHelperService _filePickHelperService =
        locator<FilePickHelperService>();
    return _filePickHelperService.dataFromBase64String(
        _localStorage.getString(pharmacyAddressProofLocalStorageKey));
  }

// .............................................................................
  Future<String> getPharmacyOwnerNameFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getString(pharmacyOwnerNameLocalStorageKey);
  }
// ---------------------------------------------------------------

  Future<int> getPharmacyOwnerPhoneNumberFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getInt(pharmacyOwnerPhoneLocalStorageKey);
  }

// ---------------------------------------------------------------
  Future<Uint8List> getPharmacyOwnerIdProofFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    final FilePickHelperService _filePickHelperService =
        locator<FilePickHelperService>();
    return _filePickHelperService.dataFromBase64String(
        _localStorage.getString(pharmacyOwnerIdProofLocalStorageKey));
  }
// ---------------------------------------------------------------

  Future<double> getPharmacyLocationLongitudeFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getDouble(pharmacyLocationLongitudeLocalStorageKey);
  }

// ---------------------------------------------------------------
  Future<double> getPharmacyLocationLatitudeFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return _localStorage.getDouble(pharmacyLocationLatitudeLocalStorageKey);
  }

// _____________________________________________________________________________
// Getter for all user details from local
  Future<Map<String, String>> getAllUserDetailsFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    return {
      // .......................................................................
      uidLocalStorageKey:
          _localStorage.getString(uidLocalStorageKey).toString(),
      // -------------------------------------------------------------
      phoneNumberLocalStorageKey:
          _localStorage.getInt(phoneNumberLocalStorageKey).toString(),
      // .......................................................................
      nameLocalStorageKey: _localStorage.getString(nameLocalStorageKey),
      // .......................................................................
      emailAddressLocalStorageKey:
          _localStorage.getString(emailAddressLocalStorageKey),
      // .......................................................................
      genderLocalStorageKey: _localStorage.getString(genderLocalStorageKey),
      // -------------------------------------------------------------
      dateOfBirthLocalStorageKey:
          _localStorage.getString(dateOfBirthLocalStorageKey),
      // .......................................................................
      stateLocalStorageKey: _localStorage.getString(stateLocalStorageKey),
      // -------------------------------------------------------------
      cityNameLocalStorageKey: _localStorage.getString(cityNameLocalStorageKey),
      // -------------------------------------------------------------
      pinCodeLocalStorageKey:
          _localStorage.getInt(pinCodeLocalStorageKey).toString(),
      // -------------------------------------------------------------
      addressLocalStorageKey: _localStorage.getString(addressLocalStorageKey),
      // .......................................................................
      roleTypeLocalStorageKey:
          _localStorage.getInt(roleTypeLocalStorageKey).toString(),
      // .......................................................................
      employeeImageLocalStorageKey:
          _localStorage.getString(employeeImageLocalStorageKey),
    };
  }

// _____________________________________________________________________________
// Getter for all pharmacy details from local
  Future<Map<String, dynamic>> getAllPharmacyDetailsFromLocal() async {
    SharedPreferences _localStorage = await SharedPreferences.getInstance();
    final FilePickHelperService _filePickHelperService =
        locator<FilePickHelperService>();
    return {
      // .......................................................................
      pharmacyIdLocalStorageKey:
          _localStorage.getString(pharmacyIdLocalStorageKey),
      // .......................................................................
      pharmacyNameLocalStorageKey:
          _localStorage.getString(pharmacyNameLocalStorageKey),
      // ------------------------------------------------------------------
      pharmacyPhoneNumberLocalStorageKey:
          _localStorage.getInt(pharmacyPhoneNumberLocalStorageKey),
      // ------------------------------------------------------------------
      pharmacyLogoLocalStorageKey: _filePickHelperService.dataFromBase64String(
          _localStorage.getString(pharmacyLogoLocalStorageKey)),
      // .......................................................................
      pharmacyStateNameLocalStorageKey:
          _localStorage.getString(pharmacyStateNameLocalStorageKey),
      // ------------------------------------------------------------------
      pharmacyCityNameLocalStorageKey:
          _localStorage.getString(pharmacyCityNameLocalStorageKey),
      // ------------------------------------------------------------------
      pharmacyPinCodeLocalStorageKey:
          _localStorage.getString(pharmacyPinCodeLocalStorageKey),
      // ------------------------------------------------------------------
      pharmacyAddressLocalStorageKey:
          _localStorage.getString(pharmacyAddressLocalStorageKey),
      // ------------------------------------------------------------------
      pharmacyAddressProofLocalStorageKey:
          _filePickHelperService.dataFromBase64String(
              _localStorage.getString(pharmacyAddressProofLocalStorageKey)),
      // .......................................................................
      pharmacyOwnerNameLocalStorageKey:
          _localStorage.getString(pharmacyOwnerNameLocalStorageKey),
      // ------------------------------------------------------------------
      pharmacyOwnerPhoneLocalStorageKey:
          _localStorage.getString(pharmacyOwnerPhoneLocalStorageKey),
      // ------------------------------------------------------------------
      pharmacyOwnerIdProofLocalStorageKey:
          _filePickHelperService.dataFromBase64String(
              _localStorage.getString(pharmacyOwnerIdProofLocalStorageKey)),
      // ------------------------------------------------------------------
      pharmacyLocationLongitudeLocalStorageKey: _localStorage
          .getDouble(pharmacyLocationLongitudeLocalStorageKey)
          .toString(),
      // ------------------------------------------------------------------
      pharmacyLocationLatitudeLocalStorageKey: _localStorage
          .getDouble(pharmacyLocationLatitudeLocalStorageKey)
          .toString(),
    };
  }
  // ___________________________________________________________________________

  void setAllToNull() {
    // .........................................................................
    _uid = null;
    // ------------------------------------------------------------------
    _phoneNumber = null;
    // .........................................................................
    _name = null;
    // .........................................................................
    _emailAddress = null;
    // .........................................................................
    _gender = null;
    // ------------------------------------------------------------------
    _dateOfBirth = null;
    // .........................................................................
    _state = null;
    // ------------------------------------------------------------------
    _cityName = null;
    // ------------------------------------------------------------------
    _pinCode = null;
    // ------------------------------------------------------------------
    _address = null;
    // .........................................................................
    _roleType = null;
    // .........................................................................
    _employeeImage = null;
    // .........................................................................
    _pharmacyName = null;
    // ------------------------------------------------------------------
    _pharmacyPhoneNumber = null;
    // ------------------------------------------------------------------
    _pharmacyLogo = null;
    // ------------------------------------------------------------------
    _pharmacyAddress = null;
    // ------------------------------------------------------------------
    _pharmacyAddressProof = null;
    // .........................................................................
    _pharmacyStateName = null;
    // ------------------------------------------------------------------
    _pharmacyCityName = null;
    // ------------------------------------------------------------------
    _pharmacyPinCode = null;
    // .........................................................................
    _pharmacyOwnerName = null;
    // ------------------------------------------------------------------
    _pharmacyOwnerPhoneNumber = null;
    // ------------------------------------------------------------------
    _pharmacyOwnerIdProof = null;
    // ------------------------------------------------------------------
    _pharmacyLocationLongitude = null;
    // ------------------------------------------------------------------
    _pharmacyLocationLatitude = null;

    //.........................................................................
  }
  // ___________________________________________________________________________
}
