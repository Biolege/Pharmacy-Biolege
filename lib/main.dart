import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pharmacyapp/screens/rootView.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_themes/stacked_themes.dart';
import 'app/locator.dart';
import 'app/router.gr.dart' as router;
import 'services/local_storage.dart';
import 'widgets/dialog.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await ThemeManager.initialise();
  await StorageService().initLocalStorages();

  setupLocator();
  setupDialogUi();
  runApp(MyApp());
}

String mainLogo = "asset/images/logo.png";
String subLogo = "asset/images/sublogo.png";

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biolege Pharmacy',
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: router.Router().onGenerateRoute,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primaryColor: Colors.orange),
      // home: SideBarLayoutView(),
      home: Root(),
    );
  }
}
