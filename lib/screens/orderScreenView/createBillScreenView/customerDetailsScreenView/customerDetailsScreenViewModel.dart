import 'package:stacked/stacked.dart';
import '../../../../app/locator.dart';
import '../../../../app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

class CustomerDetailsScreenViewModel extends FutureViewModel {
  // _________________________________________________________________________
  // Locating the Dependencies

  final NavigationService _navigatorService = locator<NavigationService>();
  // _________________________________________________________________________

  void pushOrderPageScreenView() =>
      _navigatorService.navigateTo(Routes.orderPageScreenView);

  @override
  Future futureToRun() async {
    // TODO: implement futureToRun
    try {} catch (e) {
      throw UnimplementedError();
    }
  }
}
