// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client_dart/src/connect_client_configuration.dart';
import 'package:amplify_connect_client_dart/src/connect_credentials_provider.dart';
import 'package:amplify_connect_client_dart/src/exception/connect_client_exception.dart';
import 'package:amplify_connect_client_dart/src/identity/identity_resolver.dart';
import 'package:amplify_connect_client_dart/src/models/channel_type.dart';
import 'package:amplify_connect_client_dart/src/models/user_profile.dart';
import 'package:amplify_connect_client_dart/src/services/customer_profiles_service.dart';
import 'package:amplify_connect_client_dart/src/services/sigv4_client.dart';
import 'package:amplify_connect_client_dart/src/storage/device_id_store.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart';
import 'package:aws_common/aws_common.dart' show AWSHttpClient;
import 'package:meta/meta.dart';

/// {@template amplify_connect_client.amplify_connect_client}
/// A standalone, online-only client for Amazon Connect Customer Profiles.
///
/// Manages user profiles and device push-token registration so a Connect
/// backend can target users through Journeys. The client is transport-only: it
/// exposes explicit methods and the caller decides when to invoke them.
///
/// This pure-Dart core resolves AWS credentials and the Cognito identity
/// through an injected [ConnectCredentialsProvider], and persists the device
/// identifier through an injected [DeviceIdStore]. The `amplify_connect_client`
/// Flutter package wires these to Amplify Auth and shared preferences.
///
/// ## Identity flow
///
/// `identifyUser` resolves (or creates) the profile for the signed-in Cognito
/// user, then applies user attributes. `registerDevice` attaches an
/// `AmplifyDevice` profile object keyed by a stable device id.
///
/// ## IAM tradeoff
///
/// Because `PutProfileObject` returns only a `ProfileObjectUniqueKey` (never a
/// `ProfileId`, which `UpdateProfile` requires), the mobile Cognito
/// authenticated role holds `profile:SearchProfiles`, `profile:CreateProfile`,
/// and `profile:AddProfileKey` in addition to update/put/delete. Customer
/// Profiles has no per-profile IAM scoping, so these actions are scoped to the
/// specific Connect domain resource. This is a known, deliberate tradeoff
/// (the same domain-scoped model Pinpoint used); the profile id is derived
/// from the Cognito `sub` and profile data is targeting metadata.
///
/// ## Deferred (Phase 2)
///
/// This client performs network calls immediately and surfaces
/// [ConnectNetworkException] when offline. The SQLite-backed offline queue,
/// connectivity-triggered drain, and retry/backoff described in the design are
/// not implemented here and are tracked for a later phase.
/// {@endtemplate}
class AmplifyConnectClient {
  /// {@macro amplify_connect_client.amplify_connect_client}
  ///
  /// [platform] and [appVersion] are optional context stamped onto registered
  /// device objects; the Flutter wrapper supplies them from the platform.
  AmplifyConnectClient({
    required ConnectClientConfiguration configuration,
    required ConnectCredentialsProvider credentialsProvider,
    required DeviceIdStore deviceIdStore,
    String? platform,
    String? appVersion,
    AWSHttpClient? httpClient,
    @visibleForTesting CustomerProfilesService? profilesService,
  }) : _credentialsProvider = credentialsProvider,
       _deviceIdStore = deviceIdStore,
       _platform = platform,
       _appVersion = appVersion,
       _logger = AmplifyLogging.logger('AmplifyConnectClient'),
       _service =
           profilesService ??
           CustomerProfilesService(
             client: SigV4Client(
               credentialsProvider: credentialsProvider,
               region: configuration.region,
               httpClient: httpClient,
             ),
             domainName: configuration.domainName,
             region: configuration.region,
           ) {
    _identityResolver = IdentityResolver(_service);
  }

  /// The profile object type registered devices are stored under.
  static const deviceObjectTypeName = 'AmplifyDevice';

  final ConnectCredentialsProvider _credentialsProvider;
  final DeviceIdStore _deviceIdStore;
  final CustomerProfilesService _service;
  final String? _platform;
  final String? _appVersion;
  final Logger _logger;
  late final IdentityResolver _identityResolver;

  String? _profileId;
  bool _objectTypeValidated = false;

  /// The `ProfileId` resolved for the current session, or `null` if
  /// [identifyUser] has not been called.
  String? get profileId => _profileId;

  /// Validates that the `AmplifyDevice` profile object type exists on the
  /// domain.
  ///
  /// Safe to call more than once; the result is cached for the client's
  /// lifetime. Throws [ConnectObjectTypeMissingException] if the type is
  /// missing.
  Future<void> initialize() => _ensureObjectType();

  Future<void> _ensureObjectType() async {
    if (_objectTypeValidated) return;
    final exists = await _service.objectTypeExists(deviceObjectTypeName);
    if (!exists) {
      throw const ConnectObjectTypeMissingException();
    }
    _objectTypeValidated = true;
  }

  /// Creates or finds the signed-in user's Customer Profile and applies
  /// targeting attributes.
  ///
  /// [userId] is the developer's user identifier, stored as the `UserId`
  /// attribute. The Cognito `sub` is the routing key. Optional [userProfile]
  /// fields map onto standard profile fields and the `Attributes` map.
  Future<void> identifyUser({
    required String userId,
    UserProfile? userProfile,
  }) async {
    await _ensureObjectType();
    final credentials = await _credentialsProvider.fetchCredentials();
    final profileId = (await _identityResolver.resolveProfileId(
      credentials.cognitoUserId,
      createIfMissing: true,
    ))!;
    _profileId = profileId;

    final attributes = <String, String>{
      'CognitoUserId': credentials.cognitoUserId,
      'UserId': userId,
      'LastActive': DateTime.now().toUtc().toIso8601String(),
      'Timezone': DateTime.now().timeZoneName,
      if (userProfile?.plan != null) 'plan': userProfile!.plan!,
      ...?userProfile?.customAttributes,
    };
    final (firstName, lastName) = _splitName(userProfile?.name);

    await _service.updateProfile(
      profileId: profileId,
      firstName: firstName,
      lastName: lastName,
      emailAddress: userProfile?.email,
      phoneNumber: userProfile?.phoneNumber,
      attributes: attributes,
    );
    _logger.info('identifyUser resolved profile $profileId');
  }

  /// Registers the current device's push token against the resolved profile.
  ///
  /// Requires a prior [identifyUser] call in this session; throws
  /// [ConnectIdentifyUserRequiredException] otherwise. Re-registering with the
  /// same device updates the existing object in place (the object type keys on
  /// a stable device id).
  Future<void> registerDevice({
    required String deviceToken,
    required ChannelType channelType,
  }) async {
    await _ensureObjectType();
    final profileId = _profileId;
    if (profileId == null) {
      throw const ConnectIdentifyUserRequiredException();
    }
    final credentials = await _credentialsProvider.fetchCredentials();
    final deviceId = await _deviceIdStore.getOrCreateDeviceId();

    final object = <String, dynamic>{
      'deviceId': deviceId,
      'deviceToken': deviceToken,
      'channelType': channelType.value,
      'cognitoUserId': credentials.cognitoUserId,
      if (_platform != null) 'platform': _platform,
      if (_appVersion != null) 'appVersion': _appVersion,
      'registeredAt': DateTime.now().toUtc().toIso8601String(),
    };

    final uniqueKey = await _service.putProfileObject(
      objectTypeName: deviceObjectTypeName,
      object: object,
      profileId: profileId,
    );
    await _deviceIdStore.writeProfileObjectKey(uniqueKey);
    _logger.info('registerDevice stored device object');
  }

  /// Removes the current device's registration from the user's profile.
  ///
  /// Throws [ConnectDeviceNotRegisteredException] if no device has been
  /// registered on this device.
  Future<void> removeDevice() async {
    final deviceId = await _deviceIdStore.readDeviceId();
    final objectKey = await _deviceIdStore.readProfileObjectKey();
    if (deviceId == null || objectKey == null) {
      throw const ConnectDeviceNotRegisteredException();
    }
    final profileId = await _profileIdForRemoval();
    await _service.deleteProfileObject(
      profileId: profileId,
      objectTypeName: deviceObjectTypeName,
      profileObjectUniqueKey: objectKey,
    );
    await _deviceIdStore.clear();
    _logger.info('removeDevice cleared device object');
  }

  /// Clears in-memory session state (the resolved profile).
  ///
  /// Call on sign-out. The persisted device id is intentionally retained since
  /// it identifies the physical device, not the user; call [removeDevice] first
  /// if the device registration should also be removed.
  void reset() {
    _profileId = null;
    _logger.info('Client reset');
  }

  Future<String> _profileIdForRemoval() async {
    final cached = _profileId;
    if (cached != null) return cached;
    final credentials = await _credentialsProvider.fetchCredentials();
    final resolved = await _identityResolver.resolveProfileId(
      credentials.cognitoUserId,
      createIfMissing: false,
    );
    if (resolved == null) {
      throw const ConnectProfileNotFoundException();
    }
    _profileId = resolved;
    return resolved;
  }

  static (String?, String?) _splitName(String? name) {
    final trimmed = name?.trim() ?? '';
    if (trimmed.isEmpty) return (null, null);
    final spaceIndex = trimmed.indexOf(' ');
    if (spaceIndex < 0) return (trimmed, null);
    return (
      trimmed.substring(0, spaceIndex),
      trimmed.substring(spaceIndex + 1).trim(),
    );
  }
}
