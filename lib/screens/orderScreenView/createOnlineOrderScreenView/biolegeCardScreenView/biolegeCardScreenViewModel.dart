import 'package:stacked/stacked.dart';
import '../../../../app/locator.dart';
import '../../../../app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

class BiolegeCardScreenViewModel extends FutureViewModel {
  // _________________________________________________________________________
  // Locating the Dependencies

  final NavigationService _navigatorService = locator<NavigationService>();
  // _________________________________________________________________________

  void pushOrderPageScreenView() =>
      _navigatorService.navigateTo(Routes.orderPageScreenView);
  void pushOnShopBillScreenView() =>
      _navigatorService.navigateTo(Routes.onShopBillScreenView);

  @override
  Future futureToRun() async {
    try {} catch (e) {
      throw UnimplementedError();
    }
  }
}
