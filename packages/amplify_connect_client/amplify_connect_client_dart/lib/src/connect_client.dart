// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client_dart/src/connect_client_configuration.dart';
import 'package:amplify_connect_client_dart/src/connect_credentials_provider.dart';
import 'package:amplify_connect_client_dart/src/exception/connect_client_exception.dart';
import 'package:amplify_connect_client_dart/src/models/channel_type.dart';
import 'package:amplify_connect_client_dart/src/models/user_profile.dart';
import 'package:amplify_connect_client_dart/src/services/connect_write_service.dart';
import 'package:amplify_connect_client_dart/src/storage/device_id_store.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_common/aws_common.dart' show AWSHttpClient;
import 'package:meta/meta.dart';

/// {@template amplify_connect_client.amplify_connect_client}
/// A standalone, online-only client for the Amazon Connect Customer Profiles
/// write endpoint (a backend Lambda fronted by an HTTP API).
///
/// Exposes three methods — [identifyUser], [registerDevice], and
/// [removeDevice]. Every request is SigV4-signed for `execute-api` with the
/// caller's AWS credentials (authenticated or guest); the backend derives the
/// principal identity from the signature, so no user identifier is sent.
///
/// This pure-Dart core resolves credentials through an injected
/// [ConnectCredentialsProvider] and the stable device id through an injected
/// [DeviceIdStore]. The `amplify_connect_client` Flutter package wires these to
/// Amplify Auth and shared preferences, and supplies the `platform` /
/// `appVersion` / `channelType` device context.
///
/// ## Deferred (Phase 2)
///
/// Network calls happen immediately and surface [ConnectNetworkException] when
/// offline. The offline queue, connectivity drain, and retry/backoff are not
/// implemented here.
/// {@endtemplate}
class AmplifyConnectClient {
  /// {@macro amplify_connect_client.amplify_connect_client}
  ///
  /// [channelType] is the push channel for device registration, resolved by
  /// the wrapper from the platform and build mode; when null, [registerDevice]
  /// throws [ConnectUnsupportedOperationException]. [platform] and [appVersion]
  /// are optional device context.
  AmplifyConnectClient({
    required ConnectClientConfiguration configuration,
    required ConnectCredentialsProvider credentialsProvider,
    required DeviceIdStore deviceIdStore,
    String? platform,
    String? appVersion,
    ChannelType? channelType,
    AWSHttpClient? httpClient,
    @visibleForTesting ConnectWriteService? service,
  }) : _credentialsProvider = credentialsProvider,
       _deviceIdStore = deviceIdStore,
       _platform = platform,
       _appVersion = appVersion,
       _channelType = channelType,
       _logger = AmplifyLogging.logger('AmplifyConnectClient'),
       _service =
           service ??
           ConnectWriteService(
             endpoint: configuration.endpoint,
             region: configuration.region,
             httpClient: httpClient,
           );

  final ConnectCredentialsProvider _credentialsProvider;
  final DeviceIdStore _deviceIdStore;
  final ConnectWriteService _service;
  final String? _platform;
  final String? _appVersion;
  final ChannelType? _channelType;
  final Logger _logger;

  /// Creates or updates the caller's Customer Profile with [userProfile].
  Future<void> identifyUser({required UserProfile userProfile}) async {
    _validateProfile(userProfile);
    final credentials = await _credentialsProvider.fetchCredentials();
    await _service.identifyUser(
      credentials: credentials,
      userProfile: userProfile.toJson(),
    );
    _logger.info('identifyUser sent');
  }

  /// Registers this device's push [token] against the caller's profile.
  ///
  /// The stable device id, platform, app version, and channel type are supplied
  /// by the library. Re-registering the same device upserts in place — the
  /// device id is the server-side upsert key, so it must stay stable across
  /// app launches and token refreshes.
  ///
  /// Throws [ConnectUnsupportedOperationException] on platforms without a push
  /// channel.
  Future<void> registerDevice({required String token}) async {
    _checkLength('token', token);
    final channelType = _channelType;
    if (channelType == null) {
      throw const ConnectUnsupportedOperationException(
        'Device registration is not supported on this platform.',
      );
    }
    final credentials = await _credentialsProvider.fetchCredentials();
    final deviceId = await _deviceIdStore.getOrCreateDeviceId();
    await _service.registerDevice(
      credentials: credentials,
      device: <String, dynamic>{
        'token': token,
        'deviceId': deviceId,
        'platform': ?_platform,
        'appVersion': ?_appVersion,
        'channelType': channelType.value,
      },
    );
    _logger.info('registerDevice sent for channel ${channelType.value}');
  }

  /// Removes this device from the caller's profile.
  ///
  /// Resolves the stable device id from storage (the same id used to register).
  Future<void> removeDevice() async {
    final credentials = await _credentialsProvider.fetchCredentials();
    final deviceId = await _deviceIdStore.getOrCreateDeviceId();
    await _service.removeDevice(credentials: credentials, deviceId: deviceId);
    _logger.info('removeDevice sent');
  }

  /// Maximum length (in characters) the backend accepts for a single
  /// attribute. Mirrors the backend `MAX_ATTRIBUTE_LENGTH` exactly — length
  /// only, no count caps or character-class rules — to avoid client/server
  /// validation drift.
  static const _maxAttributeLength = 255;

  void _validateProfile(UserProfile profile) {
    _checkLength('email', profile.email);
    _checkLength('name', profile.name);
    _checkLength('phone', profile.phone);
    final location = profile.location;
    if (location != null) {
      _checkLength('location.city', location.city);
      _checkLength('location.country', location.country);
      _checkLength('location.postalCode', location.postalCode);
      _checkLength('location.region', location.region);
    }
    final attributes = profile.customAttributes;
    if (attributes != null) {
      for (final entry in attributes.entries) {
        _checkLength("customAttributes key '${entry.key}'", entry.key);
        _checkLength("customAttributes value for '${entry.key}'", entry.value);
      }
    }
  }

  void _checkLength(String field, String? value) {
    if (value != null && value.length > _maxAttributeLength) {
      throw ConnectValidationException(
        detail:
            '$field exceeds the maximum length of $_maxAttributeLength '
            'characters.',
      );
    }
  }
}
