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

/// A prebuilt sign in/sign up experience for Amplify Auth.
///
/// See [Authenticator] for an overview on getting started.
library amplify_authenticator;

import 'dart:async';

import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:amplify_authenticator/src/constants/authenticator_constants.dart';
import 'package:amplify_authenticator/src/enums/enums.dart';
import 'package:amplify_authenticator/src/keys.dart';
import 'package:amplify_authenticator/src/l10n/auth_strings_resolver.dart';
import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/models/authenticator_builder.dart';
import 'package:amplify_authenticator/src/models/authenticator_exception.dart';
import 'package:amplify_authenticator/src/screens/authenticator_screen.dart';
import 'package:amplify_authenticator/src/screens/loading_screen.dart';
import 'package:amplify_authenticator/src/services/amplify_auth_service.dart';
import 'package:amplify_authenticator/src/state/auth_state.dart';
import 'package:amplify_authenticator/src/state/authenticator_state.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_bloc.dart';
import 'package:amplify_authenticator/src/state/inherited_authenticator_builder.dart';
import 'package:amplify_authenticator/src/state/inherited_authenticator_state.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/state/inherited_forms.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/widgets/authenticator_banner.dart';
import 'package:amplify_authenticator/src/widgets/form.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

export 'package:amplify_auth_cognito/amplify_auth_cognito.dart'
    show AuthProvider;

export 'package:amplify_flutter/amplify_flutter.dart'
    show PasswordProtectionSettings, PasswordPolicyCharacters;

export 'src/enums/enums.dart' show AuthenticatorStep, Gender;
export 'src/l10n/auth_strings_resolver.dart' hide ButtonResolverKeyType;
export 'src/models/authenticator_exception.dart';
export 'src/models/username_input.dart'
    show UsernameType, UsernameInput, UsernameSelection;
export 'src/state/authenticator_state.dart';
export 'src/widgets/button.dart'
    show
        SignUpButton,
        SignInButton,
        ConfirmSignUpButton,
        ConfirmSignInCustomButton,
        ConfirmSignInMFAButton,
        SignOutButton,
        BackToSignInButton,
        LostCodeButton,
        ForgotPasswordButton,
        ResetPasswordButton,
        ConfirmResetPasswordButton,
        ConfirmSignInNewPasswordButton,
        VerifyUserButton,
        ConfirmVerifyUserButton,
        SkipVerifyUserButton;
export 'src/widgets/form.dart'
    show
        AuthenticatorForm,
        SignUpForm,
        SignInForm,
        ConfirmSignInCustomAuthForm,
        ConfirmSignInMFAForm,
        ConfirmSignInNewPasswordForm,
        ConfirmSignUpForm,
        ResetPasswordForm,
        ConfirmResetPasswordForm,
        VerifyUserForm,
        ConfirmVerifyUserForm;
export 'src/widgets/form_field.dart'
    show
        ConfirmSignInFormField,
        ConfirmSignUpFormField,
        ResetPasswordFormField,
        SignInFormField,
        SignUpFormField,
        VerifyUserFormField;

/// {@template amplify_authenticator.authenticator}
/// # Amplify Authenticator
///
/// A prebuilt sign in/sign up experience for Amplify Auth. Simply provide a
/// [child] widget which is your app's authenticated route, and the Authenticator
/// will handle the logic behind managing user sessions and guiding users through
/// the sign up and sign in process.
///
/// ```dart
/// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
/// import 'package:amplify_authenticator/amplify_authenticator.dart';
/// import 'package:amplify_flutter/amplify_flutter.dart';
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
/// {@endtemplate}
///
/// ## Customization
///
/// ### Themeing
///
/// By default, the Authenticator uses your app's Material theme for its styling.
///
/// ### Forms
///
/// The Authenticator uses your app's Cognito configuration (as defined in your
/// `amplifyconfiguration.dart` file) to determine which fields are required.
/// However, you may optionally add on additional fields using a custom form
/// component. For example, to collect your user's address information on the s
/// ign up form, use the [SignUpForm.custom] constructor:
///
/// {@template amplify_authenticator.custom_sign_up_form}
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
/// {@template amplify_authenticator.custom_auth_string_resolver}
/// ```dart
/// class CustomButtonResolver extends ButtonResolver {
///   const CustomButtonResolver();
///
///   @override
///   String signout(BuildContext context) => 'Exit App';
/// }
///
/// Authenticator(
///   stringResolver: const AuthStringResolver(
///     buttons: CustomButtonResolver(),
///   ),
///   child: const LoggedInScreen(),
/// )
/// ```
/// {@endtemplate}
///
/// ## Custom UI
///
/// {@template amplify_authenticator.custom_builder}
/// The authenticator provides prebuilt widgets for each step
/// of the authentication flow based on the amplify config for
/// your app. Some customizations can be acheived by providing
/// custom forms (see [signInForm] and [signUpForm]) or through
/// theming. To fully customize the authenticator UI,
/// you can provide a custom builder method.
///
/// This can be used to change the layout of the authenticator,
/// add your app's logo to certain views, add completely custom
/// form fields (such as a terms and conditions field), and much
/// more.
///
/// The example below shows a custom sign up view with an app
/// bar and a flutter logo.
///
/// ```dart
/// return Authenticator(
///   authenticatorBuilder: (context, state) {
///     switch (state.currentStep) {
///       case AuthenticatorStep.signIn:
///         return Scaffold(
///           appBar: AppBar(title: const Text('My App')),
///           body: Padding(
///             padding: const EdgeInsets.all(16),
///             child: Column(
///               children: [
///                 // flutter logo
///                 const Center(child: FlutterLogo(size: 100)),
///                 // prebuilt sign in form from amplify_authenticator package
///                 SignInForm(),
///               ],
///             ),
///           ),
///         );
///       default:
///         return null;
///     }
///   },
///   child: MaterialApp(
///     builder: Authenticator.builder(),
///     home: const RouteA(),
///   ),
/// );
/// ```
/// {@endtemplate}
class Authenticator extends StatefulWidget {
  /// {@macro amplify_authenticator.authenticator}
  Authenticator({
    Key? key,
    this.signInForm,
    this.signUpForm,
    this.confirmSignInNewPasswordForm,
    this.stringResolver = const AuthStringResolver(),
    required this.child,
    this.onException,
    this.exceptionBannerLocation = ExceptionBannerLocation.auto,
    this.preferPrivateSession = false,
    this.initialStep = AuthenticatorStep.signIn,
    this.authenticatorBuilder,
    this.padding = const EdgeInsets.all(32),
  }) : super(key: key) {
    // ignore: prefer_asserts_with_message
    assert(() {
      if (!validInitialAuthenticatorSteps.contains(initialStep)) {
        throw FlutterError.fromParts([
          ErrorSummary('Invalid initialStep'),
          ErrorDescription(
            'initialStep must be one of the following values: \n - ${validInitialAuthenticatorSteps.join('\n -')}',
          )
        ]);
      }
      return true;
    }());
  }

  /// Wraps user-defined navigators for integration with [MaterialApp] and
  /// [Navigator].
  ///
  /// ```dart
  /// return Authenticator(
  ///   child: MaterialApp(
  ///     builder: Authenticator.builder(),
  ///     home: const LoggedInScreen(),
  ///   ),
  /// );
  /// ```
  static TransitionBuilder builder() => (BuildContext context, Widget? child) {
        if (child == null) {
          throw FlutterError.fromParts([
            ErrorSummary('No Navigator or Router provided.'),
            ErrorSpacer(),
            ErrorDescription(
              'Did you include a home Widget or provide routes to your MaterialApp?',
            ),
            ErrorSpacer(),
          ]);
        }
        return _AuthenticatorBody(child: child);
      };

  // Padding around each authenticator view
  final EdgeInsets padding;

  /// A method to build a custom UI for the autenticator
  ///
  /// {@macro amplify_authenticator.custom_builder}
  final AuthenticatorBuilder? authenticatorBuilder;

  /// The form displayed during sign in.
  ///
  /// By default, the authenticator will use the amplify config
  /// to build this view with the required attributes and validation.
  ///
  /// To customize which fields are displayed, the order they are
  /// displayed in, or the field validation, provide a custom
  /// sign in form via SignInForm.custom().
  ///
  /// To fully customize the UI, see authenticatorBuilder
  final SignInForm? signInForm;

  /// The form displayed during sign up.
  ///
  /// By default, the authenticator will use the amplify config
  /// to build this view with the required sign up attributes.
  ///
  /// To customize which fields are displayed, the order they are
  /// displayed in, or the field validation, provide a custom
  /// sign up form via SignUpForm.custom().
  ///
  /// {@macro amplify_authenticator.custom_sign_up_form}
  ///
  /// To fully customize the UI, see authenticatorBuilder
  final SignUpForm? signUpForm;

  /// The form displayed when promted for a password change upon signing in.
  ///
  /// This will be shown to users that are in the state `FORCE_CHANGE_PASSWORD`.
  /// By default, the form will require the user to enter and confirm a new password.
  ///
  /// Users that have been created via the admin console will be asked to change their
  /// password upon first login. However, they may not have been created with all
  /// the required attributes (such as an email address, for example). This form
  /// can be customized to include any required attributes.
  ///
  /// To customize which fields are displayed, provide a custom
  /// form via ConfirmSignInNewPasswordForm.custom().
  final ConfirmSignInNewPasswordForm? confirmSignInNewPasswordForm;

  /// An optional, user-defined string resolver, used for localizing the
  /// Authenticator or overriding default messages.
  ///
  /// {@macro amplify_authenticator.custom_auth_string_resolver}
  final AuthStringResolver stringResolver;

  /// {@macro amplify_authenticator.exception_handler}
  final ExceptionHandler? onException;

  /// {@macro amplify_authenticator.exception_banner_location}
  final ExceptionBannerLocation exceptionBannerLocation;

  /// {@macro amplify_auth_cognito.model.cognito_sign_in_with_web_ui_options.private_session}
  final bool preferPrivateSession;

  /// This widget will be displayed after a user has signed in.
  final Widget child;

  /// The initial step that the authenticator will display if the user is not
  /// already authenticated.
  ///
  /// Defauls to AuthenticatorStep.signIn. Other acceptable values are:
  /// AuthenticatorStep.signUp, AuthenticatorStep.resetPassword, and
  /// AuthenticatorStep.onboarding.
  ///
  /// AuthenticatorStep.onboarding should only be used with a custom builder
  /// method.
  final AuthenticatorStep initialStep;

  @override
  State<Authenticator> createState() => _AuthenticatorState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AuthStringResolver>(
        'stringResolver', stringResolver));
    properties.add(
        ObjectFlagProperty<ExceptionHandler?>.has('onException', onException));
    properties.add(EnumProperty<ExceptionBannerLocation>(
        'exceptionBannerLocation', exceptionBannerLocation));
    properties.add(DiagnosticsProperty<bool>(
        'preferPrivateSession', preferPrivateSession));
    properties.add(EnumProperty<AuthenticatorStep>('initialStep', initialStep));
    properties.add(ObjectFlagProperty<AuthenticatorBuilder?>.has(
        'authenticatorBuilder', authenticatorBuilder));
    properties.add(DiagnosticsProperty<EdgeInsets>('padding', padding));
  }
}

class _AuthenticatorState extends State<Authenticator> {
  static final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  static final _logger = AmplifyLogger().createChild('Authenticator');

  final AuthService _authService = AmplifyAuthService();
  late final StateMachineBloc _stateMachineBloc;
  late final AuthenticatorState _authenticatorState;
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
      initialStep: widget.initialStep,
    )..add(const AuthLoad());
    _authenticatorState = AuthenticatorState(_stateMachineBloc);
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
        _logger.error('Error in AuthBloc', exception);
      }
      if (mounted && exception.showBanner) {
        _showExceptionBanner(
          type: StatusType.error,
          message: exception.message,
        );
      }
    });
  }

  void _subscribeToInfoMessages() {
    final resolver = widget.stringResolver.messages;
    _infoSub = _stateMachineBloc.infoMessages.listen((key) {
      final context = scaffoldMessengerKey.currentContext;
      if (mounted && context != null) {
        final message = resolver.resolve(context, key);
        _logger.info(message);
        _showExceptionBanner(
          type: StatusType.info,
          message: message,
        );
      } else {
        _logger.info('Could not show banner for key: $key');
      }
    });
  }

  void _showExceptionBanner({
    required StatusType type,
    required String message,
  }) {
    final scaffoldMessengerState = scaffoldMessengerKey.currentState;
    final scaffoldMessengerContext = scaffoldMessengerKey.currentContext;
    if (scaffoldMessengerState == null || scaffoldMessengerContext == null) {
      return;
    }
    var location = widget.exceptionBannerLocation;
    if (location == ExceptionBannerLocation.none) {
      return;
    }
    if (location == ExceptionBannerLocation.auto) {
      final Size screenSize = MediaQuery.of(scaffoldMessengerContext).size;
      final bool isDesktop =
          screenSize.width > AuthenticatorContainerConstants.smallView;
      location = isDesktop
          ? ExceptionBannerLocation.top
          : ExceptionBannerLocation.bottom;
    }
    if (location == ExceptionBannerLocation.top) {
      scaffoldMessengerState
        ..clearMaterialBanners()
        ..showMaterialBanner(createMaterialBanner(
          scaffoldMessengerContext,
          type: type,
          message: message,
          actionCallback: scaffoldMessengerState.clearMaterialBanners,
        ));
    } else {
      scaffoldMessengerState
        ..clearSnackBars()
        ..showSnackBar(createSnackBar(
          scaffoldMessengerContext,
          type: type,
          message: message,
        ));
    }
  }

  // Clear exception and info banners on successful login.
  void _subscribeToSuccessEvents() {
    _successSub = _stateMachineBloc.stream.listen((state) {
      if (state is AuthenticatedState) {
        scaffoldMessengerKey.currentState?.removeCurrentMaterialBanner();
      }
    });
  }

  @override
  void dispose() {
    _exceptionSub.cancel();
    _infoSub.cancel();
    _successSub.cancel();
    _stateMachineBloc.close();
    super.dispose();
  }

  Future<void> _waitForConfiguration() async {
    final config = await Amplify.asyncConfig;
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
    if (cognitoPlugin.usernameAttributes == null) {
      missingValues.add('usernameAttributes');
    }
    if (cognitoPlugin.signupAttributes == null) {
      missingValues.add('signupAttributes');
    }
    if (cognitoPlugin.passwordProtectionSettings == null) {
      missingValues.add('passwordProtectionSettings');
    }
    return missingValues;
  }

  @override
  Widget build(BuildContext context) {
    if (_configInitialized && _missingConfigValues.isNotEmpty) {
      throw FlutterError.fromParts([
        ErrorSummary(
          'Encountered problem(s) building the Authenticator due to an invalid config. See below for more info.',
        ),
        ErrorDescription(
          '\nYour amplifyconfiguration.dart file is missing the following required attributes:'
          '\n - ${_missingConfigValues.join('\n - ')}',
        ),
        ErrorDescription(
          '\nThis can occur if your project was not generated with the Amplify CLI, '
          'or if the project was generated with the Amplify CLI prior to version 6.4.0.',
        ),
        ErrorDescription(
          '\nPlease refer to the amplify flutter documentation for more info on how to resolve this and the full list of required attributes.',
        ),
        ErrorDescription(
          '\nOnce you have added the missing values to your amplifyconfiguration.dart file, you will need to restart your app.',
        ),
      ]);
    }

    return InheritedAuthBloc(
      key: keyInheritedAuthBloc,
      authBloc: _stateMachineBloc,
      child: InheritedConfig(
        amplifyConfig: _config,
        padding: widget.padding,
        child: InheritedAuthenticatorState(
          key: keyInheritedAuthenticatorState,
          state: _authenticatorState,
          child: InheritedAuthenticatorBuilder(
            authenticatorBuilder: widget.authenticatorBuilder,
            child: InheritedStrings(
              resolver: widget.stringResolver,
              child: InheritedForms(
                confirmSignInNewPasswordForm:
                    widget.confirmSignInNewPasswordForm ??
                        ConfirmSignInNewPasswordForm(),
                resetPasswordForm: ResetPasswordForm(),
                confirmResetPasswordForm: const ConfirmResetPasswordForm(),
                signInForm: widget.signInForm ?? SignInForm(),
                signUpForm: widget.signUpForm ?? SignUpForm(),
                confirmSignUpForm: ConfirmSignUpForm(),
                confirmSignInCustomAuthForm: ConfirmSignInCustomAuthForm(),
                confirmSignInMFAForm: ConfirmSignInMFAForm(),
                verifyUserForm: VerifyUserForm(),
                confirmVerifyUserForm: ConfirmVerifyUserForm(),
                child: widget.child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// A widget that listens for changes in multiple inherited widgets
// and rebuilds based on the provided builder, which accepts the current
// AuthState.
class _AuthStateBuilder extends StatelessWidget {
  const _AuthStateBuilder({
    Key? key,
    required this.child,
    required this.builder,
  }) : super(key: key);

  final Widget child;
  final Widget Function(AuthState, Widget) builder;

  Widget getAuthenticatorScreen({
    required BuildContext context,
    required AuthState authState,
    AuthenticatorBuilder? authenticatorBuilder,
  }) {
    final Widget authenticatorScreen;
    if (authState is UnauthenticatedState) {
      authenticatorScreen = AuthenticatorScreen(step: authState.step);
    } else if (authState is LoadingState) {
      authenticatorScreen = const LoadingScreen();
    } else {
      authenticatorScreen = child;
    }

    if (authState is! AuthenticatedState && authenticatorBuilder != null) {
      final AuthenticatorState authenticatorState =
          InheritedAuthenticatorState.of(
        context,
        listen: true,
      );
      final customAuthenticator = authenticatorBuilder(
        context,
        authenticatorState,
      );
      if (customAuthenticator != null) {
        return customAuthenticator;
      }
    }

    return authenticatorScreen;
  }

  @override
  Widget build(BuildContext context) {
    final authenticatorBuilder = InheritedAuthenticatorBuilder.of(context);
    final stateMachineBloc = InheritedAuthBloc.of(context);
    return StreamBuilder(
      stream: stateMachineBloc.stream,
      builder: (context, AsyncSnapshot<AuthState> snapshot) {
        final authState = snapshot.data ?? const LoadingState();

        final Widget authenticatorScreen = getAuthenticatorScreen(
          context: context,
          authenticatorBuilder: authenticatorBuilder,
          authState: authState,
        );

        return Localizations.override(
          context: context,
          delegates: AuthenticatorLocalizations.localizationsDelegates,
          child: builder(authState, authenticatorScreen),
        );
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        ObjectFlagProperty<Widget Function(AuthState state, Widget child)>.has(
            'builder', builder));
  }
}

/// First child of the [MaterialApp] when using [Authenticator.builder].
///
/// All routes are wrapped with a Navigator which allows for separation between the
/// the user's navigation and the Authenticator's.
class _AuthenticatorBody extends StatelessWidget {
  const _AuthenticatorBody({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return _AuthStateBuilder(
      child: child,
      builder: (state, child) {
        return Navigator(
          onPopPage: (_, dynamic __) => true,
          pages: [
            if (state is AuthenticatedState) MaterialPage<void>(child: child),
            if (state is! AuthenticatedState)
              MaterialPage<void>(
                child: ScaffoldMessenger(
                  key: _AuthenticatorState.scaffoldMessengerKey,
                  child: Scaffold(
                    body: SizedBox.expand(
                      child: child,
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}

/// {@template amplify_authenticator.authenticated_view}
/// A widget for wrapping portions of the application (typically routes)
/// that are intended to be protected by authentication.
/// {@endtemplate}

class AuthenticatedView extends StatelessWidget {
  /// {@macro amplify_authenticator.authenticated_view}
  const AuthenticatedView({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return _AuthStateBuilder(
      child: child,
      builder: (state, child) {
        if (state is AuthenticatedState) {
          return child;
        }
        return ScaffoldMessenger(
          key: _AuthenticatorState.scaffoldMessengerKey,
          child: Scaffold(
            body: SizedBox.expand(
              child: child is AuthenticatorScreen
                  ? SingleChildScrollView(child: child)
                  : child,
            ),
          ),
        );
      },
    );
  }
}
