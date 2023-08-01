import 'package:flutter/material.dart';

import 'base_theme.dart';

class LightTheme extends BaseTheme {
  LightTheme()
      : super(
          colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xffF15223),
            onPrimary: Color(0xfff8f9fa),
            secondary: Color(0xff999999),
            onSecondary: Color(0xff343a40),
            tertiary: Color(0xff666666), // Used for border color
            onTertiary: Color(0xffffffff),  // Used for border color

            error: Color(0xffF75D5D),
            onError: Color(0xff343a40),
            background: Color(0xffffffff),
            onBackground: Color(0xff3A3F4A),
            surface: Color(0xffffffff),
            onSurface:  Color(0xffffffff),
            surfaceVariant: Color(0xffffffff),
            onSurfaceVariant:  Color(0xffffffff),
          ),
        );
}
