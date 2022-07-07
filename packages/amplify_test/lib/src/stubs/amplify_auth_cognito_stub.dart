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
import 'dart:core';
import 'dart:math';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito_stream_controller.dart';
import 'package:amplify_core/amplify_core.dart';
export 'package:amplify_auth_cognito/src/types.dart';

/// A stub of [AmplifyAuthCognito] that creates users in memory.
class AmplifyAuthCognitoStub extends AuthPluginInterface
    implements AmplifyPluginInterface {
  AmplifyAuthCognitoStub() : super();

  static AuthStreamController streamWrapper = _AuthStreamControllerStub();

  static set instance(AuthPluginInterface instance) {}

  @override
  StreamController<AuthHubEvent> get streamController {
    return streamWrapper.authStreamController;
  }

  @override
  Future<void> addPlugin() async {}

  @override
  Future<SignUpResult> signUp({required SignUpRequest request}) async {
    await Future<void>.delayed(const Duration(milliseconds: 50));
    _MockUser? user = _users[request.username];
    if (user != null) {
      throw const UsernameExistsException('_MockUser already exists.');
    } else {
      _MockUser newUser = _MockUser(
        sub: Random().nextInt(10000).toString(),
        username: request.username,
        password: request.password,
        email: request.options?.userAttributes['email'],
        phoneNumber: request.options?.userAttributes['phone_number'],
      );
      _users[request.username] = newUser;
      _currentUser = newUser;
      return CognitoSignUpResult(
        isSignUpComplete: false,
        nextStep: AuthNextSignUpStep(
          signUpStep: 'CONFIRM_SIGN_UP_STEP',
          codeDeliveryDetails: _codeDeliveryDetails(newUser),
        ),
      );
    }
  }

  @override
  Future<SignUpResult> confirmSignUp({
    required ConfirmSignUpRequest request,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 50));
    if (request.confirmationCode != '123456') {
      throw const CodeMismatchException('Incorrect code. Please try again.');
    }
    return CognitoSignUpResult(
      isSignUpComplete: true,
      nextStep: AuthNextSignUpStep(signUpStep: 'DONE'),
    );
  }

  @override
  Future<ResendSignUpCodeResult> resendSignUpCode({
    required ResendSignUpCodeRequest request,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 50));
    _MockUser? user = _users[request.username];
    if (user == null) {
      throw const UserNotFoundException('_MockUser does not exist.');
    }
    return CognitoResendSignUpCodeResult(_codeDeliveryDetails(user));
  }

  @override
  Future<SignInResult> signIn({required SignInRequest request}) async {
    await Future<void>.delayed(const Duration(milliseconds: 50));
    _MockUser? user = _users[request.username];
    if (user == null) {
      throw const UserNotFoundException('_MockUser does not exist.');
    }
    if (user.password != request.password) {
      throw const NotAuthorizedException('Incorrect username or password.');
    }
    _currentUser = user;
    return CognitoSignInResult(
      isSignedIn: _isSignedIn(),
      nextStep: AuthNextSignInStep(signInStep: 'DONE'),
    );
  }

  @override
  Future<SignInResult> confirmSignIn({ConfirmSignInRequest? request}) async {
    await Future<void>.delayed(const Duration(milliseconds: 50));
    return CognitoSignInResult(
      isSignedIn: _isSignedIn(),
      nextStep: AuthNextSignInStep(signInStep: 'DONE'),
    );
  }

  @override
  Future<SignOutResult> signOut({SignOutRequest? request}) async {
    _currentUser = null;
    return const SignOutResult();
  }

  @override
  Future<UpdatePasswordResult> updatePassword({
    UpdatePasswordRequest? request,
  }) async {
    return const UpdatePasswordResult();
  }

  @override
  Future<ResetPasswordResult> resetPassword({
    ResetPasswordRequest? request,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 50));
    if (request == null) {
      throw const InvalidStateException('Missing request');
    }
    _MockUser? user = _users[request.username];
    if (user == null) {
      throw const UserNotFoundException('_MockUser does not exist.');
    }
    return CognitoResetPasswordResult(
      isPasswordReset: true,
      nextStep: ResetPasswordStep(
        updateStep: 'DONE',
        codeDeliveryDetails: _codeDeliveryDetails(user),
      ),
    );
  }

  @override
  Future<UpdatePasswordResult> confirmResetPassword({
    ConfirmResetPasswordRequest? request,
  }) async {
    await Future<void>.delayed(const Duration(milliseconds: 50));
    if (request == null) {
      throw const InvalidStateException('Missing request');
    }
    _MockUser? user = _users[request.username];
    if (user == null) {
      throw const UserNotFoundException('_MockUser does not exist.');
    }
    if (request.confirmationCode != '123456') {
      throw const CodeMismatchException('Incorrect code. Please try again.');
    }
    _MockUser updatedUser = user.copyWith(password: request.newPassword);
    _users[request.username] = updatedUser;
    _currentUser = updatedUser;
    return const UpdatePasswordResult();
  }

  @override
  Future<AuthSession> fetchAuthSession({AuthSessionRequest? request}) async {
    return CognitoAuthSession(isSignedIn: _isSignedIn());
  }

  @override
  Future<AuthUser> getCurrentUser({AuthUserRequest? request}) async {
    if (_currentUser == null) {
      throw const SignedOutException('There is no user signed in.');
    } else {
      return AuthUser(
        userId: _currentUser!.sub,
        username: _currentUser!.username,
      );
    }
  }

  @override
  Future<List<AuthUserAttribute>> fetchUserAttributes({
    FetchUserAttributesRequest? request,
  }) async {
    if (_currentUser == null) {
      throw const SignedOutException('There is no user signed in.');
    }
    return [
      if (_currentUser!.email != null) ...[
        AuthUserAttribute(
          userAttributeKey: CognitoUserAttributeKey.email,
          value: _currentUser!.email!,
        ),
        const AuthUserAttribute(
          userAttributeKey: CognitoUserAttributeKey.emailVerified,
          value: 'true',
        ),
      ],
      if (_currentUser!.phoneNumber != null) ...[
        AuthUserAttribute(
          userAttributeKey: CognitoUserAttributeKey.phoneNumber,
          value: _currentUser!.phoneNumber!,
        ),
        const AuthUserAttribute(
          userAttributeKey: CognitoUserAttributeKey.phoneNumberVerified,
          value: 'true',
        ),
      ],
      AuthUserAttribute(
        userAttributeKey: const CognitoUserAttributeKey.custom('sub'),
        value: _currentUser!.sub,
      ),
    ];
  }

  @override
  Future<SignInResult> signInWithWebUI({
    SignInWithWebUIRequest? request,
  }) async {
    throw const InvalidStateException(
      'social sign in is not implemented.',
    );
  }

  @override
  Future<UpdateUserAttributeResult> updateUserAttribute({
    UpdateUserAttributeRequest? request,
  }) async {
    if (_currentUser == null) {
      throw const SignedOutException('There is no user signed in.');
    }
    return UpdateUserAttributeResult(
      isUpdated: true,
      nextStep: AuthNextUpdateAttributeStep(
        updateAttributeStep: 'DONE',
        codeDeliveryDetails: _codeDeliveryDetails(_currentUser!),
      ),
    );
  }

  @override
  Future<Map<UserAttributeKey, UpdateUserAttributeResult>>
      updateUserAttributes({
    required UpdateUserAttributesRequest request,
  }) async {
    return {};
  }

  @override
  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    ConfirmUserAttributeRequest? request,
  }) async {
    return const ConfirmUserAttributeResult();
  }

  @override
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    ResendUserAttributeConfirmationCodeRequest? request,
  }) async {
    if (_currentUser == null) {
      throw const SignedOutException('There is no user signed in.');
    }
    return ResendUserAttributeConfirmationCodeResult(
      codeDeliveryDetails: _codeDeliveryDetails(_currentUser!),
    );
  }

  @override
  Future<void> rememberDevice() async {
    throw UnimplementedError(
      'rememberDevice is not implemented.',
    );
  }

  @override
  Future<void> forgetDevice([AuthDevice? device]) async {
    throw UnimplementedError(
      'forgetDevice is not implemented.',
    );
  }

  @override
  Future<List<AuthDevice>> fetchDevices() async {
    throw UnimplementedError(
      'fetchDevices is not implemented.',
    );
  }

  @override
  Future<void> deleteUser() async {
    throw UnimplementedError(
      'deleteUser is not implemented.',
    );
  }
}

class _AuthStreamControllerStub extends AuthStreamController {
  @override
  StreamController<AuthHubEvent> get authStreamController {
    return _authStreamController;
  }
}

StreamController<AuthHubEvent> _authStreamController =
    StreamController<AuthHubEvent>.broadcast(
  onListen: () {},
  onCancel: () {},
);

class _MockUser {
  final String sub;
  final String username;
  final String password;
  final String? email;
  final String? phoneNumber;

  const _MockUser({
    required this.sub,
    required this.username,
    required this.password,
    required this.phoneNumber,
    required this.email,
  });

  _MockUser copyWith({
    String? sub,
    String? username,
    String? password,
    String? email,
    String? phoneNumber,
  }) {
    return _MockUser(
      sub: sub ?? this.sub,
      username: username ?? this.username,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
    );
  }
}

_MockUser? _currentUser;
Map<String, _MockUser> _users = {};

AuthCodeDeliveryDetails _codeDeliveryDetails(_MockUser user) =>
    AuthCodeDeliveryDetails(
      destination: user.email ?? user.phoneNumber ?? 'S****@g***.com',
    );

bool _isSignedIn() => _currentUser != null;
