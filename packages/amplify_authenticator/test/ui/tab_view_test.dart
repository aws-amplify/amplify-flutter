import 'dart:convert';

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/l10n/message_resolver.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/widgets/form.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'configs/default_config.dart';
import 'configs/email_or_phone_config.dart';
import 'utils.dart';

const configs = {
  'default': defaultConfig,
  'email_or_phone': emailOrPhoneConfig,
};

void main() {
  const keyTabView = Key('tabView');
  final tabViewFinder = find.byKey(keyTabView);

  final binding = TestWidgetsFlutterBinding.ensureInitialized()
      as TestWidgetsFlutterBinding;

  Widget buildTabView({
    ThemeData? lightTheme,
    ThemeData? darkTheme,
    bool useAmplifyTheme = false,
    String? amplifyConfig,
  }) {
    return MaterialApp(
      theme: useAmplifyTheme ? AmplifyTheme.light : lightTheme,
      darkTheme: useAmplifyTheme ? AmplifyTheme.dark : darkTheme,
      themeMode: ThemeMode.system,
      localizationsDelegates: AuthenticatorLocalizations.localizationsDelegates,
      home: Scaffold(
        body: InheritedConfig(
          amplifyConfig: amplifyConfig == null
              ? null
              : AmplifyConfig.fromJson(jsonDecode(amplifyConfig)),
          useAmplifyTheme: useAmplifyTheme,
          child: InheritedAuthViewModel(
            viewModel: AuthViewModel(MockBloc()),
            child: InheritedStrings(
              resolver: const AuthStringResolver(),
              child: InheritedForms(
                signInForm: SignInForm(),
                signUpForm: SignUpForm(),
                confirmSignUpForm: ConfirmSignUpForm(),
                confirmSignInMFAForm: ConfirmSignInMFAForm(),
                confirmSignInNewPasswordForm: ConfirmSignInNewPasswordForm(),
                resetPasswordForm: ResetPasswordForm(),
                confirmResetPasswordForm: const ConfirmResetPasswordForm(),
                verifyUserForm: VerifyUserForm(),
                confirmVerifyUserForm: ConfirmVerifyUserForm(),
                child: const RepaintBoundary(
                  child: AuthenticatorTabView(
                    key: keyTabView,
                    tabs: [AuthScreen.signin, AuthScreen.signup],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // The default Material theme.
  Widget defaultMaterial(String config) => buildTabView(
        lightTheme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        useAmplifyTheme: false,
        amplifyConfig: config,
      );

  // The default high-contrast theme.
  Widget highContrast(String config) => buildTabView(
        lightTheme: ThemeData.from(
          colorScheme: const ColorScheme.highContrastLight(),
        ),
        darkTheme: ThemeData.from(
          colorScheme: const ColorScheme.highContrastDark(),
        ),
        useAmplifyTheme: false,
        amplifyConfig: config,
      );

  // A custom Material swatch.
  Widget customSwatch(String config) => buildTabView(
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
        useAmplifyTheme: false,
        amplifyConfig: config,
      );

  // A manual override.
  Widget override(String config) => buildTabView(
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
        useAmplifyTheme: false,
        amplifyConfig: config,
      );

  // The Amplify theme.
  Widget amplify(String config) => buildTabView(
        useAmplifyTheme: true,
        amplifyConfig: config,
      );

  group('AuthenticatorTabView', () {
    setUp(() {
      binding.window.clearPlatformBrightnessTestValue();
    });

    for (var config in configs.entries) {
      String configName = config.key;
      String amplifyconfig = config.value;
      group('$configName config', () {
        group('Light Mode', () {
          setUp(() {
            binding.window.platformBrightnessTestValue = Brightness.light;
          });

          // Tests the default Material theme.
          testWidgets('(default)', (WidgetTester tester) async {
            await tester.pumpWidget(defaultMaterial(amplifyconfig));
            await tester.pumpAndSettle();

            await expectGoldenMatches(
              tabViewFinder,
              'tab_view_${configName}_config_light_default.png',
            );
          });

          // Tests the default high contrast theme.
          testWidgets('(high contrast)', (WidgetTester tester) async {
            await tester.pumpWidget(highContrast(amplifyconfig));
            await tester.pumpAndSettle();

            await expectGoldenMatches(
              tabViewFinder,
              'tab_view_${configName}_config_light_high_contrast.png',
            );
          });

          // Tests a custom Material swatch.
          testWidgets('(swatch)', (WidgetTester tester) async {
            await tester.pumpWidget(customSwatch(amplifyconfig));
            await tester.pumpAndSettle();

            await expectGoldenMatches(
              tabViewFinder,
              'tab_view_${configName}_config_light_swatch.png',
            );
          });

          // Tests a manual override of the tab color.
          testWidgets('(override)', (WidgetTester tester) async {
            await tester.pumpWidget(override(amplifyconfig));
            await tester.pumpAndSettle();

            await expectGoldenMatches(
              tabViewFinder,
              'tab_view_${configName}_config_light_override.png',
            );
          });

          // Tests the Amplify theme.
          testWidgets('(amplify)', (WidgetTester tester) async {
            await tester.pumpWidget(amplify(amplifyconfig));
            await tester.pumpAndSettle();

            await expectGoldenMatches(
              tabViewFinder,
              'tab_view_${configName}_config_light_amplify.png',
            );
          });
        });

        group('Dark Mode', () {
          setUp(() {
            binding.window.platformBrightnessTestValue = Brightness.dark;
          });

          // Tests the default Material theme (dark mode).
          testWidgets('(default)', (WidgetTester tester) async {
            await tester.pumpWidget(defaultMaterial(amplifyconfig));
            await tester.pumpAndSettle();

            await expectGoldenMatches(
              tabViewFinder,
              'tab_view_${configName}_config_dark_default.png',
            );
          });

          // Tests the default high contrast theme (dark mode).
          testWidgets('(high contrast)', (WidgetTester tester) async {
            await tester.pumpWidget(highContrast(amplifyconfig));
            await tester.pumpAndSettle();

            await expectGoldenMatches(
              tabViewFinder,
              'tab_view_${configName}_config_dark_high_contrast.png',
            );
          });

          // Tests a custom Material swatch (dark mode).
          testWidgets('(swatch)', (WidgetTester tester) async {
            await tester.pumpWidget(customSwatch(amplifyconfig));
            await tester.pumpAndSettle();

            await expectGoldenMatches(
              tabViewFinder,
              'tab_view_${configName}_config_dark_swatch.png',
            );
          });

          // Tests a manual override of the tab color (dark mode).
          testWidgets('(override)', (WidgetTester tester) async {
            await tester.pumpWidget(override(amplifyconfig));
            await tester.pumpAndSettle();

            await expectGoldenMatches(
              tabViewFinder,
              'tab_view_${configName}_config_dark_override.png',
            );
          });

          // Tests the Amplify theme (dark mode).
          testWidgets('(amplify)', (WidgetTester tester) async {
            await tester.pumpWidget(amplify(amplifyconfig));
            await tester.pumpAndSettle();

            await expectGoldenMatches(
              tabViewFinder,
              'tab_view_${configName}_config_dark_amplify.png',
            );
          });
        });
      });
    }
  });
}

class MockAuthViewModel extends Mock implements AuthViewModel {}

class MockBloc implements StateMachineBloc {
  @override
  void add(AuthEvent event) {}

  @override
  AuthState get currentState => AuthFlow.signin;

  @override
  Future<void> dispose() async {}

  @override
  Stream<AuthenticatorException> get exceptions => const Stream.empty();

  @override
  Stream<MessageResolverKey> get infoMessages => const Stream.empty();

  @override
  bool get preferPrivateSession => false;

  @override
  Stream<AuthState> get stream => Stream.value(AuthFlow.signin);

  @override
  Future<void> cancelHubSubscription() async {}

  @override
  Future<void> setUpHubSubscription() async {}
}
