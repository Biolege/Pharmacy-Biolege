import 'package:flutter/material.dart';
import 'package:pharmacyapp/app/router.gr.dart';
import '../../../widgets/sidebar/sideBarScreenView/sidebarScreenView.dart';
import 'package:stacked/stacked.dart';
import '../../../app/locator.dart';
// import '../../../app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

class SideBarLayoutScreenViewModel extends FutureViewModel {
  // _________________________________________________________________________
  // Locating the Dependencies

  final NavigationService _navigatorService = locator<NavigationService>();
  // _________________________________________________________________________
  // Helper/Widget Functions
  void showMenu(BuildContext context) => _navigatorService
      .navigateWithTransition(SideBarView(), transition: "rightToLeft");

  // Navigation
  void pushOrdersScreenView() =>
      _navigatorService.navigateTo(Routes.ordersScreenView);

  @override
  Future futureToRun() async {
    // TODO: implement futureToRun

    try {} catch (e) {
      throw UnimplementedError();
    }
  }
}
