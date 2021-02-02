import 'package:flutter/material.dart';
import 'package:pharmacy_bioledge/sidebar/sidebar_layout.dart';

void main() {
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
      home: SideBarLayout(),
    );
  }
}
