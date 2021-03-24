import 'package:flutter/material.dart';
import 'package:pharmacyapp/services/onShopBillingDataService.dart';
import 'package:stacked/stacked.dart';
import '../../../../app/locator.dart';
import '../../../../app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

class OnShopBillScreenViewModel extends FutureViewModel {
  // _________________________________________________________________________
  // Locating the Dependencies
  final NavigationService _navigatorService = locator<NavigationService>();
  final OnShopBillingDataService _onShopBillingDataService =
      locator<OnShopBillingDataService>();
  // _________________________________________________________________________
  TextEditingController phoneNumber = TextEditingController();
  bool isValidPhoneNumber = false;

  String validatePhoneNumber(String pn) {
    if (pn.length == 0) return "Phone number cannot be empty";
    if (pn.length != 10) return "Phone number should be 10 digits";
    return null;
  }

  void enableContinue(String value) {
    if (value.length == 10)
      isValidPhoneNumber = true;
    else
      isValidPhoneNumber = false;
    notifyListeners();
  }

  void saveCustomerNumberAndNavigate() {
    _onShopBillingDataService.setgetCustomerPhoneNumber(phoneNumber.text);
    pushCustomerDetailsScreenView();
  }

  void pushBiolegeCardScreenView() =>
      _navigatorService.navigateTo(Routes.biolegeCardScreenView);

  void pushCustomerDetailsScreenView() =>
      _navigatorService.navigateTo(Routes.customerDetailsScreenView);

  @override
  Future futureToRun() async {
    try {} catch (e) {
      throw UnimplementedError();
    }
  }
}
