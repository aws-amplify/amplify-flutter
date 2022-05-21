import 'dart:convert';

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator/src/state/auth_state.dart';
import 'package:amplify_authenticator/src/state/inherited_authenticator_state.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
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

  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  Widget buildTabView({
    ThemeData? lightTheme,
    ThemeData? darkTheme,
    String? amplifyConfig,
  }) {
    final config = amplifyConfig == null
        ? null
        : AmplifyConfig.fromJson((jsonDecode(amplifyConfig) as Map).cast());
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      localizationsDelegates: AuthenticatorLocalizations.localizationsDelegates,
      home: Scaffold(
        body: InheritedConfig(
          amplifyConfig: config,
          padding: const EdgeInsets.all(32),
          child: InheritedAuthenticatorState(
            state: AuthenticatorState(MockBloc()),
            child: InheritedStrings(
              resolver: const AuthStringResolver(),
              child: InheritedForms(
                signInForm: SignInForm(),
                signUpForm: SignUpForm(),
                confirmSignUpForm: ConfirmSignUpForm(),
                confirmSignInCustomAuthForm: ConfirmSignInCustomAuthForm(),
                confirmSignInMFAForm: ConfirmSignInMFAForm(),
                confirmSignInNewPasswordForm: ConfirmSignInNewPasswordForm(),
                resetPasswordForm: ResetPasswordForm(),
                confirmResetPasswordForm: const ConfirmResetPasswordForm(),
                verifyUserForm: VerifyUserForm(),
                confirmVerifyUserForm: ConfirmVerifyUserForm(),
                child: const RepaintBoundary(
                  child: AuthenticatorTabView(
                    key: keyTabView,
                    tabs: [AuthenticatorStep.signIn, AuthenticatorStep.signUp],
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
        amplifyConfig: config,
      );

  group('AuthenticatorTabView', () {
    setUp(() {
      binding.platformDispatcher.clearPlatformBrightnessTestValue();
      binding.window.physicalSizeTestValue = const Size(2400, 2400);
    });

    for (var config in configs.entries) {
      String configName = config.key;
      String amplifyconfig = config.value;
      group('$configName config', () {
        group('Light Mode', () {
          setUp(() {
            binding.platformDispatcher.platformBrightnessTestValue =
                Brightness.light;
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
        });

        group('Dark Mode', () {
          setUp(() {
            binding.platformDispatcher.platformBrightnessTestValue =
                Brightness.dark;
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
        });
      });
    }
  });
}

class MockAuthViewModel extends Mock implements AuthenticatorState {}

class MockBloc implements StateMachineBloc {
  @override
  void add(AuthEvent event) {}

  @override
  AuthState get currentState => UnauthenticatedState.signIn;

  @override
  Future<void> dispose() async {}

  @override
  Stream<AuthenticatorException> get exceptions => const Stream.empty();

  @override
  Stream<MessageResolverKey> get infoMessages => const Stream.empty();

  @override
  bool get preferPrivateSession => false;

  @override
  Stream<AuthState> get stream => Stream.value(UnauthenticatedState.signIn);

  @override
  AuthenticatorStep get initialStep => AuthenticatorStep.signIn;
}
