import 'package:flutter/material.dart';
import 'widgets/sidebar/sideBarLayoutScreenView.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bioledge Pharmacy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primaryColor: Colors.orange),
      home: SideBarLayoutView(),
    );
  }
}
