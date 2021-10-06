/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
*/

import 'package:flutter/material.dart';

class AmplifyColors {
  const AmplifyColors._();

  static const Color black = Color(0xFF000000);
  static const Color black95 = Color(0xFF0D0D0D);
  static const Color black90 = Color(0xFF1A1A1A);
  static const Color black85 = Color(0xFF262626);
  static const Color black80 = Color(0xFF333333);
  static const Color black75 = Color(0xFF404040);
  static const Color black70 = Color(0xFF4D4D4D);
  static const Color black65 = Color(0xFF595959);
  static const Color black60 = Color(0xFF666666);
  static const Color black55 = Color(0xFF737373);
  static const Color black50 = Color(0xFF808080);
  static const Color black45 = Color(0xFF8C8C8C);
  static const Color black40 = Color(0xFF999999);
  static const Color black35 = Color(0xFFA6A6A6);
  static const Color black30 = Color(0xFFB3B3B3);
  static const Color black25 = Color(0xFFBFBFBF);
  static const Color black20 = Color(0xFFCCCCCC);
  static const Color black15 = Color(0xFFD9D9D9);
  static const Color black10 = Color(0xFFE6E6E6);
  static const Color black5 = Color(0xFFF2F2F2);
  static const Color white = Color(0xFFFFFFFF);

  static const Color borderPrimary = black60;
  static const Color borderSecondary = black40;
  static const Color borderTertiary = black20;

  static const Color backgroundPrimary = white;
  static const Color backgroundSecondary = black20;
  static const Color backgroundTertiary = black40;
  static const Color scaffoldBackgroundColor = black5;

  static const Color textPrimary = black;
  static const Color textSecondary = black80;
  static const Color textTertiary = black60;
  static const Color textInverse = white;
  static const Color textInfo = statusInfo;
  static const Color textSuccess = statusSuccess;
  static const Color textWarning = statusWarning;
  static const Color textError = statusError;

  static const Color statusInfoText = Color(0xFF1F4053);
  static const Color statusInfo = blue;
  static const Color statusInfo80 = Color(0xFF71B3D9);
  static const Color statusInfo60 = Color(0xFF94C6E2);

  static const Color statusSuccessText = Color(0xFF1F532A);
  static const Color statusSuccess = green;
  static const Color statusSuccess80 = Color(0xFF71D987);
  static const Color statusSuccess60 = Color(0xFF94E2A5);

  static const Color statusWarningText = Color(0xFF5E2A0C);
  static const Color statusWarning = orange;
  static const Color statusWarning80 = Color(0xFFEE874B);
  static const Color statusWarning60 = Color(0xFFF2A578);

  static const Color statusErrorText = Color(0xFF66151C);
  static const Color statusError = red;
  static const Color statusError80 = Color(0xFFFE5D6B);
  static const Color statusError60 = Color(0xFFFE8690);

  static const MaterialColor brand = MaterialColor(_brandPrimary, {
    200: Color(0xFFE3D3FF),
    300: Color(0xFFC3A9FF),
    400: Color(0xFFB598FF),
    500: Color(_brandPrimary),
    600: Color(0xFF5641BF),
    700: Color(0xFF392B80),
    800: Color(0xFF1D1640),
  });
  static const int _brandPrimary = 0xFF7256FF;

  static const MaterialColor purple = MaterialColor(_purplePrimary, {
    100: Color(0xFFEEE5FF),
    200: Color(0xFFDCCBFF),
    300: Color(0xFFCAB1FF),
    400: Color(0xFFB598FF),
    500: Color(_purplePrimary),
    600: Color(0xFF7C60DB),
    700: Color(0xFF5842B9),
    800: Color(0xFF332597),
    900: Color(0xFF000976),
  });
  static const int _purplePrimary = 0xFF9F7FFF;

  static const MaterialColor teal = MaterialColor(_tealPrimary, {
    100: Color(0xFFE2FFFD),
    200: Color(0xFFC2FFFB),
    300: Color(0xFF9EFFF9),
    400: Color(0xFF70FFF7),
    500: Color(_tealPrimary),
    600: Color(0xFF00CBC2),
    700: Color(0xFF009891),
    800: Color(0xFF006863),
    900: Color(0xFF003B39),
  });
  static const int _tealPrimary = 0xFF00FFF5;

  static const MaterialColor blue = MaterialColor(_bluePrimary, {
    100: Color(0xFFDFEBF5),
    200: Color(0xFFBED8EC),
    300: Color(0xFF9DC5E2),
    400: Color(0xFF78B2D9),
    500: Color(_bluePrimary),
    600: Color(0xFF1F7FAC),
    700: Color(0xFF00608B),
    800: Color(0xFF00436B),
    900: Color(0xFF00274D),
  });
  static const int _bluePrimary = 0xFF4DA0CF;

  static const MaterialColor green = MaterialColor(_greenPrimary, {
    100: Color(0xFFE0F6E1),
    200: Color(0xFFBFEDC3),
    300: Color(0xFF9EE4A5),
    400: Color(0xFF79DA88),
    500: Color(_greenPrimary),
    600: Color(0xFF0BA544),
    700: Color(0xFF007D1F),
    800: Color(0xFF005700),
    900: Color(0xFF003300),
  });
  static const int _greenPrimary = 0xFF4DCF6A;

  static const MaterialColor orange = MaterialColor(_orangePrimary, {
    100: Color(0xFFFFE1D1),
    200: Color(0xFFFFC3A4),
    300: Color(0xFFFEA678),
    400: Color(0xFFF5884D),
    500: Color(_orangePrimary),
    600: Color(0xFFC44A00),
    700: Color(0xFF9F2900),
    800: Color(0xFF7C0000),
    900: Color(0xFF5C0000),
  });
  static const int _orangePrimary = 0xFFEA691E;

  static const MaterialColor red = MaterialColor(_redPrimary, {
    100: Color(0xFFFFDCD7),
    200: Color(0xFFFFB8B1),
    300: Color(0xFFFF938B),
    400: Color(0xFFFF6A68),
    500: Color(_redPrimary),
    600: Color(0xFFD9002D),
    700: Color(0xFFB50015),
    800: Color(0xFF910000),
    900: Color(0xFF6F0000),
  });
  static const int _redPrimary = 0xFFFE3546;
}

class AmplifyTextTheme extends TextTheme {
  const AmplifyTextTheme()
      : super(
          headline1: h1,
          headline2: h2,
          headline3: h3,
          headline4: h4,
          headline5: h5,
          headline6: h6,
          subtitle1: bodyLarge,
          bodyText2: body,
          caption: bodySmall,
          button: button$,
        );

  static const fontPackage = 'amplify_authenticator';
  static const fontFamily = 'WorkSans';

  static const h1 = TextStyle(
    fontFamily: fontFamily,
    package: fontPackage,
    fontWeight: FontWeight.bold,
    fontSize: 64,
    height: 72 / 64,
  );

  static const h2 = TextStyle(
    fontFamily: fontFamily,
    package: fontPackage,
    fontWeight: FontWeight.bold,
    fontSize: 56,
    height: 64 / 56,
  );

  static const h3 = TextStyle(
    fontFamily: fontFamily,
    package: fontPackage,
    fontWeight: FontWeight.bold,
    fontSize: 48,
    height: 56 / 48,
  );

  static const h4 = TextStyle(
    fontFamily: fontFamily,
    package: fontPackage,
    fontWeight: FontWeight.bold,
    fontSize: 40,
    height: 48 / 40,
  );

  static const h5 = TextStyle(
    fontFamily: fontFamily,
    package: fontPackage,
    fontWeight: FontWeight.bold,
    fontSize: 32,
    height: 40 / 32,
  );

  static const h6 = TextStyle(
    fontFamily: fontFamily,
    package: fontPackage,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    height: 32 / 24,
  );

  static const bodyLarge = TextStyle(
    fontFamily: fontFamily,
    package: fontPackage,
    fontWeight: FontWeight.normal,
    fontSize: 16,
    height: 24 / 16,
  );

  static const bodyLargeLink = TextStyle(
    fontFamily: fontFamily,
    package: fontPackage,
    fontWeight: FontWeight.normal,
    fontSize: 14,
    height: 22 / 14,
    decoration: TextDecoration.underline,
  );

  static const body = TextStyle(
    fontFamily: fontFamily,
    package: fontPackage,
    fontWeight: FontWeight.normal,
    fontSize: 14,
    height: 22 / 14,
  );

  static const bodySmall = TextStyle(
    fontFamily: fontFamily,
    package: fontPackage,
    fontWeight: FontWeight.normal,
    fontSize: 12,
    height: 20 / 12,
  );

  static const button$ = TextStyle(
    fontFamily: fontFamily,
    package: fontPackage,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 24 / 16,
  );
}

class AmplifyTheme {
  const AmplifyTheme._();

  static ElevatedButtonThemeData elevatedButtonThemeData({
    bool primary = true,
    bool isLoading = false,
  }) {
    final base =
        primary ? primaryElevatedButtonTheme : secondaryElevatedButtonTheme;
    if (!isLoading) {
      return base;
    }

    final baseStyle = base.style!;
    const enabledStates = <MaterialState>{};
    return ElevatedButtonThemeData(
        style: baseStyle.copyWith(
      backgroundColor: MaterialStateProperty.all(
        baseStyle.backgroundColor?.resolve(enabledStates),
      ),
      foregroundColor: MaterialStateProperty.all(
        baseStyle.foregroundColor?.resolve(enabledStates),
      ),
      side: MaterialStateProperty.all(
        baseStyle.side?.resolve(enabledStates),
      ),
    ));
  }

  static final primaryElevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      splashFactory: NoSplash.splashFactory,
      shape: MaterialStateProperty.all(const RoundedRectangleBorder()),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return AmplifyColors.black20;
        }
        if (states.contains(MaterialState.hovered)) {
          return AmplifyColors.brand[600]!;
        }
        return AmplifyColors.brand;
      }),
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return AmplifyColors.black40;
        }
        return AmplifyColors.textInverse;
      }),
      padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
      shadowColor: MaterialStateProperty.all(AmplifyColors.blue),
    ),
  );

  static final secondaryElevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      splashFactory: NoSplash.splashFactory,
      shape: MaterialStateProperty.all(const RoundedRectangleBorder()),
      side: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return const BorderSide(color: AmplifyColors.black20);
        }
        if (states.contains(MaterialState.hovered)) {
          return const BorderSide(color: AmplifyColors.textPrimary);
        }
        return const BorderSide(color: AmplifyColors.borderPrimary);
      }),
      backgroundColor: MaterialStateProperty.all(AmplifyColors.white),
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return AmplifyColors.black40;
        }
        return AmplifyColors.textPrimary;
      }),
      padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
      shadowColor: MaterialStateProperty.all(AmplifyColors.blue),
    ),
  );

  static final textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return AmplifyColors.black40;
        }
        return AmplifyColors.textPrimary;
      }),
    ),
  );

  static final primaryProgressIndicatorTheme = ProgressIndicatorThemeData(
    color: AmplifyColors.brand[800]!,
    circularTrackColor: AmplifyColors.white,
  );

  static const secondaryProgressIndicatorTheme = ProgressIndicatorThemeData(
    color: AmplifyColors.brand,
    circularTrackColor: AmplifyColors.black20,
  );

  static final inputDecorationTheme = InputDecorationTheme(
    labelStyle: AmplifyTextTheme.bodySmall.copyWith(
      color: AmplifyColors.black60,
    ),
  );

  static final radioTheme = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return AmplifyColors.black20;
      }
      return AmplifyColors.brand;
    }),
  );

  static const appBarTheme = AppBarTheme(
    elevation: 0,
    color: AmplifyColors.scaffoldBackgroundColor,
  );

  static late final ThemeData theme = () {
    return ThemeData.from(
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: AmplifyColors.brand,
        primaryColorDark: AmplifyColors.brand[600]!,
        accentColor: AmplifyColors.teal,
        backgroundColor: AmplifyColors.backgroundPrimary,
        errorColor: AmplifyColors.statusError,
        cardColor: AmplifyColors.white,
      ),
      textTheme: const AmplifyTextTheme(),
    ).copyWith(
      elevatedButtonTheme: primaryElevatedButtonTheme,
      progressIndicatorTheme: primaryProgressIndicatorTheme,
      textButtonTheme: textButtonTheme,
      inputDecorationTheme: inputDecorationTheme,
      radioTheme: radioTheme,
      appBarTheme: appBarTheme,
    );
  }();
}
