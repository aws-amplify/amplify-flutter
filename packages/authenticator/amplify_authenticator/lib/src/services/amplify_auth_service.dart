// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/src/version.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:collection/collection.dart';

abstract class AuthService {
  Future<SignInResult> signIn(String username, String password);

  Future<SignInResult> signInWithProvider(
    AuthProvider provider, {
    required bool preferPrivateSession,
  });

  Future<void> signOut();

  Future<SignUpResult> signUp(
    String username,
    String password,
    Map<CognitoUserAttributeKey, String> authAttributes,
  );

  Future<SignUpResult> confirmSignUp(String username, String code);

  Future<AuthUser?> get currentUser;

  Future<bool> isValidSession();

  Future<bool> get isLoggedIn;

  Future<ResetPasswordResult> resetPassword(String username);

  Future<ResetPasswordResult> confirmResetPassword(
    String username,
    String code,
    String newPassword,
  );

  Future<SignInResult> confirmSignIn({
    required String confirmationValue,
    Map<CognitoUserAttributeKey, String>? attributes,
  });

  Future<ResendSignUpCodeResult> resendSignUpCode(String username);

  Future<GetAttributeVerificationStatusResult> getAttributeVerificationStatus();

  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required CognitoUserAttributeKey userAttributeKey,
  });

  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    required CognitoUserAttributeKey userAttributeKey,
    required String confirmationCode,
  });
  Future<AmplifyConfig> waitForConfiguration();

  Future<void> rememberDevice();

  Stream<AuthHubEvent> get hubEvents;
}

class AmplifyAuthService
    with AWSDebuggable, AmplifyLoggerMixin
    implements AuthService {
  static final userAgent =
      'amplify-authenticator/${packageVersion.split('+').first}';

  static R _withUserAgent<R>(R Function() fn) {
    final globalUserAgent =
        // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
        Amplify.dependencies.getOrCreate<AmplifyUserAgent>();
    return globalUserAgent.runWith(
      updates: (ua) => ua.addComponent(userAgent),
      fn,
    );
  }

  @override
  Future<SignInResult> signIn(String username, String password) async {
    final result = await _withUserAgent(
      () => Amplify.Auth.signIn(
        username: username,
        password: password,
      ),
    );

    return result;
  }

  @override
  Future<SignInResult> signInWithProvider(
    AuthProvider provider, {
    required bool preferPrivateSession,
  }) {
    return _withUserAgent(
      () => Amplify.Auth.signInWithWebUI(
        provider: provider,
        options: SignInWithWebUIOptions(
          pluginOptions: CognitoSignInWithWebUIPluginOptions(
            isPreferPrivateSession: preferPrivateSession,
          ),
        ),
      ),
    );
  }

  @override
  Future<ResendSignUpCodeResult> resendSignUpCode(String username) {
    return _withUserAgent(
      () => Amplify.Auth.resendSignUpCode(username: username),
    );
  }

  @override
  Future<SignUpResult> signUp(
    String username,
    String password,
    Map<CognitoUserAttributeKey, String> attributes,
  ) {
    return _withUserAgent(() {
      return Amplify.Auth.signUp(
        username: username,
        password: password,
        options: SignUpOptions(
          userAttributes: attributes,
        ),
      );
    });
  }

  @override
  Future<SignUpResult> confirmSignUp(String username, String code) {
    return _withUserAgent(
      () => Amplify.Auth.confirmSignUp(
        username: username,
        confirmationCode: code,
      ),
    );
  }

  @override
  Future<SignInResult> confirmSignIn({
    required String confirmationValue,
    Map<CognitoUserAttributeKey, String>? attributes,
  }) {
    return _withUserAgent(
      () => Amplify.Auth.confirmSignIn(
        confirmationValue: confirmationValue,
        options: ConfirmSignInOptions(
          pluginOptions: CognitoConfirmSignInPluginOptions(
            userAttributes: attributes,
          ),
        ),
      ),
    );
  }

  @override
  Future<void> rememberDevice() {
    return _withUserAgent(
      () => Amplify.Auth.rememberDevice(),
    );
  }

  @override
  Future<void> signOut() {
    return _withUserAgent(() => Amplify.Auth.signOut());
  }

  @override
  Future<AuthUser?> get currentUser async {
    return _withUserAgent(() async {
      if (!Amplify.isConfigured) return null;

      if (!await isLoggedIn) {
        return null;
      }
      final user = await Amplify.Auth.getCurrentUser();

      return user;
    });
  }

  @override
  Future<bool> get isLoggedIn async {
    return _withUserAgent(() async {
      try {
        final result = await Amplify.Auth.fetchAuthSession();

        return result.isSignedIn;
      } on SignedOutException {
        return false;
      }
    });
  }

  @override
  Future<bool> isValidSession() async {
    return _withUserAgent(() async {
      final session =
          await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
      final CognitoAuthSession(:userPoolTokensResult) = session;
      return switch (userPoolTokensResult) {
        // If tokens can be retrieved without an exception, return true.
        AuthSuccessResult _ => true,
        AuthErrorResult(:final exception) => switch (exception) {
            SignedOutException _ => false,

            // NetworkException indicates that access and/or id tokens have expired
            // and cannot be refreshed due to a network error. In this case the user
            // should be treated as authenticated to allow for offline use cases.
            NetworkException _ => true,

            // Any other exception should be thrown to be handled appropriately.
            _ => throw exception,
          },
      };
    });
  }

  @override
  Future<ResetPasswordResult> resetPassword(String username) {
    return _withUserAgent(
      () => Amplify.Auth.resetPassword(username: username),
    );
  }

  @override
  Future<ResetPasswordResult> confirmResetPassword(
    String username,
    String code,
    String newPassword,
  ) {
    return _withUserAgent(
      () => Amplify.Auth.confirmResetPassword(
        username: username,
        confirmationCode: code,
        newPassword: newPassword,
      ),
    );
  }

  @override
  Future<ResendUserAttributeConfirmationCodeResult>
      resendUserAttributeConfirmationCode({
    required CognitoUserAttributeKey userAttributeKey,
  }) {
    return _withUserAgent(
      () => Amplify.Auth.resendUserAttributeConfirmationCode(
        userAttributeKey: userAttributeKey,
      ),
    );
  }

  @override
  Future<ConfirmUserAttributeResult> confirmUserAttribute({
    required CognitoUserAttributeKey userAttributeKey,
    required String confirmationCode,
  }) {
    return _withUserAgent(
      () => Amplify.Auth.confirmUserAttribute(
        userAttributeKey: userAttributeKey,
        confirmationCode: confirmationCode,
      ),
    );
  }

  /// Returns a list of verified and unverified attributes
  ///
  /// This is based off of `verifiedContact()` from amplify-js
  /// https://github.com/aws-amplify/amplify-js/blob/6de9a1d743deef8de5205590bf7cf8134a5fb5f4/packages/auth/src/Auth.ts#L1199-L1224
  @override
  Future<GetAttributeVerificationStatusResult>
      getAttributeVerificationStatus() async {
    return _withUserAgent(() async {
      final userAttributes = await Amplify.Auth.fetchUserAttributes();

      final verifiableAttributes = userAttributes
          .map((e) => e.userAttributeKey.toCognitoUserAttributeKey())
          .where(
            (element) =>
                element == CognitoUserAttributeKey.email ||
                element == CognitoUserAttributeKey.phoneNumber,
          )
          .toList();

      bool attributeIsVerified(CognitoUserAttributeKey userAttributeKey) {
        return userAttributes
                .firstWhereOrNull(
                  (attr) =>
                      attr.userAttributeKey.key ==
                      '${userAttributeKey.key}_verified',
                )
                ?.value ==
            'true';
      }

      final verifiedAttributes =
          verifiableAttributes.where(attributeIsVerified).toList();
      final unverifiedAttributes = verifiableAttributes
          .where((attribute) => !attributeIsVerified(attribute))
          .toList();

      return GetAttributeVerificationStatusResult(
        verifiedAttributes: verifiedAttributes,
        unverifiedAttributes: unverifiedAttributes,
      );
    });
  }

  @override
  Future<AmplifyConfig> waitForConfiguration() async {
    final timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      logger.warn(
        'Amplify is taking longer than expected to configure.'
        ' Have you called `Amplify.configure()`?',
      );
    });
    try {
      return await Amplify.asyncConfig;
    } finally {
      timer.cancel();
    }
  }

  @override
  Stream<AuthHubEvent> get hubEvents =>
      Amplify.Hub.availableStreams[HubChannel.Auth]!.cast();

  @override
  String get runtimeTypeName => 'AmplifyAuthService';
}

class GetAttributeVerificationStatusResult {
  GetAttributeVerificationStatusResult({
    required this.verifiedAttributes,
    required this.unverifiedAttributes,
  });
  final List<CognitoUserAttributeKey> verifiedAttributes;
  final List<CognitoUserAttributeKey> unverifiedAttributes;
}
