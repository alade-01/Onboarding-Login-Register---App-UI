import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constants.dart';

/// {@template brightness_cubit}
/// A simple [Cubit] which manages the [ThemeData] as its state.
/// {@endtemplate}
class ThemeCubit extends Cubit<ThemeData> {
  /// {@macro brightness_cubit}
  ThemeCubit() : super(_lightTheme);

  static final baseTheme = ThemeData(
    // scaffoldBackgroundColor: color3[300],
    primarySwatch: primarySwatchColor,
    primaryColor: primaryColor,
    fontFamily: USED_FONT,
    appBarTheme: AppBarTheme(
      elevation: 0,
      shadowColor: secondaryColor.shade50,
      // systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: primaryColor),
      backgroundColor: color3[300],
      titleTextStyle: TextStyle(
        color: primaryColor,
        fontSize: 26 / 0.8,
        fontFamily: USED_FONT,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: secondaryColor,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        color: primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      labelLarge: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20 / 0.8,
      ),
      labelMedium: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 17,
      ),
      labelSmall: const TextStyle(
        color: Colors.black38,
        //fontWeight: FontWeight.w500,
        fontSize: 16 / 0.8,
        decoration: TextDecoration.none,
      ),
      bodyLarge: const TextStyle(
        color: Colors.black38,
        //fontWeight: FontWeight.w500,
        fontSize: 16,
        decoration: TextDecoration.none,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFFF1F4FF),
      //constraints: const BoxConstraints(maxHeight: 65),
      labelStyle: const TextStyle(
        color: Color(0xFF626262),
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      iconColor: Color(0xFF626262),
      prefixIconColor: Color(0xFF626262),
      suffixIconColor: Color(0xFF626262),

      contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
        borderSide: const BorderSide(width: 0.7, color: Colors.black38),
      ),
      outlineBorder: const BorderSide(
        color: Color(0xFFF9F9F9),
        width: 1,
      ),

      focusColor: Color(0xFF626262),
      hintStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFF626262),
      ),
      errorStyle: const TextStyle(
          fontSize: 14, fontFamily: SECONDARY_FONT, color: Colors.redAccent),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 0.7, color: Colors.white),
          borderRadius: BorderRadius.circular(10)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0.7, color: primaryColor),
          borderRadius: BorderRadius.circular(10)),
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 0.7, color: Colors.redAccent),
          borderRadius: BorderRadius.circular(10)),
      prefixStyle: const TextStyle(
        color: textColor,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(primaryColor),
        foregroundColor: const MaterialStatePropertyAll(Colors.white),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),

    ),
    cardTheme: CardTheme(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      elevation: 5.0,
      shadowColor: secondaryColor.shade50,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: primaryColor,
      selectionColor: primaryColor,
      selectionHandleColor: primaryColor,
    ),
    checkboxTheme: CheckboxThemeData(
      side: BorderSide(
        color: primaryColor,
      ),
      fillColor: MaterialStateProperty.all(primaryColor),
      checkColor: MaterialStateProperty.all(Colors.white),
    ),
  );
  static final _lightTheme = baseTheme.copyWith(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: primaryColor,
      selectionColor: lightBlueBackground,
      selectionHandleColor: primaryColor,
    ),
    textTheme: baseTheme.textTheme.copyWith(),
    switchTheme: baseTheme.switchTheme.copyWith(),
    appBarTheme: baseTheme.appBarTheme.copyWith(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(
        color: secondaryColor,
      ),
      titleTextStyle: const TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: baseTheme.colorScheme.copyWith(
      primary: primaryColor,
    ),
  );

  static final _darkTheme = baseTheme.copyWith(
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: Colors.black,
    ),
    brightness: Brightness.dark,
  );

  /// Toggles the current brightness between light and dark.
  void toggleTheme() {
    emit(state.brightness == Brightness.dark ? _lightTheme : _darkTheme);
  }
}

const defaultLetterSpacing = 0.03;
