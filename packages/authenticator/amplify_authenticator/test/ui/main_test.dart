// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator_test/amplify_authenticator_test.dart';
import 'package:amplify_authenticator_test/src/amplify_outputs/email_config.dart';
import 'package:amplify_authenticator_test/src/amplify_outputs/email_or_phone_config.dart';
import 'package:amplify_authenticator_test/src/amplify_outputs/phone_config.dart';
import 'package:amplify_authenticator_test/src/amplify_outputs/sms_or_totp_config.dart';
import 'package:amplify_authenticator_test/src/amplify_outputs/social_providers_config.dart';
import 'package:amplify_authenticator_test/src/amplify_outputs/username_with_attributes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'utils.dart';

enum TestConfig {
  email(emailConfig),
  emailOrPhone(emailOrPhoneConfig),
  socialProvider(socialProviderConfig),
  phoneNumber(phoneNumberConfig),
  usernameWithAttributes(usernameWithAttributesConfig),
  smsOrTotp(smsOrTotpConfig);

  const TestConfig(this.config);

  final String config;
}

enum ScreenGeometry {
  /// Geometry for an abitrarily constrained screen width, e.g. when
  /// using a `ConstrainedBox` widget.
  constrainedWidth(size: Size(200, 1000), pixelRatio: 1),

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

  const ScreenGeometry({required this.size, required this.pixelRatio});

  final Size size;

  final double pixelRatio;
}

enum TestTheme {
  material2(),
  defaultMaterial(),
  highContrast(),
  customSwatch(),
  custom();

  ThemeData get lightTheme {
    switch (this) {
      case TestTheme.material2:
        return ThemeData.light(useMaterial3: false);
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
      case TestTheme.material2:
        return ThemeData.dark(useMaterial3: false);
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

/// This test file is used to generate golden images for the UI tests.
/// To generate golden images, run the following command:
///   $flutter test --update-goldens
///
/// To run the tests, run the following command from the root of the package:
///   $flutter test
///
/// Tests are arranged in maxtrixes to test all combinations of the provided arguments
/// For example the 'layout' group tests are run for each combination of:
///  - [TestConfig] : The configuration of the authenticator
///  - [AuthenticatorStep] : The step the authenticator is on
///  - [ScreenGeometry] : The geometry of the screen
void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() async {
    // flutter's default test font does not accurately reflect font size,
    // which leads to pixel over flows.
    await loadAppFonts();
  });

  group(
    'UI Tests',
    () {
      setUp(binding.platformDispatcher.clearPlatformBrightnessTestValue);

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
              // TODO(Jordan-Nelson): Migrate to WidgetTester
              // ignore: deprecated_member_use
              binding.window.devicePixelRatioTestValue = geometry.pixelRatio;
              // ignore: deprecated_member_use
              binding.window.physicalSizeTestValue = geometry.size;
            });

            testWidgets('matches snapshot', (WidgetTester tester) async {
              await tester.pumpWidget(
                MockAuthenticatorApp(
                  initialStep: step,
                  config: testConfig.config,
                  lightTheme: TestTheme.defaultMaterial.lightTheme,
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
          [
            TestConfig.email,
            TestConfig.socialProvider,
            TestConfig.emailOrPhone,
          ],
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
              binding.platformDispatcher.platformBrightnessTestValue =
                  brightness;

              // TODO(Jordan-Nelson): Migrate to WidgetTester
              // ignore: deprecated_member_use
              binding.window.devicePixelRatioTestValue = geometry.pixelRatio;
              // ignore: deprecated_member_use
              binding.window.physicalSizeTestValue = geometry.size;
            });

            testWidgets('matches snapshot', (WidgetTester tester) async {
              await tester.pumpWidget(
                MockAuthenticatorApp(
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

      // Tests remaining AuthenticatorSteps on email config, with default theme, dark & light mode, mobile & desktop.
      group('reference', () {
        /// These steps have been tested in other groups.
        const skipSteps = [
          AuthenticatorStep.signIn,
          AuthenticatorStep.signUp,
          AuthenticatorStep.resetPassword,
          AuthenticatorStep.loading,
        ];
        testMatrix5(
          [TestConfig.email],
          [...AuthenticatorStep.values]
            ..removeWhere((x) => skipSteps.contains(x)),
          [TestTheme.defaultMaterial],
          Brightness.values,
          [ScreenGeometry.mobile, ScreenGeometry.desktop],
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
              binding.platformDispatcher.platformBrightnessTestValue =
                  brightness;
            });

            testWidgets('matches snapshot', (WidgetTester tester) async {
              tester.view.devicePixelRatio = geometry.pixelRatio;
              tester.view.physicalSize = geometry.size;
              await tester.pumpWidget(
                MockAuthenticatorApp(
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
    },
    // Tests are not expected to pass on Flutter 3.19 (Dart 3.3.x)
    // Snapshots were generated with flutter 3.22 which contains
    // UI differences from 3.19.
    skip: Platform.version.startsWith('3.3'),
  );
}
