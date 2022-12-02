// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'authenticator_app.dart';
import 'configs/email_config.dart';
import 'configs/email_or_phone_config.dart';
import 'configs/phone_config.dart';
import 'configs/social_providers_config.dart';
import 'configs/username_with_attributes.dart';
import 'utils.dart';

enum TestConfig {
  email(emailConfig),
  emailOrPhone(emailOrPhoneConfig),
  socialProvider(socialProviderConfig),
  phoneNumber(phoneNumberConfig),
  usernameWithAttributes(usernameWithAttributesConfig);

  final String config;
  const TestConfig(this.config);
}

enum ScreenGeometry {
  // Geometry based off of an iPhone SE 2022
  mini(size: Size(750, 1334), pixelRatio: 2),

  // Geometry based off of an iPhone 14
  mobile(size: Size(1170, 2532), pixelRatio: 3),

  // Geometry based off of an iPad 10
  tablet(size: Size(1620, 2160), pixelRatio: 2),

  // Geometry based off of a Macbook Air/Pro 13" (2020)
  laptop(size: Size(2560, 1600), pixelRatio: 2),

  // Geometry based off of an ultra HD monitor
  desktop(size: Size(2560, 1440), pixelRatio: 1);

  final Size size;

  final double pixelRatio;

  const ScreenGeometry({required this.size, required this.pixelRatio});
}

enum TestTheme {
  defaultMaterial,
  highContrast,
  customSwatch,
  custom,
}

/// Adds [lightTheme] and [darkTheme] getters, which cannot be properties since
/// that are not constants.
extension TestThemeX on TestTheme {
  ThemeData get lightTheme {
    switch (this) {
      case TestTheme.defaultMaterial:
        return ThemeData.light();
      case TestTheme.highContrast:
        return ThemeData.from(
          colorScheme: const ColorScheme.highContrastLight(),
        );
      case TestTheme.customSwatch:
        return ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.red,
            backgroundColor: Colors.white,
          ),
        ).copyWith(
          indicatorColor: Colors.red,
        );
      case TestTheme.custom:
        return ThemeData.light().copyWith(
          tabBarTheme: const TabBarTheme(
            labelColor: Colors.amber,
          ),
          indicatorColor: Colors.pink,
        );
    }
  }

  ThemeData get darkTheme {
    switch (this) {
      case TestTheme.defaultMaterial:
        return ThemeData.dark();
      case TestTheme.highContrast:
        return ThemeData.from(
          colorScheme: const ColorScheme.highContrastDark(),
        );
      case TestTheme.customSwatch:
        return ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.red,
            backgroundColor: Colors.black,
            brightness: Brightness.dark,
          ),
        );
      case TestTheme.custom:
        return ThemeData.dark().copyWith(
          tabBarTheme: const TabBarTheme(
            labelColor: Colors.amber,
          ),
          indicatorColor: Colors.pink,
        );
    }
  }
}

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    // flutter's default test font does not accurately reflect font size,
    // which leads to pixel over flows.
    await loadAppFonts();

    // default to mobile layout
    binding.window.devicePixelRatioTestValue = ScreenGeometry.mobile.pixelRatio;
    binding.window.physicalSizeTestValue = ScreenGeometry.mobile.size;
  });

  group('UI Tests', () {
    setUp(() {
      binding.window.platformDispatcher.clearPlatformBrightnessTestValue();
    });

    // Tests the layout for each config/step/geometry.
    group('layout', () {
      testMatrix3(
        TestConfig.values,
        [
          AuthenticatorStep.signIn,
          AuthenticatorStep.signUp,
          AuthenticatorStep.resetPassword,
        ],
        ScreenGeometry.values,
        (
          TestConfig testConfig,
          AuthenticatorStep step,
          ScreenGeometry geometry,
        ) {
          final configName = '${testConfig.name}Config';
          final stepName = '${step.name}Step';
          final geometryName = '${geometry.name}Geometry';
          final testName = 'layout_${configName}_${stepName}_$geometryName';

          setUp(() {
            binding.window.devicePixelRatioTestValue = geometry.pixelRatio;
            binding.window.physicalSizeTestValue = geometry.size;
          });

          testWidgets('matches snapshot', (WidgetTester tester) async {
            await tester.pumpWidget(
              AuthenticatorApp(
                initialStep: step,
                config: testConfig.config,
              ),
            );
            await tester.pumpAndSettle();
            await expectGoldenMatches(authenticatorFinder, '$testName.png');
          });
        },
      );
    });

    // Tests the theme/brightness for a limited set of configs/geometries.
    group('theme', () {
      testMatrix5(
        [TestConfig.email, TestConfig.socialProvider, TestConfig.emailOrPhone],
        [AuthenticatorStep.signIn, AuthenticatorStep.signUp],
        TestTheme.values,
        Brightness.values,
        [ScreenGeometry.mobile, ScreenGeometry.laptop],
        (
          TestConfig testConfig,
          AuthenticatorStep step,
          TestTheme theme,
          Brightness brightness,
          ScreenGeometry geometry,
        ) {
          final configName = '${testConfig.name}Config';
          final themeName = '${theme.name}Theme';
          final brightnessName = '${brightness.name}Mode';
          final stepName = '${step.name}Step';
          final geometryName = '${geometry.name}Geometry';
          final testName =
              'theme_${configName}_${stepName}_${themeName}_${brightnessName}_$geometryName';

          setUp(() {
            binding.window.platformDispatcher.platformBrightnessTestValue =
                brightness;
            binding.window.devicePixelRatioTestValue = geometry.pixelRatio;
            binding.window.physicalSizeTestValue = geometry.size;
          });

          testWidgets('matches snapshot', (WidgetTester tester) async {
            await tester.pumpWidget(
              AuthenticatorApp(
                initialStep: step,
                lightTheme: theme.lightTheme,
                darkTheme: theme.darkTheme,
                config: testConfig.config,
              ),
            );
            await tester.pumpAndSettle();
            await expectGoldenMatches(authenticatorFinder, '$testName.png');
          });
        },
      );
    });
  });
}
