import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:styles/constants/style_dimens.dart';

class BaseTheme {
  BaseTheme({
    required this.colorScheme,
  });

  final ColorScheme colorScheme;

  TextTheme getTextTheme() {
    const defaultTextStyle = TextStyle(
      fontFamily: 'SF-Pro-Display',
      fontWeight: FontWeight.w500,
    );
    return TextTheme(
      displayLarge: defaultTextStyle.copyWith(
        fontSize: StyleDimens.displayLarge,
      ),
      displayMedium: defaultTextStyle.copyWith(
        fontSize: StyleDimens.displayMedium,
      ),
      displaySmall: defaultTextStyle.copyWith(
        fontSize: StyleDimens.displaySmall,
      ),
      headlineLarge: defaultTextStyle.copyWith(
        fontSize: StyleDimens.headlineLarge,
      ),
      headlineMedium: defaultTextStyle.copyWith(
        fontSize: StyleDimens.headlineMedium,
      ),
      headlineSmall: defaultTextStyle.copyWith(
        fontSize: StyleDimens.headlineSmall,
      ),
      titleLarge: defaultTextStyle.copyWith(
        fontSize: StyleDimens.titleLarge,
      ),
      titleMedium: defaultTextStyle.copyWith(
        fontSize: StyleDimens.titleMedium,
      ),
      titleSmall: defaultTextStyle.copyWith(
        fontSize: StyleDimens.titleSmall,
      ),
      labelLarge: defaultTextStyle.copyWith(
        fontSize: StyleDimens.labelLarge,
      ),
      labelMedium: defaultTextStyle.copyWith(
        fontSize: StyleDimens.labelMedium,
      ),
      labelSmall: defaultTextStyle.copyWith(
        fontSize: StyleDimens.labelSmall,
      ),
      bodyLarge: defaultTextStyle.copyWith(
        fontSize: StyleDimens.bodyLarge,
      ),
      bodyMedium: defaultTextStyle.copyWith(
        fontSize: StyleDimens.bodyMedium,
      ),
      bodySmall: defaultTextStyle.copyWith(
        fontSize: StyleDimens.bodySmall,
      ),
    );
  }

  ThemeData data() {
    return ThemeData.from(
      colorScheme: colorScheme,
      textTheme: getTextTheme(),
    );
  }
}
