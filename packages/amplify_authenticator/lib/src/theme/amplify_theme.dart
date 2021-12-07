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

import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:flutter/material.dart';

class AmplifyColors {
  const AmplifyColors._();

  static const red10 = Color(0xfffce9e9);
  static const red20 = Color(0xfff5bcbc);
  static const red40 = Color(0xffef8f8f);
  static const red60 = Color(0xffbf4040);
  static const red80 = Color(0xff950404);
  static const red90 = Color(0xff660000);
  static const red100 = Color(0xff4d0000);
  static const red = MaterialColor(0xffbf4040, {
    50: Color(0xfffce9e9),
    100: Color(0xfff5bcbc),
    300: Color(0xffef8f8f),
    500: Color(0xffbf4040),
    700: Color(0xff950404),
    800: Color(0xff660000),
    900: Color(0xff4d0000),
  });

  static const orange10 = Color(0xfffcf2e9);
  static const orange20 = Color(0xfff5d9bc);
  static const orange40 = Color(0xffefbf8f);
  static const orange60 = Color(0xffbf8040);
  static const orange80 = Color(0xff954d04);
  static const orange90 = Color(0xff663300);
  static const orange100 = Color(0xff4d2600);
  static const orange = MaterialColor(0xffbf8040, {
    50: Color(0xfffcf2e9),
    100: Color(0xfff5d9bc),
    300: Color(0xffefbf8f),
    500: Color(0xffbf8040),
    700: Color(0xff954d04),
    800: Color(0xff663300),
    900: Color(0xff4d2600),
  });

  static const yellow10 = Color(0xfffcfce9);
  static const yellow20 = Color(0xfff5f5bc);
  static const yellow40 = Color(0xffefef8f);
  static const yellow60 = Color(0xffbfbf40);
  static const yellow80 = Color(0xff959504);
  static const yellow90 = Color(0xff666600);
  static const yellow100 = Color(0xff4d4d00);
  static const yellow = MaterialColor(0xffbfbf40, {
    50: Color(0xfffcfce9),
    100: Color(0xfff5f5bc),
    300: Color(0xffefef8f),
    500: Color(0xffbfbf40),
    700: Color(0xff959504),
    800: Color(0xff666600),
    900: Color(0xff4d4d00),
  });

  static const green10 = Color(0xffe9fcec);
  static const green20 = Color(0xffbcf5c6);
  static const green40 = Color(0xff8fef9f);
  static const green60 = Color(0xff40bf55);
  static const green80 = Color(0xff04951c);
  static const green90 = Color(0xff006611);
  static const green100 = Color(0xff004d0d);
  static const green = MaterialColor(0xff40bf55, {
    50: Color(0xffe9fcec),
    100: Color(0xffbcf5c6),
    300: Color(0xff8fef9f),
    500: Color(0xff40bf55),
    700: Color(0xff04951c),
    800: Color(0xff006611),
    900: Color(0xff004d0d),
  });

  static const teal10 = Color(0xffe9f9fc);
  static const teal20 = Color(0xffbcecf5);
  static const teal40 = Color(0xff7dd6e8);
  static const teal60 = Color(0xff40aabf);
  static const teal80 = Color(0xff047d95);
  static const teal90 = Color(0xff005566);
  static const teal100 = Color(0xff00404d);
  static const teal = MaterialColor(0xff40aabf, {
    50: Color(0xffe9f9fc),
    100: Color(0xffbcecf5),
    300: Color(0xff7dd6e8),
    500: Color(0xff40aabf),
    700: Color(0xff047d95),
    800: Color(0xff005566),
    900: Color(0xff00404d),
  });

  static const blue10 = Color(0xffe6eefe);
  static const blue20 = Color(0xffb8cef9);
  static const blue40 = Color(0xff7da1e8);
  static const blue60 = Color(0xff406abf);
  static const blue80 = Color(0xff043495);
  static const blue90 = Color(0xff002266);
  static const blue100 = Color(0xff001a4d);
  static const blue = MaterialColor(0xff406abf, {
    50: Color(0xffe6eefe),
    100: Color(0xffb8cef9),
    300: Color(0xff7da1e8),
    500: Color(0xff406abf),
    700: Color(0xff043495),
    800: Color(0xff002266),
    900: Color(0xff001a4d),
  });

  static const purple10 = Color(0xfffee6fe);
  static const purple20 = Color(0xfff9b8f9);
  static const purple40 = Color(0xffe87de8);
  static const purple60 = Color(0xffbf40bf);
  static const purple80 = Color(0xff950495);
  static const purple90 = Color(0xff660066);
  static const purple100 = Color(0xff4d004d);
  static const purple = MaterialColor(0xffbf40bf, {
    50: Color(0xfffee6fe),
    100: Color(0xfff9b8f9),
    300: Color(0xffe87de8),
    500: Color(0xffbf40bf),
    700: Color(0xff950495),
    800: Color(0xff660066),
    900: Color(0xff4d004d),
  });

  static const pink10 = Color(0xfffee6ee);
  static const pink20 = Color(0xfffbb6cd);
  static const pink40 = Color(0xffe87da1);
  static const pink60 = Color(0xffbf406a);
  static const pink80 = Color(0xff950434);
  static const pink90 = Color(0xff660022);
  static const pink100 = Color(0xff4d0019);
  static const pink = MaterialColor(0xffbf406a, {
    50: Color(0xfffee6ee),
    100: Color(0xfffbb6cd),
    300: Color(0xffe87da1),
    500: Color(0xffbf406a),
    700: Color(0xff950434),
    800: Color(0xff660022),
    900: Color(0xff4d0019),
  });

  static const neutral10 = Color(0xfff2f2f3);
  static const neutral20 = Color(0xffe4e6e7);
  static const neutral40 = Color(0xffc9cccf);
  static const neutral60 = Color(0xffaeb3b7);
  static const neutral80 = Color(0xff5c6670);
  static const neutral90 = Color(0xff304050);
  static const neutral100 = Color(0xff0d1a26);
  static const neutral = MaterialColor(0xffaeb3b7, {
    50: Color(0xfff2f2f3),
    100: Color(0xffe4e6e7),
    300: Color(0xffc9cccf),
    500: Color(0xffaeb3b7),
    700: Color(0xff5c6670),
    800: Color(0xff304050),
    900: Color(0xff0d1a26),
  });

  static const brandPrimary10 = Color(0xffe9f9fc);
  static const brandPrimary20 = Color(0xffbcecf5);
  static const brandPrimary40 = Color(0xff7dd6e8);
  static const brandPrimary60 = Color(0xff40aabf);
  static const brandPrimary80 = Color(0xff047d95);
  static const brandPrimary90 = Color(0xff005566);
  static const brandPrimary100 = Color(0xff00404d);
  static const brandPrimary = MaterialColor(0xff40aabf, {
    50: Color(0xffe9f9fc),
    100: Color(0xffbcecf5),
    300: Color(0xff7dd6e8),
    500: Color(0xff40aabf),
    700: Color(0xff047d95),
    800: Color(0xff005566),
    900: Color(0xff00404d),
  });
  static const brandPrimaryDark = brandPrimary40;

  static const brandSecondary10 = Color(0xfffee6fe);
  static const brandSecondary20 = Color(0xfff9b8f9);
  static const brandSecondary40 = Color(0xffe87de8);
  static const brandSecondary60 = Color(0xffbf40bf);
  static const brandSecondary80 = Color(0xff950495);
  static const brandSecondary90 = Color(0xff660066);
  static const brandSecondary100 = Color(0xff4d004d);
  static const brandSecondary = MaterialColor(0xffbf40bf, {
    50: Color(0xfffee6fe),
    100: Color(0xfff9b8f9),
    300: Color(0xffe87de8),
    500: Color(0xffbf40bf),
    700: Color(0xff950495),
    800: Color(0xff660066),
    900: Color(0xff4d004d),
  });
  static const brandSecondaryDark = brandSecondary40;

  static const fontPrimary = AmplifyColors.neutral100;
  static const fontPrimaryDark = AmplifyColors.neutral100;
  static const fontSecondary = AmplifyColors.neutral80;
  static const fontSecondaryDark = AmplifyColors.neutral80;
  static const fontTertiary = AmplifyColors.neutral60;
  static const fontDisabled = AmplifyColors.fontTertiary;
  static const fontInverse = AmplifyColors.white;
  static const fontInteractive = AmplifyColors.brandPrimary80;
  static const fontInteractiveDark = AmplifyColors.brandPrimary40;
  static const fontHover = AmplifyColors.brandPrimary90;
  static const fontHoverDark = AmplifyColors.brandPrimary10;
  static const fontFocus = AmplifyColors.brandPrimary100;
  static const fontFocusDark = AmplifyColors.brandPrimary20;
  static const fontActive = AmplifyColors.brandPrimary100;
  static const fontInfo = AmplifyColors.blue80;
  static const fontWarning = AmplifyColors.orange80;
  static const fontError = AmplifyColors.red80;
  static const fontSuccess = AmplifyColors.green80;

  static const backgroundPrimary = AmplifyColors.white;
  static const backgroundPrimaryDark = AmplifyColors.black;
  static const backgroundSecondary = AmplifyColors.neutral10;
  static const backgroundTertiary = AmplifyColors.neutral20;
  static const backgroundDisabled = AmplifyColors.backgroundTertiary;
  static const backgroundDisabledDark = AmplifyColors.neutral100;
  static const backgroundInfo = AmplifyColors.blue20;
  static const backgroundInfoDark = AmplifyColors.blue90;
  static const backgroundWarning = AmplifyColors.orange20;
  static const backgroundWarningDark = AmplifyColors.orange90;
  static const backgroundError = AmplifyColors.red20;
  static const backgroundErrorDark = AmplifyColors.red90;
  static const backgroundSuccess = AmplifyColors.green20;
  static const backgroundSuccessDark = AmplifyColors.green90;

  static const borderPrimary = AmplifyColors.neutral60;
  static const borderSecondary = AmplifyColors.neutral40;
  static const borderSecondaryDark = AmplifyColors.neutral90;
  static const borderTertiary = AmplifyColors.neutral20;
  static const borderDisabled = AmplifyColors.borderTertiary;
  static const borderFocus = AmplifyColors.brandPrimary100;
  static const borderError = AmplifyColors.red80;

  static const shadowPrimary = Color(0x400d1a26);
  static const shadowSecondary = Color(0x260d1a26);
  static const shadowTertiary = Color(0x0d0d1a26);

  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const transparent = Color(0x00FFFFFF);
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
  static const fontFamily = 'Inter';

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

  static _AmplifyThemeWrapper of(
    BuildContext context, {
    bool? useAmplifyTheme,
  }) {
    useAmplifyTheme ??= InheritedConfig.of(context).useAmplifyTheme;
    return _AmplifyThemeWrapper(
      context: context,
      useAmplifyTheme: useAmplifyTheme,
    );
  }

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      splashFactory: NoSplash.splashFactory,
      shape: MaterialStateProperty.all(const RoundedRectangleBorder()),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return AmplifyColors.neutral20;
        }
        if (states.contains(MaterialState.hovered)) {
          return AmplifyColors.brandPrimary90;
        }
        if (states.contains(MaterialState.pressed)) {
          return AmplifyColors.brandPrimary90;
        }
        return AmplifyColors.brandPrimary80;
      }),
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return AmplifyColors.fontTertiary;
        }
        return AmplifyColors.fontInverse;
      }),
      padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
      shadowColor: MaterialStateProperty.all(AmplifyColors.shadowPrimary),
    ),
  );

  static final elevatedButtonThemeDark = ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      splashFactory: NoSplash.splashFactory,
      shape: MaterialStateProperty.all(const RoundedRectangleBorder()),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return AmplifyColors.neutral90;
        }
        if (states.contains(MaterialState.hovered)) {
          return AmplifyColors.brandPrimary10;
        }
        if (states.contains(MaterialState.pressed)) {
          return AmplifyColors.brandPrimary20;
        }
        return AmplifyColors.brandPrimary40;
      }),
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return AmplifyColors.fontTertiary;
        }
        return AmplifyColors.fontPrimaryDark;
      }),
      padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
      shadowColor: MaterialStateProperty.all(AmplifyColors.shadowPrimary),
    ),
  );

  static final textButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return AmplifyColors.fontDisabled;
        }
        if (states.contains(MaterialState.hovered)) {
          return AmplifyColors.fontHover;
        }
        if (states.contains(MaterialState.focused)) {
          return AmplifyColors.fontFocus;
        }
        return AmplifyColors.fontInteractive;
      }),
    ),
  );

  static final textButtonThemeDark = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.disabled)) {
          return AmplifyColors.fontDisabled;
        }
        if (states.contains(MaterialState.hovered)) {
          return AmplifyColors.fontHoverDark;
        }
        if (states.contains(MaterialState.focused)) {
          return AmplifyColors.fontFocusDark;
        }
        return AmplifyColors.fontInteractiveDark;
      }),
    ),
  );

  static const outlinedButtonTheme = OutlinedButtonThemeData(
    style: ButtonStyle(
      splashFactory: NoSplash.splashFactory,
    ),
  );

  static const outlinedButtonThemeDark = OutlinedButtonThemeData(
    style: ButtonStyle(
      splashFactory: NoSplash.splashFactory,
    ),
  );

  static const primaryProgressIndicatorTheme = ProgressIndicatorThemeData(
    color: AmplifyColors.brandPrimary80,
    circularTrackColor: AmplifyColors.neutral20,
  );

  static const primaryProgressIndicatorThemeDark = ProgressIndicatorThemeData(
    color: AmplifyColors.brandPrimary80,
    circularTrackColor: AmplifyColors.neutral20,
  );

  static const secondaryProgressIndicatorTheme = ProgressIndicatorThemeData(
    color: AmplifyColors.brandSecondary80,
    circularTrackColor: AmplifyColors.neutral20,
  );

  static final inputDecorationTheme = InputDecorationTheme(
    labelStyle: AmplifyTextTheme.bodyLarge.copyWith(
      color: AmplifyColors.neutral80,
      fontWeight: FontWeight.w500,
    ),
    focusedBorder: const OutlineInputBorder(),
    border: const OutlineInputBorder(),
    isDense: true,
  );

  static final inputDecorationThemeDark = InputDecorationTheme(
    labelStyle: AmplifyTextTheme.bodyLarge.copyWith(
      color: AmplifyColors.neutral40,
      fontWeight: FontWeight.w500,
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: AmplifyColors.white),
    ),
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: AmplifyColors.neutral90),
    ),
    isDense: true,
  );

  static final tabBarTheme = TabBarTheme(
    labelColor: AmplifyColors.fontInteractive,
    labelStyle: AmplifyTextTheme.button$.copyWith(
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelColor: AmplifyColors.fontSecondary,
    unselectedLabelStyle: AmplifyTextTheme.button$.copyWith(
      fontWeight: FontWeight.bold,
    ),
    labelPadding: EdgeInsets.zero,
  );

  static final tabBarThemeDark = TabBarTheme(
    labelColor: AmplifyColors.fontInteractiveDark,
    labelStyle: AmplifyTextTheme.button$.copyWith(
      fontWeight: FontWeight.bold,
    ),
    unselectedLabelColor: AmplifyColors.fontSecondaryDark,
    unselectedLabelStyle: AmplifyTextTheme.button$.copyWith(
      fontWeight: FontWeight.bold,
    ),
    labelPadding: EdgeInsets.zero,
  );

  static final radioTheme = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return AmplifyColors.neutral20;
      }
      return AmplifyColors.brandPrimary;
    }),
  );

  static final radioThemeDark = RadioThemeData(
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return AmplifyColors.neutral20;
      }
      return AmplifyColors.brandPrimaryDark;
    }),
    overlayColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.disabled)) {
        return AmplifyColors.neutral20;
      }
      return AmplifyColors.neutral90;
    }),
  );

  static const appBarTheme = AppBarTheme(
    elevation: 0,
    color: AmplifyColors.backgroundPrimary,
  );

  static const appBarThemeDark = AppBarTheme(
    elevation: 0,
    color: AmplifyColors.black,
  );

  static const iconTheme = IconThemeData(color: AmplifyColors.black);

  static const iconThemeDark = IconThemeData(color: AmplifyColors.white);

  static late final ThemeData light = ThemeData.from(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: AmplifyColors.brandPrimary,
      primaryColorDark: AmplifyColors.brandSecondary,
      accentColor: AmplifyColors.teal,
      backgroundColor: AmplifyColors.backgroundPrimary,
      errorColor: AmplifyColors.red,
      cardColor: AmplifyColors.backgroundPrimary,
    ),
    textTheme: const AmplifyTextTheme(),
  ).copyWith(
    shadowColor: AmplifyColors.shadowPrimary,
    elevatedButtonTheme: elevatedButtonTheme,
    progressIndicatorTheme: primaryProgressIndicatorTheme,
    textButtonTheme: textButtonTheme,
    inputDecorationTheme: inputDecorationTheme,
    radioTheme: radioTheme,
    appBarTheme: appBarTheme,
    tabBarTheme: tabBarTheme,
    iconTheme: iconTheme,
    outlinedButtonTheme: outlinedButtonTheme,
  );

  static late final ThemeData dark = ThemeData.from(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: AmplifyColors.brandPrimary,
      primaryColorDark: AmplifyColors.brandPrimaryDark,
      accentColor: AmplifyColors.teal,
      backgroundColor: AmplifyColors.backgroundPrimaryDark,
      errorColor: AmplifyColors.red,
      cardColor: AmplifyColors.black,
      brightness: Brightness.dark,
    ),
    textTheme: const AmplifyTextTheme().apply(
      bodyColor: AmplifyColors.white,
      displayColor: AmplifyColors.white,
      decorationColor: AmplifyColors.white,
    ),
  ).copyWith(
    shadowColor: AmplifyColors.shadowPrimary,
    elevatedButtonTheme: elevatedButtonThemeDark,
    progressIndicatorTheme: primaryProgressIndicatorTheme,
    textButtonTheme: textButtonThemeDark,
    inputDecorationTheme: inputDecorationThemeDark,
    radioTheme: radioThemeDark,
    appBarTheme: appBarThemeDark,
    tabBarTheme: tabBarThemeDark,
    iconTheme: iconThemeDark,
    outlinedButtonTheme: outlinedButtonThemeDark,
  );
}

class _AmplifyThemeWrapper {
  const _AmplifyThemeWrapper({
    required this.context,
    required this.useAmplifyTheme,
  });

  final BuildContext context;
  final bool useAmplifyTheme;

  ElevatedButtonThemeData get elevatedButtonThemeData {
    if (!useAmplifyTheme) {
      return ElevatedButtonTheme.of(context);
    }
    return isDark
        ? AmplifyTheme.elevatedButtonThemeDark
        : AmplifyTheme.elevatedButtonTheme;
  }

  TextButtonThemeData get textButtonTheme {
    if (!useAmplifyTheme) {
      return TextButtonTheme.of(context);
    }
    return AmplifyTheme.textButtonTheme;
  }

  ProgressIndicatorThemeData progressIndicatorTheme({
    bool primary = true,
  }) {
    if (!useAmplifyTheme) {
      return ProgressIndicatorTheme.of(context);
    }
    return primary
        ? AmplifyTheme.primaryProgressIndicatorTheme
        : AmplifyTheme.secondaryProgressIndicatorTheme;
  }

  InputDecorationTheme get inputDecorationTheme {
    if (!useAmplifyTheme) {
      return Theme.of(context).inputDecorationTheme;
    }
    return AmplifyTheme.inputDecorationTheme;
  }

  TabBarTheme get tabBarTheme {
    if (!useAmplifyTheme) {
      return TabBarTheme.of(context);
    }
    return AmplifyTheme.tabBarTheme;
  }

  RadioThemeData get radioTheme {
    if (!useAmplifyTheme) {
      return RadioTheme.of(context);
    }
    return AmplifyTheme.radioTheme;
  }

  AppBarTheme get appBarTheme {
    if (!useAmplifyTheme) {
      return AppBarTheme.of(context);
    }
    return AmplifyTheme.appBarTheme;
  }

  ThemeData get data {
    if (!useAmplifyTheme) {
      return Theme.of(context);
    }
    return AmplifyTheme.light;
  }

  Color get primaryColor {
    if (!useAmplifyTheme) {
      return Theme.of(context).primaryColor;
    }
    return isDark ? AmplifyColors.brandPrimaryDark : AmplifyColors.brandPrimary;
  }

  Color get tabLabelColor {
    if (!useAmplifyTheme) {
      final labelColor = Theme.of(context).tabBarTheme.labelColor;
      final textColor = Theme.of(context).textTheme.bodyText1?.color;
      final fallbackColor = isDark ? Colors.white : Colors.black;
      return labelColor ?? textColor ?? fallbackColor;
    }
    return fontInteractive!;
  }

  Color get tabIndicatorColor {
    if (!useAmplifyTheme) {
      return Theme.of(context).indicatorColor;
    }
    return fontInteractive!;
  }

  Color get fontPrimary {
    if (!useAmplifyTheme) {
      return Theme.of(context).textTheme.button?.color ??
          (isDark ? Colors.white : Colors.black);
    }
    return isDark ? AmplifyColors.fontInverse : AmplifyColors.fontPrimary;
  }

  Color? get fontSecondary =>
      useAmplifyTheme ? AmplifyColors.fontSecondary : null;

  Color? get fontTertiary =>
      useAmplifyTheme ? AmplifyColors.fontTertiary : null;

  Color get fontDisabled {
    if (!useAmplifyTheme) {
      return Theme.of(context).disabledColor;
    }
    return AmplifyColors.fontDisabled;
  }

  Color? get fontInverse => useAmplifyTheme ? AmplifyColors.fontInverse : null;

  Color? get fontInteractive {
    if (!useAmplifyTheme) {
      return null;
    }
    return isDark
        ? AmplifyColors.fontInteractiveDark
        : AmplifyColors.fontInteractive;
  }

  Color? get fontHover {
    if (!useAmplifyTheme) {
      return null;
    }
    return isDark ? AmplifyColors.fontHoverDark : AmplifyColors.fontHover;
  }

  Color? get fontFocus {
    if (!useAmplifyTheme) {
      return null;
    }
    return isDark ? AmplifyColors.fontFocusDark : AmplifyColors.fontFocus;
  }

  Color? get fontActive => useAmplifyTheme ? AmplifyColors.fontActive : null;

  Color? get fontInfo => useAmplifyTheme ? AmplifyColors.fontInfo : null;

  Color? get fontWarning => useAmplifyTheme ? AmplifyColors.fontWarning : null;

  Color? get fontError => useAmplifyTheme ? AmplifyColors.fontError : null;

  Color? get fontSuccess => useAmplifyTheme ? AmplifyColors.fontSuccess : null;

  Color? get backgroundPrimary {
    if (!useAmplifyTheme) {
      return null;
    }
    return isDark
        ? AmplifyColors.backgroundPrimaryDark
        : AmplifyColors.backgroundPrimary;
  }

  Color? get backgroundSecondary =>
      useAmplifyTheme ? AmplifyColors.backgroundSecondary : null;

  Color? get backgroundTertiary =>
      useAmplifyTheme ? AmplifyColors.backgroundTertiary : null;

  Color? get backgroundDisabled {
    if (!useAmplifyTheme) {
      return null;
    }
    return isDark
        ? AmplifyColors.backgroundDisabledDark
        : AmplifyColors.backgroundDisabled;
  }

  Color? get backgroundInfo =>
      useAmplifyTheme ? AmplifyColors.backgroundInfo : null;

  Color? get backgroundInfoDark =>
      useAmplifyTheme ? AmplifyColors.backgroundInfoDark : null;

  Color? get backgroundWarning =>
      useAmplifyTheme ? AmplifyColors.backgroundWarning : null;

  Color? get backgroundWarningDark =>
      useAmplifyTheme ? AmplifyColors.backgroundWarningDark : null;

  Color? get backgroundError =>
      useAmplifyTheme ? AmplifyColors.backgroundError : null;

  Color? get backgroundErrorDark =>
      useAmplifyTheme ? AmplifyColors.backgroundErrorDark : null;

  Color? get backgroundSuccess =>
      useAmplifyTheme ? AmplifyColors.backgroundSuccess : null;

  Color? get backgroundSuccessDark =>
      useAmplifyTheme ? AmplifyColors.backgroundSuccessDark : null;

  Color? get borderPrimary =>
      useAmplifyTheme ? AmplifyColors.borderPrimary : null;

  Color? get borderSecondary {
    if (!useAmplifyTheme) {
      return null;
    }
    return isDark
        ? AmplifyColors.borderSecondaryDark
        : AmplifyColors.borderSecondary;
  }

  Color? get borderTertiary =>
      useAmplifyTheme ? AmplifyColors.borderTertiary : null;

  Color? get borderDisabled {
    if (!useAmplifyTheme) {
      return null;
    }
    return AmplifyColors.borderDisabled;
  }

  Color? get borderFocus => useAmplifyTheme ? AmplifyColors.borderFocus : null;

  Color? get borderError => useAmplifyTheme ? AmplifyColors.borderError : null;

  Color get shadowPrimary => useAmplifyTheme
      ? AmplifyColors.shadowPrimary
      : Theme.of(context).shadowColor;

  Color? get shadowSecondary =>
      useAmplifyTheme ? AmplifyColors.shadowSecondary : null;

  Color? get shadowTertiary =>
      useAmplifyTheme ? AmplifyColors.shadowTertiary : null;

  Color? get white => useAmplifyTheme ? AmplifyColors.white : Colors.white;

  Color? get black => useAmplifyTheme ? AmplifyColors.black : Colors.black;

  Color? get transparent =>
      useAmplifyTheme ? AmplifyColors.transparent : Colors.transparent;

  bool get isDark => Theme.of(context).brightness == Brightness.dark;
}
