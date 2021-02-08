import 'package:stacked/stacked.dart';
import '../../../../app/locator.dart';
import '../../../../app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

class OnlineOrderScreenViewModel extends FutureViewModel {
  // _________________________________________________________________________
  // Locating the Dependencies

  final NavigationService _navigatorService = locator<NavigationService>();
  // _________________________________________________________________________

  void pushOnlineOrderDetailsScreenView() =>
      _navigatorService.navigateTo(Routes.onlineOrderDetailsScreenView);

  @override
  Future futureToRun() async {
    // TODO: implement futureToRun
    try {} catch (e) {
      throw UnimplementedError();
    }
  }
}
