// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client_dart/src/connect_client_configuration.dart';
import 'package:amplify_connect_client_dart/src/connect_credentials_provider.dart';
import 'package:amplify_connect_client_dart/src/exception/connect_client_exception.dart';
import 'package:amplify_connect_client_dart/src/models/identify_user_options.dart';
import 'package:amplify_connect_client_dart/src/models/user_profile.dart';
import 'package:amplify_connect_client_dart/src/services/identify_user_service.dart';
import 'package:amplify_connect_client_dart/src/storage/device_id_store.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_common/aws_common.dart' show AWSHttpClient;
import 'package:meta/meta.dart';

/// {@template amplify_connect_client.amplify_connect_client}
/// A standalone, online-only client for the Amazon Connect Customer Profiles
/// identify endpoint (a backend Lambda fronted by an HTTP API).
///
/// The single public method is [identifyUser]: it resolves the caller's session
/// through an injected [ConnectCredentialsProvider] and sends an authorized
/// `POST` to the authenticated or guest route accordingly.
///
/// Device registration is expressed through [IdentifyUserOptions] on
/// [identifyUser] (a channel type and push token) rather than a separate
/// method — there is no device route in the backend contract. When the caller
/// registers a device, the client fills in the stable device id (from the
/// injected [DeviceIdStore]) and the platform/app version defaults if the
/// caller left them unset.
///
/// This pure-Dart core signs guest requests with SigV4 (`execute-api`). The
/// `amplify_connect_client` Flutter package wires the session and device id to
/// Amplify Auth and shared preferences.
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
  /// [platform] and [appVersion] are optional device context applied to device
  /// registrations when the caller does not set them in options; the Flutter
  /// wrapper supplies [platform] from the OS.
  AmplifyConnectClient({
    required ConnectClientConfiguration configuration,
    required ConnectCredentialsProvider credentialsProvider,
    required DeviceIdStore deviceIdStore,
    String? platform,
    String? appVersion,
    AWSHttpClient? httpClient,
    @visibleForTesting IdentifyUserService? service,
  }) : _credentialsProvider = credentialsProvider,
       _deviceIdStore = deviceIdStore,
       _platform = platform,
       _appVersion = appVersion,
       _logger = AmplifyLogging.logger('AmplifyConnectClient'),
       _service =
           service ??
           IdentifyUserService(
             endpoint: configuration.endpoint,
             region: configuration.region,
             httpClient: httpClient,
           );

  final ConnectCredentialsProvider _credentialsProvider;
  final DeviceIdStore _deviceIdStore;
  final IdentifyUserService _service;
  final String? _platform;
  final String? _appVersion;
  final Logger _logger;

  /// Sends user information to the Customer Profiles endpoint.
  ///
  /// Routes to the authenticated endpoint (bearer token, keyed on the Cognito
  /// `sub`) when the session has a user-pool token, otherwise to the guest
  /// endpoint (SigV4 `execute-api`, keyed on the Identity Pool `identityId`).
  ///
  /// [userId] is optional; it is stored only as an attribute and is never the
  /// identity key.
  ///
  /// To register a device, pass [options] with a `channelType` and `address`
  /// (the push token). The client fills in the stable `deviceId` and the
  /// `platform` / `appVersion` defaults when they are not set.
  Future<void> identifyUser({
    required UserProfile userProfile,
    String? userId,
    IdentifyUserOptions? options,
  }) async {
    final session = await _credentialsProvider.fetchSession();
    final effectiveOptions = await _withDeviceContext(options);
    final body = <String, dynamic>{
      'userId': ?userId,
      'userProfile': userProfile.toJson(),
      if (effectiveOptions != null && !effectiveOptions.isEmpty)
        'options': effectiveOptions.toJson(),
    };
    await _service.identify(session: session, body: body);
    _logger.info(
      'identifyUser sent '
      '(${session.isAuthenticated ? 'authenticated' : 'guest'})',
    );
  }

  /// Fills in device context (stable id, platform, app version) when [options]
  /// expresses a device registration and the caller left those unset.
  Future<IdentifyUserOptions?> _withDeviceContext(
    IdentifyUserOptions? options,
  ) async {
    if (options == null) return null;
    final registersDevice =
        options.channelType != null || options.address != null;
    if (!registersDevice) return options;

    final deviceId =
        options.deviceId ?? await _deviceIdStore.getOrCreateDeviceId();
    return IdentifyUserOptions(
      userAttributes: options.userAttributes,
      address: options.address,
      deviceId: deviceId,
      channelType: options.channelType,
      platform: options.platform ?? _platform,
      appVersion: options.appVersion ?? _appVersion,
      optOut: options.optOut,
    );
  }
}
