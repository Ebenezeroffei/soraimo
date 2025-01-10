import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff2d628b),
      surfaceTint: Color(0xff2d628b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffcde5ff),
      onPrimaryContainer: Color(0xff001d32),
      secondary: Color(0xff51606f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd4e4f6),
      onSecondaryContainer: Color(0xff0d1d2a),
      tertiary: Color(0xff67587a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffeddcff),
      onTertiaryContainer: Color(0xff221533),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      onSurfaceVariant: Color(0xff42474e),
      outline: Color(0xff72787e),
      outlineVariant: Color(0xffc2c7cf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff9accfa),
      primaryFixed: Color(0xffcde5ff),
      onPrimaryFixed: Color(0xff001d32),
      primaryFixedDim: Color(0xff9accfa),
      onPrimaryFixedVariant: Color(0xff094a72),
      secondaryFixed: Color(0xffd4e4f6),
      onSecondaryFixed: Color(0xff0d1d2a),
      secondaryFixedDim: Color(0xffb8c8da),
      onSecondaryFixedVariant: Color(0xff394857),
      tertiaryFixed: Color(0xffeddcff),
      onTertiaryFixed: Color(0xff221533),
      tertiaryFixedDim: Color(0xffd2bfe7),
      onTertiaryFixedVariant: Color(0xff4f4061),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff01466e),
      surfaceTint: Color(0xff2d628b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff4679a3),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff354453),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff677686),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff4b3d5d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff7e6e91),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff181c20),
      onSurfaceVariant: Color(0xff3e434a),
      outline: Color(0xff5a6066),
      outlineVariant: Color(0xff767b82),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xff9accfa),
      primaryFixed: Color(0xff4679a3),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2a6089),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff677686),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4f5e6d),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff7e6e91),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff655578),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00243c),
      surfaceTint: Color(0xff2d628b),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff01466e),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff142431),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff354453),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff291c3a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff4b3d5d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7f9ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff1f242a),
      outline: Color(0xff3e434a),
      outlineVariant: Color(0xff3e434a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3135),
      inversePrimary: Color(0xffdfeeff),
      primaryFixed: Color(0xff01466e),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff002f4c),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff354453),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff1f2e3c),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff4b3d5d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff342746),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd7dadf),
      surfaceBright: Color(0xfff7f9ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f4f9),
      surfaceContainer: Color(0xffebeef3),
      surfaceContainerHigh: Color(0xffe6e8ee),
      surfaceContainerHighest: Color(0xffe0e2e8),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9accfa),
      surfaceTint: Color(0xff9accfa),
      onPrimary: Color(0xff003352),
      primaryContainer: Color(0xff094a72),
      onPrimaryContainer: Color(0xffcde5ff),
      secondary: Color(0xffb8c8da),
      onSecondary: Color(0xff233240),
      secondaryContainer: Color(0xff394857),
      onSecondaryContainer: Color(0xffd4e4f6),
      tertiary: Color(0xffd2bfe7),
      onTertiary: Color(0xff382a4a),
      tertiaryContainer: Color(0xff4f4061),
      onTertiaryContainer: Color(0xffeddcff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101418),
      onSurface: Color(0xffe0e2e8),
      onSurfaceVariant: Color(0xffc2c7cf),
      outline: Color(0xff8c9198),
      outlineVariant: Color(0xff42474e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff2d628b),
      primaryFixed: Color(0xffcde5ff),
      onPrimaryFixed: Color(0xff001d32),
      primaryFixedDim: Color(0xff9accfa),
      onPrimaryFixedVariant: Color(0xff094a72),
      secondaryFixed: Color(0xffd4e4f6),
      onSecondaryFixed: Color(0xff0d1d2a),
      secondaryFixedDim: Color(0xffb8c8da),
      onSecondaryFixedVariant: Color(0xff394857),
      tertiaryFixed: Color(0xffeddcff),
      onTertiaryFixed: Color(0xff221533),
      tertiaryFixedDim: Color(0xffd2bfe7),
      onTertiaryFixedVariant: Color(0xff4f4061),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9ed0fe),
      surfaceTint: Color(0xff9accfa),
      onPrimary: Color(0xff00182a),
      primaryContainer: Color(0xff6395c1),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffbdccde),
      onSecondary: Color(0xff081824),
      secondaryContainer: Color(0xff8392a3),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffd6c3eb),
      onTertiary: Color(0xff1d102e),
      tertiaryContainer: Color(0xff9b8aaf),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101418),
      onSurface: Color(0xfff9faff),
      onSurfaceVariant: Color(0xffc6cbd3),
      outline: Color(0xff9ea3ab),
      outlineVariant: Color(0xff7e848b),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff0c4c73),
      primaryFixed: Color(0xffcde5ff),
      onPrimaryFixed: Color(0xff001322),
      primaryFixedDim: Color(0xff9accfa),
      onPrimaryFixedVariant: Color(0xff00395b),
      secondaryFixed: Color(0xffd4e4f6),
      onSecondaryFixed: Color(0xff03121f),
      secondaryFixedDim: Color(0xffb8c8da),
      onSecondaryFixedVariant: Color(0xff293846),
      tertiaryFixed: Color(0xffeddcff),
      onTertiaryFixed: Color(0xff170a28),
      tertiaryFixedDim: Color(0xffd2bfe7),
      onTertiaryFixedVariant: Color(0xff3e3050),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfff9faff),
      surfaceTint: Color(0xff9accfa),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff9ed0fe),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfff9faff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffbdccde),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fd),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd6c3eb),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101418),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfff9faff),
      outline: Color(0xffc6cbd3),
      outlineVariant: Color(0xffc6cbd3),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e2e8),
      inversePrimary: Color(0xff002d48),
      primaryFixed: Color(0xffd5e9ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff9ed0fe),
      onPrimaryFixedVariant: Color(0xff00182a),
      secondaryFixed: Color(0xffd9e9fb),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffbdccde),
      onSecondaryFixedVariant: Color(0xff081824),
      tertiaryFixed: Color(0xfff1e1ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd6c3eb),
      onTertiaryFixedVariant: Color(0xff1d102e),
      surfaceDim: Color(0xff101418),
      surfaceBright: Color(0xff36393e),
      surfaceContainerLowest: Color(0xff0b0f12),
      surfaceContainerLow: Color(0xff181c20),
      surfaceContainer: Color(0xff1c2024),
      surfaceContainerHigh: Color(0xff272a2e),
      surfaceContainerHighest: Color(0xff313539),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
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

  List<ExtendedColor> get extendedColors => [];
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
