// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:cognito_example/common.dart';
import 'package:example_common/example_common.dart';

import 'attribute_component.dart';
import 'change_password_component.dart';
import 'confirm_email_component.dart';
import 'confirm_new_password_form_component.dart';
import 'confirm_phone_component.dart';
import 'confirm_sign_in_component.dart';
import 'forgot_password_form_component.dart';
import 'login_form_component.dart';
import 'user_component.dart';

enum AuthState {
  loading.unauth(),
  error.unauth(),
  authenticated.auth(),
  login.unauth(),
  forgotPassword.unauth(),
  confirmEmail.unauth(),
  confirmPhone.unauth(),
  confirmNewPassword.unauth(),
  confirmSignin.unauth(),
  manageAttributes.auth(),
  changePassword.auth();

  const AuthState.unauth() : isAuthenticatedRoute = false;
  const AuthState.auth() : isAuthenticatedRoute = true;

  final bool isAuthenticatedRoute;
}

/// global state for the application
class AppState {
  AppState({
    this.authState = AuthState.loading,
  });

  final AuthState authState;

  AppState copyWith({AuthState? authState}) {
    return AppState(
      authState: authState ?? this.authState,
    );
  }
}

/// main app component
class AppComponent extends StatefulComponent {
  AppState appState = AppState();
  late AmplifyConfig config;

  String? _error;

  Future<void> _configureAmplify() async {
    if (Amplify.isConfigured) return;
    try {
      await configure();
      config = await Amplify.asyncConfig;

      Amplify.Hub.listen(HubChannel.Auth, (AuthHubEvent event) {
        if (event.type == AuthHubEventType.signedIn) {
          Amplify.asyncConfig.then((_) {
            if (!appState.authState.isAuthenticatedRoute) {
              setState(
                (() {
                  appState = appState.copyWith(
                    authState: AuthState.authenticated,
                  );
                }),
              );
            }
          });
        }
      });

      AuthState startingAuthState;

      try {
        await Amplify.Auth.getCurrentUser();
        startingAuthState = AuthState.authenticated;
      } on Exception {
        startingAuthState = AuthState.login;
      }

      setState(() {
        appState = appState.copyWith(
          authState: startingAuthState,
        );
      });
    } on AmplifyException catch (e) {
      setState(() {
        _error = e.message;
        appState = appState.copyWith(
          authState: AuthState.error,
        );
      });
    }
  }

  @override
  void onInit() {
    _configureAmplify();
    super.onInit();
  }

  void _processSignInResult(SignInResult res) {
    if (!res.isSignedIn) {
      switch (res.nextStep.signInStep) {
        case AuthSignInStep.confirmSignInWithSmsMfaCode:
          setState(() {
            appState = appState.copyWith(
              authState: AuthState.confirmSignin,
            );
          });
          return;
        case AuthSignInStep.confirmSignInWithNewPassword:
          setState(() {
            appState = appState.copyWith(
              authState: AuthState.confirmNewPassword,
            );
          });
          return;
        default:
          break;
      }
    }
    setState(
      (() {
        appState = appState.copyWith(
          authState: AuthState.authenticated,
        );
      }),
    );
  }

  Future<void> _fetchUnAuthCredentials() async {
    final session = await fetchAuthSession();
    safePrint(
      'sessionToken : ${session.credentialsResult.value.sessionToken}',
    );
  }

  @override
  Component render() {
    return CenterComponent(
      child: BuilderComponent(
        builder: () {
          switch (appState.authState) {
            case AuthState.loading:
              return TextComponent('loading ...');
            case AuthState.error:
              return TextComponent('Error configuring Amplify: $_error');
            case AuthState.authenticated:
              return UserComponent(
                navigateTo: (AuthState screen) {
                  setState(
                    (() {
                      appState = appState.copyWith(
                        authState: screen,
                      );
                    }),
                  );
                },
              );
            case AuthState.login:
              return ColumnComponent(
                children: [
                  LoginFormComponent(
                    onSuccess: _processSignInResult,
                  ),
                  ButtonComponent(
                    innerHtml: 'Forgot Password?',
                    onClick: () {
                      setState(
                        (() {
                          appState = appState.copyWith(
                            authState: AuthState.forgotPassword,
                          );
                        }),
                      );
                    },
                  ),
                  if (config.auth!.awsPlugin!.auth!.default$!.oAuth != null)
                    ButtonComponent(
                      id: 'hostedUiLogin',
                      innerHtml: 'Login with Hosted UI',
                      onClick: () =>
                          hostedSignIn(provider: AuthProvider.cognito),
                    ),
                  ButtonComponent(
                    innerHtml: 'Fetch Guess Token',
                    onClick: _fetchUnAuthCredentials,
                  ),
                ],
              );
            case AuthState.forgotPassword:
              return ColumnComponent(
                children: [
                  ForgotPasswordFormComponent(
                    onSuccess: () {
                      setState(
                        (() {
                          appState = appState.copyWith(
                            authState: AuthState.confirmNewPassword,
                          );
                        }),
                      );
                    },
                  ),
                  ButtonComponent(
                    innerHtml: 'Back to Login',
                    onClick: () {
                      setState(
                        (() {
                          appState = appState.copyWith(
                            authState: AuthState.login,
                          );
                        }),
                      );
                    },
                  ),
                ],
              );
            case AuthState.confirmNewPassword:
              return ColumnComponent(
                children: [
                  ConfirmNewPasswordFormComponent(
                    onSuccess: () {
                      setState(
                        (() {
                          appState = appState.copyWith(
                            authState: AuthState.login,
                          );
                        }),
                      );
                    },
                  ),
                  ButtonComponent(
                    innerHtml: 'Back to Login',
                    onClick: () {
                      setState(
                        (() {
                          appState = appState.copyWith(
                            authState: AuthState.login,
                          );
                        }),
                      );
                    },
                  ),
                ],
              );
            case AuthState.confirmSignin:
              return ConfirmSignInComponent(onSuccess: _processSignInResult);
            case AuthState.manageAttributes:
              return UserAttributeComponent(
                onBack: () {
                  setState(
                    (() {
                      appState = appState.copyWith(
                        authState: AuthState.authenticated,
                      );
                    }),
                  );
                },
                onConfirm: (appAuthState) {
                  setState(
                    (() {
                      appState = appState.copyWith(
                        authState: appAuthState,
                      );
                    }),
                  );
                },
              );
            case AuthState.confirmPhone:
              return ConfirmPhoneComponent(
                onNavigate: (appAuthState) {
                  setState(
                    (() {
                      appState = appState.copyWith(
                        authState: appAuthState,
                      );
                    }),
                  );
                },
              );
            case AuthState.confirmEmail:
              return ConfirmEmailComponent(
                onNavigate: (appAuthState) {
                  setState(
                    (() {
                      appState = appState.copyWith(
                        authState: appAuthState,
                      );
                    }),
                  );
                },
              );
            case AuthState.changePassword:
              return ChangePasswordComponent(
                onSuccess: () {
                  setState(() {
                    appState = appState.copyWith(
                      authState: AuthState.authenticated,
                    );
                  });
                },
              );
          }
        },
      ),
    );
  }
}
