import 'package:flutter/material.dart';
import 'package:user_post/app/config/colors.dart';

ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.white,
  colorScheme: ColorScheme.light(
    primary: AppColors.primary,
  ),
  textTheme: ThemeData().textTheme.apply(
        fontFamily: 'Roboto',
      ),
  primaryTextTheme: ThemeData().textTheme.apply(
        fontFamily: 'Roboto',
      ),
  inputDecorationTheme: InputDecorationTheme(
    alignLabelWithHint: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(
        color: AppColors.tertiary,
      ),
    ),
    suffixIconColor: AppColors.tertiary,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(
        color: AppColors.tertiary,
      ),
    ),
    labelStyle: TextStyle(
      color: AppColors.tertiary,
      fontFamily: 'Roboto',
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(
        color: AppColors.error,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(
        color: AppColors.link,
        width: 2,
      ),
    ),
    contentPadding: const EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 24,
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(
        color: AppColors.error,
        width: 2,
      ),
    ),
    floatingLabelBehavior: FloatingLabelBehavior.auto,
    isCollapsed: false,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.link,
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      disabledForegroundColor: Colors.white,
      disabledBackgroundColor: AppColors.disable,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      textStyle: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
      ),
      minimumSize: const Size(double.infinity, 50),
    ),
  ),
);
