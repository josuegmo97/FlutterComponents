import 'package:fl_components/screens/screens.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Primary Color
    primaryColor: Colors.indigo,

    // App Bar
    appBarTheme:
        const AppBarTheme(color: primary, elevation: 0, centerTitle: true),

    // Text Button Theme
    textButtonTheme:
        TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),

    // Floating Action Button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary, elevation: 5),

    // ELevated Button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          primary: primary, shape: const StadiumBorder(), elevation: 0),
    ),

    // input theme
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle( color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
      )
    ),
    // Finish Style
  );
}
