import 'package:pharmacyapp/app/locator.dart';
import 'package:pharmacyapp/app/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ShopScreenViewModel extends FutureViewModel {
  // __________________________________________________________________________
  // Locating the Dependencies
  final NavigationService _navigatorService = locator<NavigationService>();

  // __________________________________________________________________________
  void pushProductDescriptionScreenView() =>
      _navigatorService.navigateTo(Routes.productDescriptionScreenView);

  @override
  Future futureToRun() async {
    // TODO: implement futureToRun
    try {} catch (e) {
      throw UnimplementedError();
    }
  }
}
