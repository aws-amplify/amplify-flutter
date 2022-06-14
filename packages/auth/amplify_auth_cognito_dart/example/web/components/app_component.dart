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

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:cognito_example/amplifyconfiguration.dart';
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

  String? _error;

  Future<void> _configureAmplify() async {
    if (Amplify.isConfigured) return;
    try {
      await Amplify.addPlugin(AmplifyAuthCognitoDart());
      await Amplify.configure(amplifyconfig);

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
        final session = await Amplify.Auth.fetchAuthSession(
          options: const CognitoSessionOptions(
            getAWSCredentials: true,
          ),
        ) as CognitoAuthSession;
        startingAuthState =
            session.isSignedIn ? AuthState.authenticated : AuthState.login;
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
      switch (res.nextStep!.signInStep) {
        case 'CONFIRM_SIGN_IN_WITH_SMS_MFA_CODE':
          setState(() {
            appState = appState.copyWith(
              authState: AuthState.confirmSignin,
            );
          });
          return;
        case 'CONFIRM_SIGN_IN_WITH_NEW_PASSWORD':
          setState(() {
            appState = appState.copyWith(
              authState: AuthState.confirmNewPassword,
            );
          });
          return;
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
    safePrint('sessionToken : ${session.credentials?.sessionToken}');
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
                  ButtonComponent(
                    innerHtml: 'Login with Amazon',
                    onClick: () => hostedSignIn(provider: AuthProvider.amazon),
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
