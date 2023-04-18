// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: depend_on_referenced_packages, implementation_imports, invalid_use_of_internal_member

import 'dart:core';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/jwt/jwt.dart';
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
        deliveryMedium: user.phoneNumber != null
            ? DeliveryMedium.phone
            : DeliveryMedium.email,
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
    var user = _users[username];
    if (user != null) {
      throw usernameExistsException;
    } else {
      var newUser = MockCognitoUser(
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
          signUpStep: AuthSignUpStep.confirmSignUp,
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
      nextStep: AuthNextSignUpStep(signUpStep: AuthSignUpStep.done),
    );
  }

  @override
  Future<ResendSignUpCodeResult> resendSignUpCode({
    required String username,
    ResendSignUpCodeOptions? options,
  }) async {
    await Future<void>.delayed(delay);
    var user = _users[username];
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
    var user = _users[username];
    if (user == null) {
      throw userNotFoundException;
    }
    if (user.password != password) {
      throw const AuthNotAuthorizedException('Incorrect username or password.');
    }
    _currentUser = user;
    return CognitoSignInResult(
      isSignedIn: _isSignedIn(),
      nextStep: const AuthNextSignInStep(signInStep: AuthSignInStep.done),
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
      nextStep: const AuthNextSignInStep(signInStep: AuthSignInStep.done),
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
    var user = _users[username];
    if (user == null) {
      throw userNotFoundException;
    }
    return CognitoResetPasswordResult(
      isPasswordReset: true,
      nextStep: ResetPasswordStep(
        updateStep: AuthResetPasswordStep.done,
        codeDeliveryDetails: _codeDeliveryDetails(user),
      ),
    );
  }

  @override
  Future<CognitoResetPasswordResult> confirmResetPassword({
    required String username,
    required String newPassword,
    required String confirmationCode,
    ConfirmResetPasswordOptions? options,
  }) async {
    await Future<void>.delayed(delay);
    var user = _users[username];
    if (user == null) {
      throw userNotFoundException;
    }
    if (confirmationCode != verificationCode) {
      throw codeMismatchException;
    }
    var updatedUser = user.copyWith(password: newPassword);
    _users[username] = updatedUser;
    _currentUser = updatedUser;
    return const CognitoResetPasswordResult(
      isPasswordReset: true,
      nextStep: ResetPasswordStep(
        updateStep: AuthResetPasswordStep.done,
      ),
    );
  }

  @override
  Future<AuthSession> fetchAuthSession({
    FetchAuthSessionOptions? options,
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
    GetCurrentUserOptions? options,
  }) async {
    if (_currentUser == null) {
      throw const SignedOutException('There is no user signed in.');
    } else {
      return CognitoAuthUser(
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
          userAttributeKey: AuthUserAttributeKey.email,
          value: _currentUser!.email!,
        ),
        const AuthUserAttribute(
          userAttributeKey: AuthUserAttributeKey.emailVerified,
          value: 'true',
        ),
      ],
      if (_currentUser!.phoneNumber != null) ...[
        AuthUserAttribute(
          userAttributeKey: AuthUserAttributeKey.phoneNumber,
          value: _currentUser!.phoneNumber!,
        ),
        const AuthUserAttribute(
          userAttributeKey: AuthUserAttributeKey.phoneNumberVerified,
          value: 'true',
        ),
      ],
      AuthUserAttribute(
        userAttributeKey: AuthUserAttributeKey.sub,
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
        updateAttributeStep: AuthUpdateAttributeStep.done,
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
  const MockCognitoUser._({
    required this.sub,
    required this.username,
    required this.password,
    required this.phoneNumber,
    required this.email,
  });

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
  final String sub;
  final String username;
  final String password;
  final String? email;
  final String? phoneNumber;

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
