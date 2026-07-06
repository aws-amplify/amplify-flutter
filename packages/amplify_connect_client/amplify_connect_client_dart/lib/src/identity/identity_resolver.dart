// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client_dart/src/services/customer_profiles_service.dart';

/// The searchable profile key that binds a Cognito identity to a profile.
const cognitoUserKeyName = 'cognitoUserKey';

/// {@template amplify_connect_client.identity_resolver}
/// Resolves the Customer Profiles `ProfileId` for a Cognito user.
///
/// Uses the canonical identity flow: search by the [cognitoUserKeyName]; if no
/// profile exists and creation is allowed, create one seeded with the
/// `CognitoUserId` attribute and bind it with `AddProfileKey`.
///
/// This flow is used (rather than relying on `PutProfileObject` auto-creation)
/// because `PutProfileObject` returns only a `ProfileObjectUniqueKey`, never a
/// `ProfileId`, and `UpdateProfile` requires the `ProfileId`.
/// {@endtemplate}
class IdentityResolver {
  /// {@macro amplify_connect_client.identity_resolver}
  IdentityResolver(this._service);

  final CustomerProfilesService _service;

  /// Resolves the `ProfileId` for [cognitoUserId].
  ///
  /// Returns `null` when no profile exists and [createIfMissing] is `false`.
  /// When [createIfMissing] is `true`, a new profile is created and its id
  /// returned.
  Future<String?> resolveProfileId(
    String cognitoUserId, {
    required bool createIfMissing,
  }) async {
    final existing = await _service.searchProfiles(
      keyName: cognitoUserKeyName,
      values: [cognitoUserId],
    );
    if (existing.isNotEmpty) {
      final profileId = existing.first['ProfileId'];
      if (profileId is String && profileId.isNotEmpty) return profileId;
    }
    if (!createIfMissing) return null;

    final profileId = await _service.createProfile(
      attributes: {'CognitoUserId': cognitoUserId},
    );
    await _service.addProfileKey(
      profileId: profileId,
      keyName: cognitoUserKeyName,
      values: [cognitoUserId],
    );
    return profileId;
  }
}
