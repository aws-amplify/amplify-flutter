// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client_dart/src/connect_client_configuration.dart';
import 'package:amplify_connect_client_dart/src/connect_credentials_provider.dart';
import 'package:amplify_connect_client_dart/src/exception/connect_client_exception.dart';
import 'package:amplify_connect_client_dart/src/models/channel_type.dart';
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
/// The client is a thin authorized `POST`: it resolves the caller's session
/// through an injected [ConnectCredentialsProvider] and sends the request to
/// the authenticated or guest route accordingly. Device registration is folded
/// into [identifyUser] via [IdentifyUserOptions] — there is no separate device
/// route in the backend contract.
///
/// This pure-Dart core signs guest requests with SigV4 (`execute-api`) and
/// reads the stable device id through an injected [DeviceIdStore]. The
/// `amplify_connect_client` Flutter package wires these to Amplify Auth and
/// shared preferences.
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
  /// [platform] and [appVersion] are optional device context folded into
  /// [registerDevice]; the Flutter wrapper supplies [platform] from the OS.
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
  /// identity key. Device registration and merge-on-sign-in are expressed via
  /// [options].
  Future<void> identifyUser({
    required UserProfile userProfile,
    String? userId,
    IdentifyUserOptions? options,
  }) async {
    final session = await _credentialsProvider.fetchSession();
    final body = <String, dynamic>{
      'userId': ?userId,
      'userProfile': userProfile.toJson(),
      if (options != null && !options.isEmpty) 'options': options.toJson(),
    };
    await _service.identify(session: session, body: body);
    _logger.info(
      'identifyUser sent (${session.isAuthenticated ? 'authenticated' : 'guest'})',
    );
  }

  /// Registers the current device's push token.
  ///
  /// Folds into [identifyUser]: the token, the stable device id, and the
  /// channel are sent as [IdentifyUserOptions] on an identify call. Re-calling
  /// with the same device upserts in place (the backend keys the device object
  /// on `deviceId`). Provide [userProfile] to also update user attributes in
  /// the same call.
  Future<void> registerDevice({
    required String deviceToken,
    required ChannelType channelType,
    String? userId,
    UserProfile userProfile = const UserProfile(),
    String? appVersion,
    String? previousGuestIdentityId,
  }) async {
    final deviceId = await _deviceIdStore.getOrCreateDeviceId();
    await identifyUser(
      userId: userId,
      userProfile: userProfile,
      options: IdentifyUserOptions(
        address: deviceToken,
        deviceId: deviceId,
        channelType: channelType,
        platform: _platform,
        appVersion: appVersion ?? _appVersion,
        previousGuestIdentityId: previousGuestIdentityId,
      ),
    );
    _logger.info('registerDevice sent for channel ${channelType.value}');
  }

  /// Device removal is not supported by the current backend contract.
  ///
  /// The identify endpoint exposes no device-deletion route, and the `optOut`
  /// option is accepted but has no effect. This throws until the backend adds
  /// a client-facing removal route.
  Future<void> removeDevice() async {
    throw const ConnectUnsupportedOperationException(
      'removeDevice is not supported: the identify endpoint has no '
      'device-removal route.',
    );
  }

  /// Clears in-memory session state.
  ///
  /// The client holds no cross-call identity state in the endpoint model, so
  /// this is a no-op beyond logging; call on sign-out for symmetry. The shared
  /// device id is intentionally retained (it identifies the device, not the
  /// user).
  void reset() {
    _logger.info('Client reset');
  }
}
