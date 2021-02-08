import 'package:stacked/stacked.dart';
import '../../../../app/locator.dart';
import '../../../../app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

class OrderPScreenViewModel extends FutureViewModel {
  // _________________________________________________________________________
  // Locating the Dependencies

  final NavigationService _navigatorService = locator<NavigationService>();
  // _________________________________________________________________________

  void pushPaymentModeView() =>
      _navigatorService.navigateTo(Routes.paymentModeView);

  @override
  Future futureToRun() async {
    // TODO: implement futureToRun
    try {} catch (e) {
      throw UnimplementedError();
    }
  }
}
