// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_connect_client/src/cognito_connect_credentials_provider.dart';
import 'package:amplify_connect_client/src/shared_preferences_device_id_store.dart';
import 'package:amplify_connect_client_dart/amplify_connect_client_dart.dart';

/// {@template amplify_connect_client.amplify_connect_client_flutter}
/// Flutter entry point for the Amazon Connect Customer Profiles identify
/// endpoint.
///
/// Wires the pure-Dart [AmplifyConnectClient] to Amplify Auth (for the access
/// token or guest credentials) and shared preferences (for the device id,
/// shared with other Amplify packages under `com.amplifyframework.device_id`).
///
/// [identifyUser] is the only public method. Register a device by passing
/// [IdentifyUserOptions] with a `channelType` and `address` (push token); the
/// client fills in the stable device id and platform.
///
/// ## Usage
///
/// ```dart
/// final client = AmplifyConnectClientFlutter.create(
///   configuration: ConnectClientConfiguration(
///     endpoint: 'https://abc123.execute-api.us-east-1.amazonaws.com',
///     region: 'us-east-1',
///   ),
/// );
///
/// // Identify a user.
/// await client.identifyUser(
///   userId: 'user-123',
///   userProfile: const UserProfile(email: 'user@example.com'),
/// );
///
/// // Register a device (folded into identifyUser via options).
/// await client.identifyUser(
///   userId: 'user-123',
///   userProfile: const UserProfile(),
///   options: IdentifyUserOptions(
///     address: fcmToken,
///     channelType: ChannelType.gcm,
///   ),
/// );
/// ```
/// {@endtemplate}
class AmplifyConnectClientFlutter {
  AmplifyConnectClientFlutter._(this._delegate);

  /// {@macro amplify_connect_client.amplify_connect_client_flutter}
  ///
  /// By default resolves the session from Amplify Auth and persists the device
  /// id in shared preferences. Both can be overridden for testing.
  static AmplifyConnectClientFlutter create({
    required ConnectClientConfiguration configuration,
    ConnectCredentialsProvider? credentialsProvider,
    DeviceIdStore? deviceIdStore,
    String? appVersion,
  }) {
    final client = AmplifyConnectClient(
      configuration: configuration,
      credentialsProvider:
          credentialsProvider ?? const CognitoConnectCredentialsProvider(),
      deviceIdStore: deviceIdStore ?? SharedPreferencesDeviceIdStore(),
      platform: _platformName(),
      appVersion: appVersion,
    );
    return AmplifyConnectClientFlutter._(client);
  }

  /// Creates a client from a decoded `amplify_outputs.json` map, reading the
  /// `analytics.amazon_connect_customer_profiles` section for the endpoint and
  /// region.
  static AmplifyConnectClientFlutter createFromAmplifyOutputs({
    required Map<String, dynamic> amplifyOutputs,
    ConnectCredentialsProvider? credentialsProvider,
    DeviceIdStore? deviceIdStore,
    String? appVersion,
  }) => create(
    configuration: ConnectClientConfiguration.fromAmplifyOutputs(
      amplifyOutputs,
    ),
    credentialsProvider: credentialsProvider,
    deviceIdStore: deviceIdStore,
    appVersion: appVersion,
  );

  final AmplifyConnectClient _delegate;

  /// See [AmplifyConnectClient.identifyUser].
  Future<void> identifyUser({
    required UserProfile userProfile,
    String? userId,
    IdentifyUserOptions? options,
  }) => _delegate.identifyUser(
    userProfile: userProfile,
    userId: userId,
    options: options,
  );

  static String _platformName() {
    if (Platform.isAndroid) return 'Android';
    if (Platform.isIOS) return 'iOS';
    if (Platform.isMacOS) return 'macOS';
    if (Platform.isWindows) return 'Windows';
    if (Platform.isLinux) return 'Linux';
    return Platform.operatingSystem;
  }
}
