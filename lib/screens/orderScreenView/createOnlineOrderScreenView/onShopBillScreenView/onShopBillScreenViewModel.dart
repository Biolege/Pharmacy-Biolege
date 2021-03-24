import 'package:stacked/stacked.dart';
import '../../../../app/locator.dart';
import '../../../../app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

class OnShopBillScreenViewModel extends FutureViewModel {
  // _________________________________________________________________________
  // Locating the Dependencies

  final NavigationService _navigatorService = locator<NavigationService>();
  // _________________________________________________________________________

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
