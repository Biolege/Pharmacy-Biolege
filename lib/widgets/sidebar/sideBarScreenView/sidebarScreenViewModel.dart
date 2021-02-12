import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../sideBarLayoutScreenView/ordersSideBarScreenView/ordersSideBarScreenView.dart';
import '../../../app/locator.dart';
import '../../../app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

class SidebarScreenViewModel extends FutureViewModel {
  // _________________________________________________________________________
  // Locating the Dependencies

  final NavigationService _navigatorService = locator<NavigationService>();
  // _________________________________________________________________________

  void pushHomePageScreenView() =>
      _navigatorService.navigateTo(Routes.homePageScreenView);

  void pushOrdersScreenView() =>
      _navigatorService.navigateWithTransition(OrdersSideBarScreenView(),
          transition: NavigationTransition.RightToLeft);

  void pushStockLayoutScreenView() =>
      _navigatorService.navigateTo(Routes.stockLayoutScreenView);

  void pushBuyScreenView() =>
      _navigatorService.navigateTo(Routes.buyScreenView);

  void pushNotificationScreenView() =>
      _navigatorService.navigateTo(Routes.notificationScreenView);

  void pushAnalyticsScreenView() =>
      _navigatorService.navigateTo(Routes.analyticsScreenView);

  void pushEmployeesScreenView() =>
      _navigatorService.navigateTo(Routes.employeesScreenView);

  void pushAccountsScreenView() =>
      _navigatorService.navigateTo(Routes.accountsScreenView);

  void pushMyProfileScreenView() =>
      _navigatorService.navigateTo(Routes.myProfileScreenView);

  @override
  Future futureToRun() async {
    // TODO: implement futureToRun
    try {} catch (e) {
      throw UnimplementedError();
    }
  }
}
