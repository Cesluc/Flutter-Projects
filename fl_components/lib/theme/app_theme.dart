

import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Colors.indigo;
  
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: Colors.indigo,

    //Appbar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

    // TextButton Theme

    textButtonTheme:TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),  
    ),
    // FLoatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),

    // ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
            backgroundColor: Colors.indigo,
            shape: const StadiumBorder(),
            elevation: 0
          ),
    )

  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: Colors.indigo,

    //Appbar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

    scaffoldBackgroundColor: Colors.black
  );

  

}