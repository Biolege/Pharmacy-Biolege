import 'package:stacked/stacked.dart';
import '../../../../app/locator.dart';
import '../../../../app/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

class ImportMedicineScreenViewModel extends FutureViewModel {
  // _________________________________________________________________________
  // Locating the Dependencies

  final NavigationService _navigatorService = locator<NavigationService>();
  // _________________________________________________________________________

  void pushMyImportsScreenView() =>
      _navigatorService.navigateTo(Routes.myImportsScreenView);

  void pushImportMedicine() =>
      _navigatorService.navigateTo(Routes.importMedicine);
  @override
  Future futureToRun() async {
    try {} catch (e) {
      throw UnimplementedError();
    }
  }
}
