// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: depend_on_referenced_packages, implementation_imports, invalid_use_of_internal_member

import 'dart:core';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_result.dart';
import 'package:amplify_core/amplify_core.dart';

const usernameExistsException = UsernameExistsException(
  'A user with this username already exists.',
);

const userNotFoundException = UserNotFoundException(
  'The user does not exist.',
);

const codeMismatchException = CodeMismatchException(
  'Incorrect code. Please try again.',
);

/// A stub of [AmplifyAuthCognito] that creates users in memory.
class AmplifyAuthCognitoStub extends AuthPluginInterface
    implements AmplifyPluginInterface {
  AmplifyAuthCognitoStub({
    this.delay = const Duration(milliseconds: 10),
    List<MockCognitoUser> users = const [],
  })  : _users = {for (final user in users) user.username: user},
        super();

  /// A delay added to mock API calls
  final Duration delay;

  static set instance(AuthPluginInterface instance) {}

  /// The verification code that is used by this stub.
  static const verificationCode = '123456';

  /// The current authenticated user;
  MockCognitoUser? _currentUser;

  /// All registered users.
  final Map<String, MockCognitoUser> _users;

  AuthCodeDeliveryDetails _codeDeliveryDetails(MockCognitoUser user) =>
      AuthCodeDeliveryDetails(
        destination: user.email ?? user.phoneNumber ?? 'S****@g***.com',
      );

  bool _isSignedIn() => _currentUser != null;

  @override
  // ignore: must_call_super
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {}

  @override
  Future<SignUpResult> signUp({
    required String username,
    required String password,
    SignUpOptions? options,
  }) async {
    await Future<void>.delayed(delay);
    MockCognitoUser? user = _users[username];
    if (user != null) {
      throw usernameExistsException;
    } else {
      MockCognitoUser newUser = MockCognitoUser(
        username: username,
        password: password,
        email: options?.userAttributes['email'],
        phoneNumber: options?.userAttributes['phone_number'],
      );
      _users[username] = newUser;
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
    required String username,
    required String confirmationCode,
    ConfirmSignUpOptions? options,
  }) async {
    await Future<void>.delayed(delay);
    if (confirmationCode != verificationCode) {
      throw codeMismatchException;
    }
    return const CognitoSignUpResult(
      isSignUpComplete: true,
      nextStep: AuthNextSignUpStep(signUpStep: 'DONE'),
    );
  }

  @override
  Future<ResendSignUpCodeResult> resendSignUpCode({
    required String username,
    ResendSignUpCodeOptions? options,
  }) async {
    await Future<void>.delayed(delay);
    MockCognitoUser? user = _users[username];
    if (user == null) {
      throw userNotFoundException;
    }
    return CognitoResendSignUpCodeResult(_codeDeliveryDetails(user));
  }

  @override
  Future<SignInResult> signIn({
    required String username,
    String? password,
    SignInOptions? options,
  }) async {
    await Future<void>.delayed(delay);
    MockCognitoUser? user = _users[username];
    if (user == null) {
      throw userNotFoundException;
    }
    if (user.password != password) {
      throw const AuthNotAuthorizedException('Incorrect username or password.');
    }
    _currentUser = user;
    return CognitoSignInResult(
      isSignedIn: _isSignedIn(),
      nextStep: const AuthNextSignInStep(signInStep: 'DONE'),
    );
  }

  @override
  Future<SignInResult> confirmSignIn({
    required String confirmationValue,
    ConfirmSignInOptions? options,
  }) async {
    await Future<void>.delayed(delay);
    return CognitoSignInResult(
      isSignedIn: _isSignedIn(),
      nextStep: const AuthNextSignInStep(signInStep: 'DONE'),
    );
  }

  @override
  Future<SignOutResult> signOut({
    SignOutOptions? options,
  }) async {
    _currentUser = null;
    return const SignOutResult();
  }

  @override
  Future<UpdatePasswordResult> updatePassword({
    required String oldPassword,
    required String newPassword,
    UpdatePasswordOptions? options,
  }) async {
    return const UpdatePasswordResult();
  }

  @override
  Future<ResetPasswordResult> resetPassword({
    required String username,
    ResetPasswordOptions? options,
  }) async {
    await Future<void>.delayed(delay);
    MockCognitoUser? user = _users[username];
    if (user == null) {
      throw userNotFoundException;
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
    required String username,
    required String newPassword,
    required String confirmationCode,
    ConfirmResetPasswordOptions? options,
  }) async {
    await Future<void>.delayed(delay);
    MockCognitoUser? user = _users[username];
    if (user == null) {
      throw userNotFoundException;
    }
    if (confirmationCode != verificationCode) {
      throw codeMismatchException;
    }
    MockCognitoUser updatedUser = user.copyWith(password: newPassword);
    _users[username] = updatedUser;
    _currentUser = updatedUser;
    return const UpdatePasswordResult();
  }

  @override
  Future<AuthSession> fetchAuthSession({
    AuthSessionOptions? options,
  }) async {
    if (_currentUser == null) {
      return const CognitoAuthSession(
        isSignedIn: false,
        userPoolTokensResult: AuthResult.error(
          SignedOutException('There is no user signed in.'),
        ),
        userSubResult: AuthResult.error(
          SignedOutException('There is no user signed in.'),
        ),
        credentialsResult: AuthResult.error(
          UnknownException('credentials not available in mocks'),
        ),
        identityIdResult: AuthResult.error(
          UnknownException('identityId not available in mocks'),
        ),
      );
    }
    final userPoolTokens = _currentUser!.userPoolTokens;
    final userSub = _currentUser!.sub;
    return CognitoAuthSession(
      isSignedIn: true,
      userPoolTokensResult: AuthResult.success(userPoolTokens),
      userSubResult: AuthResult.success(userSub),
      credentialsResult: const AuthResult.error(
        UnknownException('credentials not available in mocks'),
      ),
      identityIdResult: const AuthResult.error(
        UnknownException('identityId not available in mocks'),
      ),
    );
  }

  @override
  Future<AuthUser> getCurrentUser({
    AuthUserOptions? options,
  }) async {
    if (_currentUser == null) {
      throw const SignedOutException('There is no user signed in.');
    } else {
      return AuthUser(
        userId: _currentUser!.sub,
        username: _currentUser!.username,
        signInDetails: CognitoSignInDetailsApiBased(
          username: _currentUser!.username,
        ),
      );
    }
  }

  @override
  Future<List<AuthUserAttribute>> fetchUserAttributes({
    FetchUserAttributesOptions? options,
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
    AuthProvider? provider,
    SignInWithWebUIOptions? options,
  }) async {
    throw const InvalidStateException(
      'social sign in is not implemented.',
    );
  }

  @override
  Future<UpdateUserAttributeResult> updateUserAttribute({
    required AuthUserAttributeKey userAttributeKey,
    required String value,
    UpdateUserAttributeOptions? options,
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
  Future<Map<AuthUserAttributeKey, UpdateUserAttributeResult>>
      updateUserAttributes({
    required List<AuthUserAttribute> attributes,
    UpdateUserAttributesOptions? options,
  }) async {
    return {};
  }

  @override
  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    required AuthUserAttributeKey userAttributeKey,
    required String confirmationCode,
    ConfirmUserAttributeOptions? options,
  }) async {
    return const ConfirmUserAttributeResult();
  }

  @override
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required AuthUserAttributeKey userAttributeKey,
    ResendUserAttributeConfirmationCodeOptions? options,
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

class MockCognitoUser {
  final String sub;
  final String username;
  final String password;
  final String? email;
  final String? phoneNumber;

  factory MockCognitoUser({
    required String username,
    required String password,
    String? email,
    String? phoneNumber,
  }) {
    return MockCognitoUser._(
      sub: uuid(),
      username: username,
      password: password,
      email: email,
      phoneNumber: phoneNumber,
    );
  }

  const MockCognitoUser._({
    required this.sub,
    required this.username,
    required this.password,
    required this.phoneNumber,
    required this.email,
  });

  CognitoUserPoolTokens get userPoolTokens {
    final accessToken = JsonWebToken(
      header: const JsonWebHeader(algorithm: Algorithm.hmacSha256),
      claims: JsonWebClaims(
        subject: sub,
        expiration: DateTime.now().add(const Duration(minutes: 60)),
        customClaims: {
          'username': username,
        },
      ),
      signature: const [],
    );
    const refreshToken = 'refreshToken';
    final idToken = JsonWebToken(
      header: const JsonWebHeader(algorithm: Algorithm.hmacSha256),
      claims: JsonWebClaims(
        subject: sub,
        customClaims: {
          'cognito:username': username,
        },
      ),
      signature: const [],
    );
    return CognitoUserPoolTokens(
      accessToken: accessToken,
      refreshToken: refreshToken,
      idToken: idToken,
    );
  }

  MockCognitoUser copyWith({
    String? sub,
    String? username,
    String? password,
    String? email,
    String? phoneNumber,
  }) {
    return MockCognitoUser._(
      sub: sub ?? this.sub,
      username: username ?? this.username,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
    );
  }
}
