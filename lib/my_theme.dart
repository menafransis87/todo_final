import 'package:flutter/material.dart';

class MyTheme{

  static const Color LightPrimary = Color(0xFF5D9CEC);
  static const Color LightScaffoldBackground = Color(0xFFD7DCE3);
  static const Color green = Color(0xE441FF00);
  static const Color red = Color(0xE4FF0000);
  static final  ThemeData lightTheme = ThemeData(
primaryColor: LightPrimary,
    scaffoldBackgroundColor: LightScaffoldBackground,
bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.transparent,
    elevation: 0,
      selectedIconTheme: IconThemeData(
        size: 36
      ),
          unselectedIconTheme: IconThemeData(
    size: 36
)
  ),
textTheme: TextTheme(
      titleMedium: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: LightPrimary)
    ,bodyMedium: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: LightPrimary)
    ,bodySmall: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.black)
  )
  );
  static final  ThemeData darkTheme = ThemeData(



  );
}