import 'package:stacked/stacked.dart';
import '../../../../app/locator.dart';
import '../../../../app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

class OnlineOrderDetailsScreenViewModel extends FutureViewModel {
  // _________________________________________________________________________
  // Locating the Dependencies

  final NavigationService _navigatorService = locator<NavigationService>();
  // _________________________________________________________________________

  void pushCheckItemsScreenView() =>
      _navigatorService.navigateTo(Routes.checkItemsScreenView);

  @override
  Future futureToRun() async {
    try {} catch (e) {
      throw UnimplementedError();
    }
  }
}
