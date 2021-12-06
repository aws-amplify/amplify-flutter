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
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
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
import 'package:amplify_flutter/amplify.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

export 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
export 'package:amplify_flutter/amplify.dart';

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
/// A prebuilt sign in/sign up experience for Amplify Auth. Simply provide a
/// [child] widget which is your app's authenticated route, and the Authenticator
/// will handle the logic behind managing user sessions and guiding users through
/// the sign up and sign in process.
///
/// ```dart
/// import 'package:amplify_authenticator/amplify_authenticator.dart';
/// import 'package:flutter/material.dart';
///
/// import 'amplifyconfiguration.dart';
///
/// void main() {
///   runApp(const MyApp());
/// }
///
/// class MyApp extends StatefulWidget {
///   const MyApp({Key? key}) : super(key: key);
///
///   @override
///   _MyAppState createState() => _MyAppState();
/// }
///
/// class _MyAppState extends State<MyApp> {
///   @override
///   void initState() {
///     super.initState();
///     _configureAmplify();
///   }
///
///   Future<void> _configureAmplify() async {
///     try {
///       await Amplify.addPlugin(AmplifyAuthCognito());
///       await Amplify.configure(amplifyconfig);
///     } on Exception catch (e) {
///       print('Could not configure Amplify: $e');
///     }
///   }
///
///   @override
///   Widget build(BuildContext context) {
///     return MaterialApp(
///       theme: ThemeData.light(),
///       darkTheme: ThemeData.dark(),
///       home: Authenticator(
///         child: const LoggedInScreen(),
///       ),
///     );
///   }
/// }
///
/// class LoggedInScreen extends StatelessWidget {
///   const LoggedInScreen({Key? key}) : super(key: key);
///
///   @override
///   Widget build(BuildContext context) {
///     return Scaffold(
///       body: Center(
///         child: Column(
///           children: const [
///             Text('Logged In'),
///             SignOutButton(),
///           ],
///         ),
///       ),
///     );
///   }
/// }
/// ```
///
/// ## Customization
///
/// ### Themeing
///
/// By default, the Authenticator uses your app's Material theme for its styling.
/// However, you can also use the a hand-crafted Amplify theme by setting
/// [useAmplifyTheme] to `true`.
///
/// ### Forms
///
/// The Authenticator uses your app's Cognito configuration to determine which
/// fields are required. However, you may optionally add on additional fields
/// using a custom form component. For example, to collect your user's address
/// information on the sign up form, use the [SignUpForm.custom] constructor:
///
/// {@macro amplify_authenticator.custom_sign_in_form}
///
/// You can also override the validation of form fields if your app has custom
/// requirements. The syntax for these follows Flutter's built-in
/// [FormFieldValidator](https://api.flutter.dev/flutter/widgets/FormFieldValidator.html) class.
///
/// ```dart
/// Authenticator(
///   signUpForm: SignUpForm.custom(fields: [
///     SignUpFormField.username(
///       validator: (UsernameInput? input) {
///         final username = input?.username;
///         if (username == null || username.isEmpty) {
///           return 'Username cannot be empty';
///         }
///
///         bool containsAmplify = username.contains('amplify');
///         if (!containsAmplify) {
///           return 'Username needs to include amplify';
///         }
///
///         return null;
///       },
///     ),
///   ]),
///   child: const LoggedInScreen(),
/// )
/// ```
///
/// ## Localization
///
/// The Authenticator also supports localization by integrating with Flutter's
/// built-in localization system. See the Flutter [docs](https://docs.flutter.dev/development/accessibility-and-localization/internationalization)
/// for an overview of how to get started, and check out a full [example](https://github.com/aws-amplify/amplify-flutter/tree/main/packages/amplify_authenticator/example)
/// on our Github repo.
///
/// You can also use the localization mechanism to simply override the default
/// strings used for the form fields and other widgets.
///
/// {@macro amplify_authenticator.custom_auth_string_resolver}
/// {@endtemplate}
class Authenticator extends StatefulWidget {
  /// {@macro authenticator.authenticator}
  Authenticator({
    Key? key,
    SignInForm? signInForm,
    SignUpForm? signUpForm,
    ConfirmSignInNewPasswordForm? confirmSignInNewPasswordForm,
    this.stringResolver = const AuthStringResolver(),
    required this.child,
    this.useAmplifyTheme = false,
    this.onException,
    this.exceptionBannerLocation = ExceptionBannerLocation.auto,
    this.preferPrivateSession = false,
  }) : super(key: key) {
    this.signInForm = signInForm ?? SignInForm();
    this.signUpForm = signUpForm ?? SignUpForm();
    this.confirmSignInNewPasswordForm =
        confirmSignInNewPasswordForm ?? ConfirmSignInNewPasswordForm();
  }

  /// Whether to use Amplify colors and styles in the Authenticator,
  /// instead of those defined by the app's Material [Theme].
  ///
  /// Defaults to `false`.
  final bool useAmplifyTheme;

  /// The form displayed when promted for a password change upon signing in.
  late final ConfirmSignInNewPasswordForm confirmSignInNewPasswordForm;

  /// The form displayed during sign in.
  late final SignInForm signInForm;

  /// The form displayed during sign up.
  ///
  /// {@template amplify_authenticator.custom_sign_in_form}
  /// ```dart
  /// Authenticator(
  ///   signUpForm: SignUpForm.custom(fields: [
  ///     SignUpFormField.address(
  ///       required: false,
  ///     ),
  ///   ]),
  ///   child: const LoggedInScreen(),
  /// )
  /// ```
  /// {@endtemplate}
  late final SignUpForm signUpForm;

  /// An optional, user-defined string resolver, used for localizing the
  /// Authenticator or overriding default messages.
  ///
  /// {@template amplify_authenticator.custom_auth_string_resolver}
  /// ```dart
  /// class CustomButtonResolver extends ButtonResolver {
  ///   const CustomButtonResolver();
  ///
  ///   @override
  ///   String signout(BuildContext context) => 'Exit App';
  /// }
  ///
  /// // ...
  ///
  /// Authenticator(
  ///   stringResolver: const AuthStringResolver(
  ///     buttons: CustomButtonResolver(),
  ///   ),
  ///   child: const LoggedInScreen(),
  /// )
  /// ```
  /// {@endtemplate}
  final AuthStringResolver stringResolver;

  /// {@macro amplify_authenticator.exception_handler}
  final ExceptionHandler? onException;

  /// {@macro amplify_authenticator.exception_banner_location}
  final ExceptionBannerLocation exceptionBannerLocation;

  /// {@macro amplify_auth_plugin_interface.cognito_sign_in_with_web_ui_options}
  final bool preferPrivateSession;

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
    properties.add(
        ObjectFlagProperty<ExceptionHandler?>.has('onException', onException));
    properties.add(EnumProperty<ExceptionBannerLocation>(
        'exceptionBannerLocation', exceptionBannerLocation));
    properties.add(DiagnosticsProperty<bool>(
        'preferPrivateSession', preferPrivateSession));
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
    _stateMachineBloc = StateMachineBloc(
      authService: _authService,
      preferPrivateSession: widget.preferPrivateSession,
    )..add(const AuthLoad());
    _viewModel = AuthViewModel(_stateMachineBloc);
    _subscribeToExceptions();
    _subscribeToInfoMessages();
    _subscribeToSuccessEvents();
    _waitForConfiguration();
  }

  void _subscribeToExceptions() {
    _exceptionSub = _stateMachineBloc.exceptions.listen((exception) {
      var onException = widget.onException;
      if (onException != null) {
        onException(exception);
      } else {
        safePrint('[ERROR]: $exception');
      }
      if (mounted && exception.showBanner) {
        _showExceptionBanner(
          type: StatusType.error,
          content: Text(exception.message),
        );
      }
    });
  }

  void _subscribeToInfoMessages() {
    final resolver = widget.stringResolver.messages;
    _infoSub = _stateMachineBloc.infoMessages.listen((key) {
      if (mounted) {
        _showExceptionBanner(
          type: StatusType.info,
          content: Text(resolver.resolve(context, key)),
        );
      }
    });
  }

  void _showExceptionBanner({
    required StatusType type,
    required Widget content,
  }) {
    var location = widget.exceptionBannerLocation;
    if (location == ExceptionBannerLocation.none) {
      return;
    }
    if (location == ExceptionBannerLocation.auto) {
      final Size screenSize = MediaQuery.of(context).size;
      final bool isDesktop =
          screenSize.width > AuthenticatorContainerConstants.landScapeView;
      location = isDesktop
          ? ExceptionBannerLocation.top
          : ExceptionBannerLocation.bottom;
    }
    if (location == ExceptionBannerLocation.top) {
      ScaffoldMessenger.of(context)
        ..clearMaterialBanners()
        ..showMaterialBanner(createMaterialBanner(
          context,
          useAmplifyTheme: widget.useAmplifyTheme,
          type: type,
          content: content,
          actions: [
            IconButton(
              onPressed: () =>
                  ScaffoldMessenger.of(context).clearMaterialBanners(),
              icon: const Icon(Icons.close),
            ),
          ],
        ));
    } else {
      ScaffoldMessenger.of(context)
        ..clearSnackBars()
        ..showSnackBar(createSnackBar(
          context,
          type: type,
          content: content,
          useAmplifyTheme: widget.useAmplifyTheme,
        ));
    }
  }

  // Clear exception and info banners on successful login.
  void _subscribeToSuccessEvents() {
    _successSub = _stateMachineBloc.stream.listen((state) {
      if (state is Authenticated) {
        ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
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
    final missingValues = <String>[];
    var cognitoPlugin = config?.auth?.awsPlugin?.auth?.default$;
    if (cognitoPlugin == null) {
      return const ['auth.plugins.Auth.Default'];
    }
    if (cognitoPlugin.signupAttributes == null) {
      missingValues.add('auth.plugins.Auth.Default.signUpAttributes');
    }
    if (cognitoPlugin.passwordProtectionSettings == null) {
      missingValues.add('auth.plugins.Auth.Default.passwordProtectionSettings');
    }
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
                confirmSignInNewPasswordForm:
                    widget.confirmSignInNewPasswordForm,
                resetPasswordForm: ResetPasswordForm(),
                confirmResetPasswordForm: const ConfirmResetPasswordForm(),
                signInForm: widget.signInForm,
                signUpForm: widget.signUpForm,
                confirmSignUpForm: ConfirmSignUpForm(),
                confirmSignInMFAForm: ConfirmSignInMFAForm(),
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
