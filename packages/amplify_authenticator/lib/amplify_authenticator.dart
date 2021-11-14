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

library amplify_authenticator;

import 'dart:async';

import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/enums/enums.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/l10n/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/l10n/message_resolver.dart';
import 'package:amplify_authenticator/src/models/authenticator_exception.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator/src/screens/loading_screen.dart';
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/theme/amplify_theme.dart';
import 'package:amplify_authenticator/src/widgets/authenticator_banner.dart';
import 'package:amplify_authenticator/src/widgets/form.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_flutter/src/config/amplify_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

export 'package:amplify_auth_cognito/amplify_auth_cognito.dart'
    show AuthProvider;
export 'package:amplify_flutter/src/config/auth/password_policy_characters.dart';
export 'package:amplify_flutter/src/config/auth/password_protection_settings.dart';

export 'src/enums/enums.dart';
export 'src/l10n/auth_strings_resolver.dart';
export 'src/models/authenticator_exception.dart';
export 'src/models/username_input.dart' show UsernameType, UsernameInput;
export 'src/widgets/button.dart' show SignOutButton;
export 'src/widgets/form.dart'
    show
        SignInForm,
        SignUpForm,
        ConfirmSignInMFAForm,
        ConfirmSignInNewPasswordForm,
        ConfirmSignUpForm,
        ConfirmVerifyUserForm;
export 'src/widgets/form_field.dart'
    show
        SignInFormField,
        SignUpFormField,
        ConfirmSignInFormField,
        ConfirmSignUpFormField;

/// {@template authenticator.authenticator}
/// # Amplify Authenticator
///
/// A widget that allows customers to authenticate their apps.
///
/// The Authenticator widget requires one argument, a child widget,
/// to define the initial authentication flow.
///
/// This authenticator accepts the following custom forms, sign in, sign up and confirm sign in.
///
/// Note that working with custom forms is optional. Thus, if no additional arguments
/// are passed, the authenticator will defined the following default forms with their
/// respective form fields:
///
/// 1. Sign in:
///     - Username (a traditional username, email or phone number)
///     - Password
/// 2. Sign Up:
///     - Username
///     - Password
///     - Email
///     - Phone Number
/// 3. Confirm Sign in
///     - define
///     - define
///     - define
/// {@endtemplate}
class Authenticator extends StatefulWidget {
  /// {@macro authenticator.authenticator}
  Authenticator({
    Key? key,
    SignInForm? signInForm,
    SignUpForm? signUpForm,
    ConfirmSignInMFAForm? confirmSignInMFAForm,
    this.stringResolver = const AuthStringResolver(),
    required this.child,
    this.useAmplifyTheme = false,
  }) : super(key: key) {
    this.signInForm = signInForm ?? SignInForm();
    this.signUpForm = signUpForm ?? SignUpForm();
    this.confirmSignInMFAForm = confirmSignInMFAForm ?? ConfirmSignInMFAForm();
  }

  /// Whether to use Amplify colors and styles in the Authenticator,
  /// instead of those defined by your app's [Theme].
  ///
  /// Defaults to `true`.
  final bool useAmplifyTheme;

  /// The form to display when confirming a sign in with MFA.
  late final ConfirmSignInMFAForm confirmSignInMFAForm;

  /// This form will support the following form field types:
  ///    * username
  ///    * password
  ///    * email
  ///    * phone_number
  ///
  /// ### Example
  /// ```dart
  ///     SignInForm( formFields:
  ///                   FormFields(children: [
  ///                     SignInFormField(
  ///                       type: "username" ,
  ///                       title: "Custom Username Form Field",
  ///                       hintText: "Custom Hint Text",
  ///              ),
  ///           ])
  ///
  /// ```
  late final SignInForm signInForm;

  /// This form will support the following form field types:
  /// * username
  /// * password
  /// * birthdate
  /// * email
  /// * family_name
  /// * gender
  /// * given_name
  /// * locate
  /// * middle_name
  /// * name
  /// * nickname
  /// * phone_number
  /// * picture
  /// * preferred_username
  /// * profile
  /// * zoneinfo
  /// * updated_at
  /// * website
  /// * custom
  ///
  /// ### Example
  /// ```dart
  ///     SignInForm( formFields:
  ///                   FormFields(children: [
  ///                     SignUpFormField(
  ///                       type: "username" ,
  ///                       title: "Custom username form field",
  ///                       hintText: "Custom hint text",
  ///                       ),
  ///                     SignUpFormField(
  ///                       type: "password" ,
  ///                       title: "Custom password form field",
  ///                       hintText: "Custom hint text",
  ///                       ),
  ///                     SignUpFormField(
  ///                       type: "email" ,
  ///                       title: "Custom email form field",
  ///                       hintText: "Custom hint text",
  ///                       ),
  ///                     SignUpFormField(
  ///                       type: "website" ,
  ///                       title: "Custom website form field",
  ///                       hintText: "Custom hint text",
  ///                       ),
  ///                     ])
  ///
  /// ```
  late final SignUpForm signUpForm;

  final AuthStringResolver stringResolver;

  /// This widget will be displayed after a user has signed in.
  final Widget child;

  @override
  _AuthenticatorState createState() => _AuthenticatorState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AuthStringResolver>(
        'stringResolver', stringResolver));
    properties
        .add(DiagnosticsProperty<bool>('useAmplifyTheme', useAmplifyTheme));
  }
}

class _AuthenticatorState extends State<Authenticator> {
  final AuthService _authService = AmplifyAuthService();
  late final StateMachineBloc _stateMachineBloc;
  late final AuthViewModel _viewModel;
  late final StreamSubscription<AuthenticatorException> _exceptionSub;
  late final StreamSubscription<MessageResolverKey> _infoSub;
  late final StreamSubscription<AuthState> _successSub;
  AmplifyConfig? _config;
  late List<String> _missingConfigValues;
  bool _configInitialized = false;

  @override
  void initState() {
    super.initState();
    _stateMachineBloc = StateMachineBloc(authService: _authService)
      ..add(const AuthLoad());
    _viewModel = AuthViewModel(_stateMachineBloc);
    _subscribeToExceptions();
    _subscribeToInfoMessages();
    _subscribeToSuccessEvents();
    _waitForConfiguration();
  }

  void _subscribeToExceptions() {
    _exceptionSub = _stateMachineBloc.exceptions.listen((exception) {
      if (!exception.showBanner) {
        safePrint('[ERROR]: $exception');
        return;
      }
      if (mounted) {
        ScaffoldMessenger.of(context)
          ..clearMaterialBanners()
          ..showMaterialBanner(createMaterialBanner(
            context,
            useAuthenticatorTheme: widget.useAmplifyTheme,
            type: StatusType.error,
            content: Text(exception.message),
            margin: MediaQuery.of(context).viewPadding.top,
            actions: [
              IconButton(
                onPressed: () =>
                    ScaffoldMessenger.of(context).clearMaterialBanners(),
                icon: const Icon(Icons.close),
              ),
            ],
          ));
      }
    });
  }

  void _subscribeToInfoMessages() {
    final resolver = widget.stringResolver.messages;
    _infoSub = _stateMachineBloc.infoMessages.listen((key) {
      if (mounted) {
        ScaffoldMessenger.of(context)
          ..clearMaterialBanners()
          ..showMaterialBanner(createMaterialBanner(
            context,
            useAuthenticatorTheme: widget.useAmplifyTheme,
            type: StatusType.info,
            content: Text(resolver.resolve(context, key)),
            margin: MediaQuery.of(context).viewPadding.top,
            actions: [
              IconButton(
                onPressed: () =>
                    ScaffoldMessenger.of(context).clearMaterialBanners(),
                icon: const Icon(Icons.close),
              ),
            ],
          ));
      }
    });
  }

  // Clear exception and info banners on successful login.
  void _subscribeToSuccessEvents() {
    _successSub = _stateMachineBloc.stream.listen((state) {
      if (state is Authenticated) {
        ScaffoldMessenger.of(context).clearMaterialBanners();
      }
    });
  }

  @override
  void dispose() {
    _exceptionSub.cancel();
    _infoSub.cancel();
    _successSub.cancel();
    _stateMachineBloc.dispose();
    super.dispose();
  }

  Future<void> _waitForConfiguration() async {
    final authLoaded = await _stateMachineBloc.stream
        .firstWhere((el) => el is AuthLoaded) as AuthLoaded;
    var config = authLoaded.config;
    setState(() {
      _config = config;
      _configInitialized = true;
      _missingConfigValues = missingConfigValues(config);
    });
  }

  List<String> missingConfigValues(AmplifyConfig? config) {
    List<String> missingValues = [];
    var cognitoPlugin = config?.auth?.awsCognitoAuthPlugin?.auth?['Default'];
    cognitoPlugin ?? missingValues.add('auth.plugins.Auth.Default');
    cognitoPlugin?.signupAttributes?.length ??
        missingValues.add('auth.plugins.Auth.Default.signUpAttributes');
    cognitoPlugin?.passwordProtectionSettings ??
        missingValues
            .add('auth.plugins.Auth.Default.passwordProtectionSettings');
    return missingValues;
  }

  @override
  Widget build(BuildContext context) {
    if (_configInitialized && _missingConfigValues.isNotEmpty) {
      throw StateError('''Encountered problem(s) building the Authenticator.
          Your amplifyconfiguration.dart file is missing required values: ${_missingConfigValues.join('\n')}). 
          You should correct your amplifyconfiguration.dart file and restart your app.''');
    }

    return Localizations.override(
      context: context,
      delegates: AuthenticatorLocalizations.localizationsDelegates,
      child: InheritedAuthBloc(
        key: keyInheritedAuthBloc,
        authBloc: _stateMachineBloc,
        child: InheritedConfig(
          amplifyConfig: _config,
          useAmplifyTheme: widget.useAmplifyTheme,
          child: InheritedAuthViewModel(
            key: keyInheritedAuthViewModel,
            viewModel: _viewModel,
            child: InheritedStrings(
              resolver: widget.stringResolver,
              child: InheritedForms(
                confirmSignInNewPasswordForm: ConfirmSignInNewPasswordForm(),
                resetPasswordForm: ResetPasswordForm(),
                sendCodeForm: SendCodeForm(),
                signInForm: widget.signInForm,
                signUpForm: widget.signUpForm,
                confirmSignUpForm: ConfirmSignUpForm(),
                confirmSignInMFAForm: widget.confirmSignInMFAForm,
                verifyUserForm: VerifyUserForm(),
                confirmVerifyUserForm: ConfirmVerifyUserForm(),
                child: _AuthenticatorBody(child: widget.child),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _AuthenticatorBody extends StatelessWidget {
  const _AuthenticatorBody({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final stateMachineBloc = InheritedAuthBloc.of(context);
    final useAmplifyTheme = InheritedConfig.of(context).useAmplifyTheme;
    final userAppTheme = Theme.of(context);
    final isDark = MediaQuery.platformBrightnessOf(context) == Brightness.dark;
    return Theme(
      data: useAmplifyTheme
          ? (isDark ? AmplifyTheme.dark : AmplifyTheme.light)
          : userAppTheme,
      child: StreamBuilder(
        stream: stateMachineBloc.stream,
        builder: (context, snapshot) {
          final state = snapshot.data ?? const AuthLoading();

          if (state is Authenticated) {
            return Theme(data: userAppTheme, child: child);
          }

          final Widget screen;
          if (state is AuthLoading || state is AuthLoaded) {
            screen = const LoadingScreen();
          } else if (state is AuthFlow) {
            screen = AuthenticatorScreen(screen: state.screen);
          } else {
            screen = const AuthenticatorScreen.signin();
          }

          return Scaffold(
            backgroundColor: AmplifyTheme.of(context).backgroundPrimary,
            body: SizedBox.expand(
              child: screen is AuthenticatorScreen
                  ? SingleChildScrollView(
                      child: screen,
                    )
                  : screen,
            ),
          );
        },
      ),
    );
  }
}
