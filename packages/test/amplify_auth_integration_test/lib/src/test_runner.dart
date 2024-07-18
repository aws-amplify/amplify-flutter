// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_integration_test/src/test_auth_plugin.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart'
    as amp_test;
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:stack_trace/stack_trace.dart';

final AWSLogger _logger = AWSLogger().createChild('AuthTestRunner');

/// The version of the Amplify Config available for this environment.
enum AmplifyConfigVersion {
  /// Gen 1 Amplify Config
  config,

  /// Gen 2 Amplify Outputs
  outputs;
}

/// The login method for the environment.
enum LoginMethod {
  /// Username login
  username,

  /// Email login
  email,

  /// Phone number login
  phone;

  /// Whether or not the login method is username.
  bool get isUsername => this == LoginMethod.username;

  /// Whether or not the login method is email.
  bool get isEmail => this == LoginMethod.email;

  /// Whether or not the login method is email.
  bool get isPhone => this == LoginMethod.phone;
}

/// Information about the test environment.
class EnvironmentInfo {
  /// Creates an environment info object.
  const EnvironmentInfo({
    required this.name,
    required this.configVersion,
    required this.loginMethod,
    required this.preventUserExistenceErrors,
    required this.deliveryMedium,
    required this.mfaEnabled,
  });

  /// The default env info for the gen 1 CLI.
  const EnvironmentInfo.withGen1Defaults({
    required this.name,
    this.mfaEnabled = true,
    this.configVersion = AmplifyConfigVersion.config,
    this.loginMethod = LoginMethod.username,
    this.preventUserExistenceErrors = false,
    this.deliveryMedium = DeliveryMedium.sms,
  });

  /// The default env info for gen 2.
  const EnvironmentInfo.withGen2Defaults({
    required this.name,
    this.mfaEnabled = false,
    this.configVersion = AmplifyConfigVersion.outputs,
    this.loginMethod = LoginMethod.email,
    this.preventUserExistenceErrors = true,
    this.deliveryMedium = DeliveryMedium.email,
  });

  /// Whether or not to use the Amplify Outputs config version.
  bool get useAmplifyOutputs => configVersion == AmplifyConfigVersion.outputs;

  /// Returns the [LoginMethod] for the user.
  UserAttribute getLoginAttribute(String username) => switch (loginMethod) {
        LoginMethod.email => UserAttribute.email(username),
        LoginMethod.phone => UserAttribute.phone(username),
        LoginMethod.username => UserAttribute.username(username)
      };

  /// Generates the username based on the login method.
  String generateUsername() => switch (loginMethod) {
        LoginMethod.username => amp_test.generateUsername(),
        LoginMethod.email => amp_test.generateEmail(),
        LoginMethod.phone => amp_test.generateUSPhoneNumber().toE164(),
      };

  /// The name of the environment in the config/outputs file.
  final String name;

  /// The config version.
  final AmplifyConfigVersion configVersion;

  /// The login method.
  final LoginMethod loginMethod;

  /// Whether or not the "prevent user existence errors" flag is
  /// enabled for this backend.
  ///
  /// Defaults to false for Amplify Gen 1 and true for Amplify Gen 2
  final bool preventUserExistenceErrors;

  /// The medium used for delivering confirmation codes.
  final DeliveryMedium deliveryMedium;

  /// Whether or no MFA is enabled for this environment.
  final bool mfaEnabled;
}

/// Environments with a user pool and username-based sign in.
const List<EnvironmentInfo> userPoolEnvironments = [
  EnvironmentInfo.withGen1Defaults(name: 'main'),
  EnvironmentInfo.withGen1Defaults(name: 'user-pool-only'),
  EnvironmentInfo.withGen1Defaults(name: 'with-client-secret'),
  EnvironmentInfo.withGen2Defaults(name: 'emailSignIn'),
  EnvironmentInfo.withGen2Defaults(
    name: 'phone-sign-in',
    loginMethod: LoginMethod.phone,
    deliveryMedium: DeliveryMedium.sms,
  ),
];

/// Environments with a user pool and opt-in device tracking.
const List<String> deviceOptInEnvironments = [
  'device-tracking-opt-in',
  'user-pool-only',
  'with-client-secret',
];

/// A test environment descriptor.
abstract interface class TestEnvironment {
  /// The name of the environment in the backend.
  String get environmentName;
}

/// {@template amplify_auth_integration_test.auth_test_runner}
/// A test-runner for Auth integration tests.
///
/// How to use:
/// 1. At the start of the integration test, call [setupTests].
///
/// ```dart
/// final AuthTestRunner testRunner = AuthTestRunner(
///   config.amplifyEnvironments,
///   outputs.amplifyEnvironments
/// );
///
/// void main() {
///   testRunner.setupTests();
/// }
/// ```
///
/// 2. In the [setUp] block of your group, call [configure].
///
/// > **NOTE**: You must use `setUp` and not `setUpAll` so that no state is persisted
///   in between tests.
///
/// ```dart
/// group('fetchAuthSession', () {
///   setUp(() async {
///     await testRunner.configure(environmentName: 'identity-pool-only');
///   });
/// });
/// ```
///
/// 3. That's it! Calls to [AmplifyAuthCognito.signUp] and [adminCreateUser] will
/// automatically register [tearDown] calls to delete and sign out those users.
/// {@endtemplate}
class AuthTestRunner {
  /// {@macro amplify_auth_integration_test.auth_test_runner}
  const AuthTestRunner(
    this._amplifyConfigs,
    this._amplifyOutputs,
  );

  final Map<String, String> _amplifyConfigs;

  final Map<String, String> _amplifyOutputs;

  /// Initializes the testing framework.
  void setupTests() {
    AWSLogger().logLevel = LogLevel.verbose;
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    // Required demangler since we use `package:stack_trace` in Auth code
    // but flutter_test expects normal stack traces.
    FlutterError.demangleStackTrace = (StackTrace stack) {
      if (stack is Trace) {
        return stack.vmTrace;
      }
      if (stack is Chain) {
        return stack.toTrace().vmTrace;
      }
      return stack;
    };
    // resolves issue on iOS. See: https://github.com/flutter/flutter/issues/89651
    binding.deferFirstFrame();
  }

  /// Configures Amplify for the given [environmentName].
  ///
  /// **MUST** be called from `setUp` and not `setUpAll` so that users created
  /// during a test are deleted and signed out after the test. This prevents
  /// any state from leaking between tests.
  Future<void> configure({
    String environmentName = 'main',
    bool useAmplifyOutputs = false,
    List<APIAuthProvider> apiAuthProviders = const [],
    AWSHttpClient? baseClient,
  }) async {
    final config = useAmplifyOutputs
        ? _amplifyOutputs[environmentName]!
        : _amplifyConfigs[environmentName]!;
    final outputs = useAmplifyOutputs
        ? AmplifyOutputs.fromJson(jsonDecode(config) as Map<String, dynamic>)
        : AmplifyConfig.fromJson(
            jsonDecode(config) as Map<String, dynamic>,
          ).toAmplifyOutputs();
    final hasApiPlugin = outputs.data != null;
    final authPlugin = AmplifyAuthTestPlugin(hasApiPlugin: hasApiPlugin);
    await Amplify.addPlugins([
      authPlugin,
      if (hasApiPlugin)
        AmplifyAPI(
          options: APIPluginOptions(
            authProviders: apiAuthProviders,
            baseHttpClient: baseClient,
          ),
        ),
    ]);
    await Amplify.configure(config);
    await Amplify.Auth.signOut();
    addTearDown(
      Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey).close,
    );
    addTearDown(Amplify.reset);
    addTearDown(signOutUser);
  }

  /// Whether a test for [environmentName] should be skipped.
  String? shouldSkip(String environmentName) {
    if (_amplifyConfigs.containsKey(environmentName)) {
      return null;
    }
    return 'No config found for "$environmentName"';
  }

  /// Runs [body] in a [group] which configures [environment].
  void withEnvironment(TestEnvironment environment, void Function() body) {
    group(environment.environmentName, () {
      setUp(() async {
        await configure(environmentName: environment.environmentName);
      });

      body();
    });
  }
}

/// Signs out a user if one is signed in.
Future<void> signOutUser({bool assertComplete = false}) async {
  final result = await Amplify.Auth.signOut() as CognitoSignOutResult;
  if (assertComplete) {
    expect(result, isA<CognitoCompleteSignOut>());
  }
  switch (result) {
    case CognitoCompleteSignOut _:
      _logger.debug('Successfully signed out user');
      return;
    case CognitoPartialSignOut(
        :final hostedUiException,
        :final globalSignOutException,
        :final revokeTokenException,
      ):
      _logger.error(
        'Error signing out:',
        hostedUiException ?? globalSignOutException ?? revokeTokenException,
      );
    case CognitoFailedSignOut(:final exception):
      _logger.error('Error signing out:', exception);
  }
}
