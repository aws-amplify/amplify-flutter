// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:amplify_connect_client/src/cognito_connect_credentials_provider.dart';
import 'package:amplify_connect_client/src/secure_storage_device_id_store.dart';
import 'package:amplify_connect_client_dart/amplify_connect_client_dart.dart';

/// {@template amplify_connect_client.amplify_connect_client_flutter}
/// Flutter entry point for the Amazon Connect Customer Profiles client.
///
/// Wires the pure-Dart [AmplifyConnectClient] to Amplify Auth (for credentials
/// and the Cognito identity) and secure storage (for the device id).
///
/// ## Usage
///
/// ```dart
/// final client = await AmplifyConnectClientFlutter.create(
///   configuration: ConnectClientConfiguration(
///     domainName: 'my-profiles-domain',
///     region: 'us-east-1',
///   ),
/// );
///
/// await client.identifyUser(
///   userId: 'user-123',
///   userProfile: const UserProfile(email: 'user@example.com'),
/// );
/// await client.registerDevice(
///   deviceToken: fcmToken,
///   channelType: ChannelType.gcm,
/// );
/// ```
/// {@endtemplate}
class AmplifyConnectClientFlutter {
  AmplifyConnectClientFlutter._(this._delegate);

  /// {@macro amplify_connect_client.amplify_connect_client_flutter}
  ///
  /// By default resolves credentials from Amplify Auth and persists the device
  /// id in secure storage. Both can be overridden for testing. When
  /// [validateObjectType] is `true` (the default), the `AmplifyDevice` object
  /// type is validated on the domain before returning, throwing
  /// [ConnectObjectTypeMissingException] if it is missing.
  static Future<AmplifyConnectClientFlutter> create({
    required ConnectClientConfiguration configuration,
    ConnectCredentialsProvider? credentialsProvider,
    DeviceIdStore? deviceIdStore,
    String? appVersion,
    bool validateObjectType = true,
  }) async {
    final client = AmplifyConnectClient(
      configuration: configuration,
      credentialsProvider:
          credentialsProvider ?? const CognitoConnectCredentialsProvider(),
      deviceIdStore: deviceIdStore ?? SecureStorageDeviceIdStore(),
      platform: _platformName(),
      appVersion: appVersion,
    );
    if (validateObjectType) {
      await client.initialize();
    }
    return AmplifyConnectClientFlutter._(client);
  }

  /// Creates a client from a decoded `amplify_outputs.json` map, reading the
  /// `connect` section for the domain name and region.
  static Future<AmplifyConnectClientFlutter> createFromAmplifyOutputs({
    required Map<String, dynamic> amplifyOutputs,
    ConnectCredentialsProvider? credentialsProvider,
    DeviceIdStore? deviceIdStore,
    String? appVersion,
    bool validateObjectType = true,
  }) => create(
    configuration: ConnectClientConfiguration.fromAmplifyOutputs(
      amplifyOutputs,
    ),
    credentialsProvider: credentialsProvider,
    deviceIdStore: deviceIdStore,
    appVersion: appVersion,
    validateObjectType: validateObjectType,
  );

  final AmplifyConnectClient _delegate;

  /// The `ProfileId` resolved for the current session, if any.
  String? get profileId => _delegate.profileId;

  /// {@macro amplify_connect_client.amplify_connect_client}
  ///
  /// See [AmplifyConnectClient.identifyUser].
  Future<void> identifyUser({
    required String userId,
    UserProfile? userProfile,
  }) => _delegate.identifyUser(userId: userId, userProfile: userProfile);

  /// See [AmplifyConnectClient.registerDevice].
  Future<void> registerDevice({
    required String deviceToken,
    required ChannelType channelType,
  }) => _delegate.registerDevice(
    deviceToken: deviceToken,
    channelType: channelType,
  );

  /// See [AmplifyConnectClient.removeDevice].
  Future<void> removeDevice() => _delegate.removeDevice();

  /// See [AmplifyConnectClient.reset].
  void reset() => _delegate.reset();

  static String _platformName() {
    if (Platform.isAndroid) return 'Android';
    if (Platform.isIOS) return 'iOS';
    if (Platform.isMacOS) return 'macOS';
    if (Platform.isWindows) return 'Windows';
    if (Platform.isLinux) return 'Linux';
    return Platform.operatingSystem;
  }
}
