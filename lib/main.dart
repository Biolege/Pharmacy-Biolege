import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'app/locator.dart';
import 'app/router.gr.dart' as router;
import 'widgets/sidebar/sideBarScreenView/sidebarScreenView.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bioledge Pharmacy',
      debugShowCheckedModeBanner: false,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: router.Router().onGenerateRoute,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primaryColor: Colors.orange),
      // home: SideBarLayoutView(),
      home: SideBarView(),
    );
  }
}
