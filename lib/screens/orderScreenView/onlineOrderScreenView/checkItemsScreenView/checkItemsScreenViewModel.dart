import 'package:stacked/stacked.dart';
import '../../../../app/locator.dart';
import '../../../../app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

class CheckItemsScreenViewModel extends FutureViewModel {
  // _________________________________________________________________________
  // Locating the Dependencies

  final NavigationService _navigatorService = locator<NavigationService>();
  // _________________________________________________________________________

  void pushConfirmationDetailsScreenView() =>
      _navigatorService.navigateTo(Routes.confirmationDetailsScreenView);

  @override
  Future futureToRun() async {
    try {} catch (e) {
      throw UnimplementedError();
    }
  }
}
