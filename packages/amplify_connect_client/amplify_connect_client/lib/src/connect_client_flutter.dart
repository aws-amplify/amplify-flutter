// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client/src/cognito_connect_credentials_provider.dart';
import 'package:amplify_connect_client/src/shared_preferences_device_id_store.dart';
import 'package:amplify_connect_client_dart/amplify_connect_client_dart.dart';
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kDebugMode;

/// {@template amplify_connect_client.amplify_connect_client_flutter}
/// Flutter entry point for the Amazon Connect Customer Profiles write endpoint.
///
/// Wires the pure-Dart [AmplifyConnectClient] to Amplify Auth (for the AWS
/// credentials used to sign requests) and shared preferences (for the device
/// id, shared with other Amplify packages under `com.amplifyframework.device_id`).
/// The push channel type is resolved from the platform and build mode.
///
/// ## Usage
///
/// ```dart
/// final client = AmplifyConnectClientFlutter.createFromAmplifyOutputs(
///   amplifyOutputs: amplifyOutputs,
/// );
///
/// await client.identifyUser(
///   userProfile: const UserProfile(email: 'user@example.com'),
/// );
/// await client.registerDevice(token: fcmToken);
/// await client.removeDevice();
/// ```
/// {@endtemplate}
class AmplifyConnectClientFlutter {
  AmplifyConnectClientFlutter._(this._delegate);

  /// {@macro amplify_connect_client.amplify_connect_client_flutter}
  ///
  /// By default resolves credentials from Amplify Auth and persists the device
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
      channelType: _resolveChannelType(),
    );
    return AmplifyConnectClientFlutter._(client);
  }

  /// Creates a client from a decoded `amplify_outputs.json` map, reading the
  /// `notifications.amazon_connect_customer_profiles` section for the endpoint
  /// and region.
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
  Future<void> identifyUser({required UserProfile userProfile}) =>
      _delegate.identifyUser(userProfile: userProfile);

  /// See [AmplifyConnectClient.registerDevice].
  Future<void> registerDevice({required String token}) =>
      _delegate.registerDevice(token: token);

  /// See [AmplifyConnectClient.removeDevice].
  Future<void> removeDevice() => _delegate.removeDevice();

  /// Resolves the push channel from the platform and build mode. Returns null
  /// on platforms without a push channel (device registration is unsupported
  /// there).
  static ChannelType? _resolveChannelType() {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return ChannelType.gcm;
      case TargetPlatform.iOS:
        // Debug builds register with the APNs sandbox.
        return kDebugMode ? ChannelType.apnsSandbox : ChannelType.apns;
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
      case TargetPlatform.linux:
      case TargetPlatform.fuchsia:
        return null;
    }
  }

  static String _platformName() {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return 'Android';
      case TargetPlatform.iOS:
        return 'iOS';
      case TargetPlatform.macOS:
        return 'macOS';
      case TargetPlatform.windows:
        return 'Windows';
      case TargetPlatform.linux:
        return 'Linux';
      case TargetPlatform.fuchsia:
        return 'Fuchsia';
    }
  }
}
