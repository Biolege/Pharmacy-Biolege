import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<ThemeData> getThemeData() {
  return [lightTheme, darkTheme];
}

// Colors Swatch _______________________________________________________________

Color primaryColor = Color.fromRGBO(255, 137, 0, 1);
Color white = Colors.white;
Color black = Colors.black;
Color blue = Colors.blue;
Color offWhite = Colors.grey[100];
Color offWhite1 = Colors.grey[200];
Color offWhite2 = Colors.grey[300];
Color offBlack = Colors.grey[900];
Color offBlack1 = Colors.grey[800];
Color offBlack2 = Colors.grey[700];
Color offBlack3 = Colors.grey[500];

Color sideBarBlueColor = const Color(0xFF141B41);
Color sideBarTileColor = const Color(0x40C4C4C4);
// Themes ______________________________________________________________________

final lightTheme = ThemeData(
    primaryIconTheme: IconThemeData(color: primaryColor),
    brightness: Brightness.light,
    bottomSheetTheme: bottomSheetTheme("light"),
    floatingActionButtonTheme: floatingActionButtonThemeData("light"),
    scaffoldBackgroundColor: offWhite,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: buttonThemeData("light"),
    appBarTheme: appBarTheme("light"),
    bottomAppBarTheme: bottomAppBarTheme("light"),
    textTheme: contentTextTheme("light"),
    inputDecorationTheme: inputDecorationTheme("light"));

final darkTheme = ThemeData(
    primaryIconTheme: IconThemeData(color: primaryColor),
    brightness: Brightness.dark,
    bottomSheetTheme: bottomSheetTheme("dark"),
    floatingActionButtonTheme: floatingActionButtonThemeData("dark"),
    scaffoldBackgroundColor: offBlack,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonTheme: buttonThemeData("dark"),
    appBarTheme: appBarTheme("dark"),
    textTheme: contentTextTheme("dark"),
    bottomAppBarTheme: bottomAppBarTheme("dark"),
    inputDecorationTheme: inputDecorationTheme("dark"));

// Decorations _________________________________________________________________
BottomAppBarTheme bottomAppBarTheme(String mode) {
  return BottomAppBarTheme(color: mode != "dark" ? offWhite : offBlack);
}

BottomSheetThemeData bottomSheetTheme(String mode) {
  return BottomSheetThemeData(
      backgroundColor: mode != "dark" ? offWhite : offBlack);
}

TextTheme contentTextTheme(String mode) {
  return TextTheme(
      bodyText2: GoogleFonts.nunito(
    color: mode != "dark" ? offBlack : offWhite,
  ));
}

AppBarTheme appBarTheme(String mode) {
  return AppBarTheme(
      color: mode != "dark" ? offWhite : offBlack,
      textTheme: mode != "dark" ? textTheme("light") : textTheme("dark"),
      elevation: 0,
      iconTheme:
          mode != "dark" ? iconThemeData("light") : iconThemeData("dark"));
}

ButtonThemeData buttonThemeData(String mode) {
  return ButtonThemeData(
    buttonColor: primaryColor,
    textTheme: ButtonTextTheme.normal,
  );
}

FloatingActionButtonThemeData floatingActionButtonThemeData(String mode) {
  return FloatingActionButtonThemeData(
      backgroundColor: mode != "dark" ? offBlack : offWhite,
      foregroundColor: mode != "dark" ? offBlack : offWhite);
}

InputDecorationTheme inputDecorationTheme(String mode) {
  final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      // gapPadding: 10,
      borderRadius: BorderRadius.circular(10),
      borderSide:
          BorderSide(width: 0.3, color: mode != "dark" ? offBlack : offWhite));

  return InputDecorationTheme(
      labelStyle: TextStyle(
        color: mode == "dark"
            ? offWhite2.withOpacity(0.3)
            : offBlack2.withOpacity(0.3),
      ),
      hintStyle: TextStyle(
        color: mode == "dark"
            ? offWhite2.withOpacity(0.3)
            : offBlack2.withOpacity(0.3),
      ),
      contentPadding: const EdgeInsets.all(10),
      enabledBorder: outlineInputBorder,
      border: outlineInputBorder,
      focusedBorder: outlineInputBorder);
}

IconThemeData iconThemeData(String mode) {
  return IconThemeData(
    color: mode == "dark" ? offWhite : offBlack,
  );
}

TextTheme textTheme(String mode) {
  return TextTheme(
    bodyText1: GoogleFonts.nunito(
      color: mode == "dark" ? offWhite : offBlack,
      fontSize: 50,
    ),
    headline6:
        TextStyle(color: mode == "dark" ? offWhite : offBlack, fontSize: 15),
  );
}

// _____________________________________________________________________________
