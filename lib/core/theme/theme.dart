import "package:flutter/material.dart";

abstract class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true, colorScheme: MaterialTheme.lightScheme());

  static final ThemeData darkTheme = ThemeData(
      useMaterial3: true, colorScheme: MaterialTheme.darkScheme());
}


class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8c4a60),
      surfaceTint: Color(0xff8c4a60),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffd9e2),
      onPrimaryContainer: Color(0xff3a071d),
      secondary: Color(0xff74565f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffd9e2),
      onSecondaryContainer: Color(0xff2b151c),
      tertiary: Color(0xff7c5635),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffdcc1),
      onTertiaryContainer: Color(0xff2e1500),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f8),
      onSurface: Color(0xff22191c),
      onSurfaceVariant: Color(0xff514347),
      outline: Color(0xff837377),
      outlineVariant: Color(0xffd5c2c6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff372e30),
      inversePrimary: Color(0xffffb1c8),
      primaryFixed: Color(0xffffd9e2),
      onPrimaryFixed: Color(0xff3a071d),
      primaryFixedDim: Color(0xffffb1c8),
      onPrimaryFixedVariant: Color(0xff703348),
      secondaryFixed: Color(0xffffd9e2),
      onSecondaryFixed: Color(0xff2b151c),
      secondaryFixedDim: Color(0xffe3bdc6),
      onSecondaryFixedVariant: Color(0xff5a3f47),
      tertiaryFixed: Color(0xffffdcc1),
      onTertiaryFixed: Color(0xff2e1500),
      tertiaryFixedDim: Color(0xffefbd94),
      onTertiaryFixedVariant: Color(0xff623f20),
      surfaceDim: Color(0xffe6d6d9),
      surfaceBright: Color(0xfffff8f8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f2),
      surfaceContainer: Color(0xfffaeaed),
      surfaceContainerHigh: Color(0xfff5e4e7),
      surfaceContainerHighest: Color(0xffefdfe1),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb1c8),
      surfaceTint: Color(0xffffb1c8),
      onPrimary: Color(0xff541d32),
      primaryContainer: Color(0xff703348),
      onPrimaryContainer: Color(0xffffd9e2),
      secondary: Color(0xffe3bdc6),
      onSecondary: Color(0xff422931),
      secondaryContainer: Color(0xff5a3f47),
      onSecondaryContainer: Color(0xffffd9e2),
      tertiary: Color(0xffefbd94),
      onTertiary: Color(0xff48290b),
      tertiaryContainer: Color(0xff623f20),
      onTertiaryContainer: Color(0xffffdcc1),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff191113),
      onSurface: Color(0xffefdfe1),
      onSurfaceVariant: Color(0xffd5c2c6),
      outline: Color(0xff9e8c90),
      outlineVariant: Color(0xff514347),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffefdfe1),
      inversePrimary: Color(0xff8c4a60),
      primaryFixed: Color(0xffffd9e2),
      onPrimaryFixed: Color(0xff3a071d),
      primaryFixedDim: Color(0xffffb1c8),
      onPrimaryFixedVariant: Color(0xff703348),
      secondaryFixed: Color(0xffffd9e2),
      onSecondaryFixed: Color(0xff2b151c),
      secondaryFixedDim: Color(0xffe3bdc6),
      onSecondaryFixedVariant: Color(0xff5a3f47),
      tertiaryFixed: Color(0xffffdcc1),
      onTertiaryFixed: Color(0xff2e1500),
      tertiaryFixedDim: Color(0xffefbd94),
      onTertiaryFixedVariant: Color(0xff623f20),
      surfaceDim: Color(0xff191113),
      surfaceBright: Color(0xff413739),
      surfaceContainerLowest: Color(0xff140c0e),
      surfaceContainerLow: Color(0xff22191c),
      surfaceContainer: Color(0xff261d20),
      surfaceContainerHigh: Color(0xff31282a),
      surfaceContainerHighest: Color(0xff3c3235),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
