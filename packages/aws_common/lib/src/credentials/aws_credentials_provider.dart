// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/config/aws_config_value.dart';
import 'package:aws_common/src/config/config_file/file_loader.dart';
import 'package:os_detect/os_detect.dart' as os;

export 'package:aws_common/src/credentials/aws_credentials_provider_chain.dart';

/// The `AWS_ACCESS_KEY_ID` identifier, used for locating credentials in the
/// environment.
const zAccessKeyId = 'AWS_ACCESS_KEY_ID';

/// The `AWS_SECRET_ACCESS_KEY` identifier, used for locating credentials in the
/// environment.
const zSecretAccessKey = 'AWS_SECRET_ACCESS_KEY';

/// The `AWS_SESSION_TOKEN` identifier, used for locating credentials in the
/// environment.
const zSessionToken = 'AWS_SESSION_TOKEN';

/// {@template aws_signature_v4.invalid_credentials_exception}
/// Exception thrown when AWS credentials are either unavailable or invalid.
/// {@endtemplate}
class InvalidCredentialsException implements Exception {
  /// {@macro aws_signature_v4.invalid_credentials_exception}
  const InvalidCredentialsException([this.message]);

  /// Exception thrown when AWS credentials could not be loaded by an
  /// [AWSCredentialsProvider].
  const InvalidCredentialsException.couldNotLoad([String? message])
      : this(message ?? 'Could not load credentials');

  /// Further information about the exception, if any.
  final String? message;

  @override
  String toString() =>
      'InvalidCredentialsException${message == null ? '' : ': $message'}';
}

/// A utility for retrieving AWS credentials at runtime.
abstract interface class AWSCredentialsProvider with AWSDebuggable {
  /// Creates a [StaticCredentialsProvider] with the given [credentials].
  const factory AWSCredentialsProvider(AWSCredentials credentials) =
      StaticCredentialsProvider;

  /// {@template aws_signature_v4.environment_credentials_provider}
  /// Creates an [AWSCredentialsProvider] for credentials injected
  /// via the platform-specific environment.
  ///
  /// On the VM, this uses `Platform.environment`. On the Web, this uses the
  /// Dart environment, e.g. `--dart-define` for Flutter.
  ///
  /// To always use the Dart environment, use
  /// [AWSCredentialsProvider.dartEnvironment] instead.
  /// {@endtemplate}
  const factory AWSCredentialsProvider.environment() =
      EnvironmentCredentialsProvider;

  /// {@template aws_signature_v4.dart_environment_credentials_provider}
  /// Creates an [AWSCredentialsProvider] for credentials injected via the Dart
  /// environment.
  /// {@endtemplate}
  const factory AWSCredentialsProvider.dartEnvironment() =
      DartEnvironmentCredentialsProvider;

  /// {@template aws_signature_v4.profile_credentials_provider}
  /// Creates an [AWSCredentialsProvider] for credentials from an AWS shared
  /// credentials file.
  ///
  /// Specify [profileName] to load from a specific profile. If none is
  /// specified, the `default` profile is used.
  /// {@endtemplate}
  const factory AWSCredentialsProvider.profile([String profileName]) =
      ProfileCredentialsProvider;

  /// {@template aws_signature_v4.default_credentials_provider_chain}
  /// Uses the default chain to try loading credentials from the following
  /// sources, in order:
  ///
  /// - Environment variables (e.g. `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`)
  /// - The default AWS profile
  /// - ECS container (TODO)
  /// - EC2 IMDS service (TODO)
  /// {@endtemplate}
  const factory AWSCredentialsProvider.defaultChain() =
      DefaultCredentialsProviderChain;

  /// Retrieves AWS credentials.
  FutureOr<AWSCredentials> retrieve();
}

/// {@template aws_signature_v4.static_credentials_provider}
/// Creates an [AWSCredentialsProvider] for a set of static, compile-time AWS
/// credentials.
/// {@endtemplate}
class StaticCredentialsProvider implements AWSCredentialsProvider {
  /// {@macro aws_signature_v4.static_credentials_provider}
  const StaticCredentialsProvider(this._credentials);

  final AWSCredentials _credentials;

  @override
  AWSCredentials retrieve() => _credentials;

  @override
  String get runtimeTypeName => 'StaticCredentialsProvider';
}

/// {@macro aws_signature_v4.dart_environment_credentials_provider}
class DartEnvironmentCredentialsProvider implements AWSCredentialsProvider {
  /// {@macro aws_signature_v4.dart_environment_credentials_provider}
  const DartEnvironmentCredentialsProvider();

  @override
  AWSCredentials retrieve() {
    var accessKeyId = const String.fromEnvironment(zAccessKeyId);
    if (zIsWeb && zAssertsEnabled && accessKeyId.isEmpty) {
      // Fallback for testing on Web
      accessKeyId = lookupPlatformEnv(zAccessKeyId) ?? '';
    }
    var secretAccessKey = const String.fromEnvironment(zSecretAccessKey);
    if (zIsWeb && zAssertsEnabled && secretAccessKey.isEmpty) {
      // Fallback for testing on Web
      secretAccessKey = lookupPlatformEnv(zSecretAccessKey) ?? '';
    }
    var sessionToken = const String.fromEnvironment(zSessionToken);
    if (zIsWeb && zAssertsEnabled && sessionToken.isEmpty) {
      // Fallback for testing on Web
      sessionToken = lookupPlatformEnv(zSessionToken) ?? '';
    }

    if (accessKeyId.isEmpty || secretAccessKey.isEmpty) {
      throw const InvalidCredentialsException.couldNotLoad();
    }

    return AWSCredentials(
      accessKeyId,
      secretAccessKey,
      sessionToken.isEmpty ? null : sessionToken,
    );
  }

  @override
  String get runtimeTypeName => 'DartEnvironmentCredentialsProvider';
}

/// {@macro aws_signature_v4.environment_credentials_provider}
class EnvironmentCredentialsProvider implements AWSCredentialsProvider {
  /// {@macro aws_signature_v4.environment_credentials_provider}
  const EnvironmentCredentialsProvider();

  @override
  AWSCredentials retrieve() {
    // On Android, iOS and Web, use the Dart VM's environment instead of
    // the OS's since platform environment variables are not as useful or
    // entirely unavailable.
    if (os.isAndroid || os.isIOS || os.isBrowser) {
      return const DartEnvironmentCredentialsProvider().retrieve();
    }

    final accessKeyId = lookupPlatformEnv(zAccessKeyId) ?? '';
    final secretAccessKey = lookupPlatformEnv(zSecretAccessKey) ?? '';
    final sessionToken = lookupPlatformEnv(zSessionToken);

    if (accessKeyId.isEmpty || secretAccessKey.isEmpty) {
      throw const InvalidCredentialsException.couldNotLoad();
    }

    return AWSCredentials(
      accessKeyId,
      secretAccessKey,
      sessionToken == null || sessionToken.isEmpty ? null : sessionToken,
    );
  }

  @override
  String get runtimeTypeName => 'EnvironmentCredentialsProvider';
}

/// {@macro aws_signature_v4.profile_credentials_provider}
class ProfileCredentialsProvider implements AWSCredentialsProvider {
  /// {@macro aws_signature_v4.profile_credentials_provider}
  const ProfileCredentialsProvider([this.profileName = 'default']);

  /// The name of the profile to use from the AWS configuration and shared
  /// credentials files.
  final String profileName;

  @override
  Future<AWSCredentials> retrieve() async {
    final profileFile = await const AWSProfileFileLoader().load();
    final profileCredentials = profileFile.credentials(profileName);
    if (profileCredentials == null) {
      throw InvalidCredentialsException.couldNotLoad(
        'Could not load credentials for profile "$profileName"',
      );
    }
    return profileCredentials.retrieve();
  }

  @override
  String get runtimeTypeName => 'ProfileCredentialsProvider';
}
