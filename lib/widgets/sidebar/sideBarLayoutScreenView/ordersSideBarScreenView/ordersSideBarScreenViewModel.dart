import 'package:pharmacyapp/screens/orderScreenView/createBillScreenView/createBillScreenView/createBillScreenView.dart';
import 'package:pharmacyapp/screens/orderScreenView/onlineOrderScreenView/onlineOrderScreenView/onlineOrderScreenView.dart';
import 'package:pharmacyapp/screens/orderScreenView/orderProgressScreenView/orderProgressScreenView/orderProgressScreenView.dart';

import '../../../../screens/orderScreenView/reportScreen/reportScreenView/reportScreenView.dart';
import '../../../../app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OrdersSideBarScreenViewModel extends FutureViewModel {
  // _________________________________________________________________________
  // Locating the Dependencies

  final NavigationService _navigatorService = locator<NavigationService>();
  // final BottomSheetService _bottomSheetService = locator<BottomSheetService>();
  // _________________________________________________________________________

  // Helper and Widget Fucntions
  void orderReportDetails() =>
      _navigatorService.navigateWithTransition(ReportScreenView(),
          transition: NavigationTransition.RightToLeft);

  void createBillings() =>
      _navigatorService.navigateWithTransition(CreateBillScreenView(),
          transition: NavigationTransition.RightToLeft);

  void orderProgress() =>
      _navigatorService.navigateWithTransition(OrderProgressScreenView(),
          transition: NavigationTransition.RightToLeft);

  void onlineOrders() =>
      _navigatorService.navigateWithTransition(OnlineOrderScreenView(),
          transition: NavigationTransition.RightToLeft);

  @override
  Future futureToRun() async {
    try {} catch (e) {
      throw UnimplementedError();
    }
  }
}
