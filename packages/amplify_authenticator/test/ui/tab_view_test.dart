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
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'utils.dart';

void main() {
  const keyTabView = Key('tabView');
  final tabViewFinder = find.byKey(keyTabView);

  final binding = TestWidgetsFlutterBinding.ensureInitialized()
      as TestWidgetsFlutterBinding;

  Widget buildTabView({
    ThemeData? lightTheme,
    ThemeData? darkTheme,
    bool useAmplifyTheme = false,
  }) {
    return MaterialApp(
      theme: useAmplifyTheme ? AmplifyTheme.light : lightTheme,
      darkTheme: useAmplifyTheme ? AmplifyTheme.dark : darkTheme,
      themeMode: ThemeMode.system,
      localizationsDelegates: AuthenticatorLocalizations.localizationsDelegates,
      home: Scaffold(
        body: InheritedConfig(
          amplifyConfig: null,
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
  final defaultMaterial = buildTabView(
    lightTheme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    useAmplifyTheme: false,
  );

  // The default high-contrast theme.
  final highContrast = buildTabView(
    lightTheme: ThemeData.from(
      colorScheme: const ColorScheme.highContrastLight(),
    ),
    darkTheme: ThemeData.from(
      colorScheme: const ColorScheme.highContrastDark(),
    ),
    useAmplifyTheme: false,
  );

  // A custom Material swatch.
  final customSwatch = buildTabView(
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
  );

  // A manual override.
  final override = buildTabView(
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
  );

  // The Amplify theme.
  final amplify = buildTabView(
    useAmplifyTheme: true,
  );

  group('AuthenticatorTabView', () {
    setUp(() {
      binding.window.clearPlatformBrightnessTestValue();
    });

    group('Light Mode', () {
      setUp(() {
        binding.window.platformBrightnessTestValue = Brightness.light;
      });

      // Tests the default Material theme.
      testWidgets('(default)', (WidgetTester tester) async {
        await tester.pumpWidget(defaultMaterial);
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          tabViewFinder,
          'tab_view_light_default.png',
        );
      });

      // Tests the default high contrast theme.
      testWidgets('(high contrast)', (WidgetTester tester) async {
        await tester.pumpWidget(highContrast);
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          tabViewFinder,
          'tab_view_light_high_contrast.png',
        );
      });

      // Tests a custom Material swatch.
      testWidgets('(swatch)', (WidgetTester tester) async {
        await tester.pumpWidget(customSwatch);
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          tabViewFinder,
          'tab_view_light_swatch.png',
        );
      });

      // Tests a manual override of the tab color.
      testWidgets('(override)', (WidgetTester tester) async {
        await tester.pumpWidget(override);
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          tabViewFinder,
          'tab_view_light_override.png',
        );
      });

      // Tests the Amplify theme.
      testWidgets('(amplify)', (WidgetTester tester) async {
        await tester.pumpWidget(amplify);
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          tabViewFinder,
          'tab_view_light_amplify.png',
        );
      });
    });

    group('Dark Mode', () {
      setUp(() {
        binding.window.platformBrightnessTestValue = Brightness.dark;
      });

      // Tests the default Material theme (dark mode).
      testWidgets('(default)', (WidgetTester tester) async {
        await tester.pumpWidget(defaultMaterial);
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          tabViewFinder,
          'tab_view_dark_default.png',
        );
      });

      // Tests the default high contrast theme (dark mode).
      testWidgets('(high contrast)', (WidgetTester tester) async {
        await tester.pumpWidget(highContrast);
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          tabViewFinder,
          'tab_view_dark_high_contrast.png',
        );
      });

      // Tests a custom Material swatch (dark mode).
      testWidgets('(swatch)', (WidgetTester tester) async {
        await tester.pumpWidget(customSwatch);
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          tabViewFinder,
          'tab_view_dark_swatch.png',
        );
      });

      // Tests a manual override of the tab color (dark mode).
      testWidgets('(override)', (WidgetTester tester) async {
        await tester.pumpWidget(override);
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          tabViewFinder,
          'tab_view_dark_override.png',
        );
      });

      // Tests the Amplify theme (dark mode).
      testWidgets('(amplify)', (WidgetTester tester) async {
        await tester.pumpWidget(amplify);
        await tester.pumpAndSettle();

        await expectGoldenMatches(
          tabViewFinder,
          'tab_view_dark_amplify.png',
        );
      });
    });
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
}
