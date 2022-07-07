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

// TODO: Remove when min sdk is 2.17
// @dart = 2.17

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

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

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  // The default Material theme.
  Widget defaultMaterial({
    required String config,
    required AuthenticatorStep initialStep,
  }) =>
      AuthenticatorApp(
        initialStep: initialStep,
        lightTheme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        config: config,
      );

  // The default high-contrast theme.
  Widget highContrast({
    required String config,
    required AuthenticatorStep initialStep,
  }) =>
      AuthenticatorApp(
        initialStep: initialStep,
        lightTheme: ThemeData.from(
          colorScheme: const ColorScheme.highContrastLight(),
        ),
        darkTheme: ThemeData.from(
          colorScheme: const ColorScheme.highContrastDark(),
        ),
        config: config,
      );

  // A custom Material swatch.
  Widget customSwatch({
    required String config,
    required AuthenticatorStep initialStep,
  }) =>
      AuthenticatorApp(
        initialStep: initialStep,
        lightTheme: ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.red,
            backgroundColor: Colors.white,
          ),
        ).copyWith(
          indicatorColor: Colors.red,
        ),
        darkTheme: ThemeData.from(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.red,
            backgroundColor: Colors.black,
            brightness: Brightness.dark,
          ),
        ),
        config: config,
      );

  // A manual override.
  Widget override({
    required String config,
    required AuthenticatorStep initialStep,
  }) =>
      AuthenticatorApp(
        initialStep: initialStep,
        lightTheme: ThemeData.light().copyWith(
          tabBarTheme: const TabBarTheme(
            labelColor: Colors.amber,
          ),
          indicatorColor: Colors.pink,
        ),
        darkTheme: ThemeData.dark().copyWith(
          tabBarTheme: const TabBarTheme(
            labelColor: Colors.amber,
          ),
          indicatorColor: Colors.pink,
        ),
        config: config,
      );

  group('Theme', () {
    setUp(() {
      binding.window.platformDispatcher.clearPlatformBrightnessTestValue();
      binding.window.physicalSizeTestValue = const Size(2400, 2400);
    });

    final steps = [
      AuthenticatorStep.signIn,
      AuthenticatorStep.signUp,
      AuthenticatorStep.resetPassword,
    ];

    testMatrix3(TestConfig.values, steps, Brightness.values, (
      TestConfig testConfig,
      AuthenticatorStep step,
      Brightness brightness,
    ) {
      final configName = testConfig.name;
      final config = testConfig.config;
      final mode = '${brightness.name}_mode';
      final testPrefix = 'theme_${configName}_${step.name}_$mode';
      setUp(() {
        binding.window.platformDispatcher.platformBrightnessTestValue =
            brightness;
      });

      // Tests the default Material theme.
      testWidgets('(default)', (WidgetTester tester) async {
        await tester.pumpWidget(defaultMaterial(
          config: config,
          initialStep: step,
        ));
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          authenticatorFinder,
          '${testPrefix}_default.png',
        );
      });

      // Tests the default high contrast theme.
      testWidgets('(high contrast)', (WidgetTester tester) async {
        await tester.pumpWidget(highContrast(
          config: config,
          initialStep: step,
        ));
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          authenticatorFinder,
          '${testPrefix}_high_contrast.png',
        );
      });

      // Tests a custom Material swatch.
      testWidgets('(swatch)', (WidgetTester tester) async {
        await tester.pumpWidget(customSwatch(
          config: config,
          initialStep: step,
        ));
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          authenticatorFinder,
          '${testPrefix}_swatch.png',
        );
      });

      // Tests a manual override of the tab color.
      testWidgets('(override)', (WidgetTester tester) async {
        await tester.pumpWidget(override(
          config: config,
          initialStep: step,
        ));
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          authenticatorFinder,
          '${testPrefix}_override.png',
        );
      });
    });
  });
}
