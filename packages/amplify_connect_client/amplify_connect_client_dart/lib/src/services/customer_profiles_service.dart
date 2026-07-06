// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_connect_client_dart/src/exception/connect_client_exception.dart';
import 'package:amplify_connect_client_dart/src/services/sigv4_client.dart';
import 'package:aws_common/aws_common.dart';

/// {@template amplify_connect_client.customer_profiles_service}
/// A thin, typed wrapper over the Connect Customer Profiles REST API.
///
/// Each method signs the request with [SigV4Client], and maps non-2xx
/// responses to a typed [ConnectClientException].
/// {@endtemplate}
class CustomerProfilesService {
  /// {@macro amplify_connect_client.customer_profiles_service}
  CustomerProfilesService({
    required SigV4Client client,
    required String domainName,
    required String region,
  }) : _client = client,
       _domainName = domainName,
       _endpoint = 'https://profile.$region.amazonaws.com';

  final SigV4Client _client;
  final String _domainName;
  final String _endpoint;

  Uri _uri(String path) => Uri.parse('$_endpoint$path');

  Future<Map<String, dynamic>> _send(
    AWSHttpMethod method,
    String path, {
    Map<String, dynamic>? body,
  }) async {
    final response = await _client.send(
      method: method,
      uri: _uri(path),
      body: body != null ? jsonEncode(body) : null,
    );
    if (!response.isSuccess) {
      throw connectExceptionFromResponse(response.statusCode, response.json);
    }
    return response.json;
  }

  /// Searches for profiles matching [values] on the key [keyName].
  ///
  /// Returns the raw `Items` list (each entry is a profile map). Empty when no
  /// profile matches.
  Future<List<Map<String, dynamic>>> searchProfiles({
    required String keyName,
    required List<String> values,
  }) async {
    final result = await _send(
      AWSHttpMethod.post,
      '/domains/$_domainName/profiles/search',
      body: {'KeyName': keyName, 'Values': values},
    );
    final items = result['Items'];
    if (items is! List) return const [];
    return items.whereType<Map<String, dynamic>>().toList();
  }

  /// Creates a new profile and returns its `ProfileId`.
  Future<String> createProfile({
    Map<String, String>? attributes,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? phoneNumber,
  }) async {
    final body = <String, dynamic>{
      'FirstName': ?firstName,
      'LastName': ?lastName,
      'EmailAddress': ?emailAddress,
      'PhoneNumber': ?phoneNumber,
      if (attributes != null && attributes.isNotEmpty) 'Attributes': attributes,
    };
    final result = await _send(
      AWSHttpMethod.post,
      '/domains/$_domainName/profiles',
      body: body,
    );
    final profileId = result['ProfileId'];
    if (profileId is! String || profileId.isEmpty) {
      throw const ConnectProfileNotFoundException();
    }
    return profileId;
  }

  /// Adds a searchable key ([keyName]) with [values] to a profile.
  Future<void> addProfileKey({
    required String profileId,
    required String keyName,
    required List<String> values,
  }) async {
    await _send(
      AWSHttpMethod.post,
      '/domains/$_domainName/profiles/keys',
      body: {'ProfileId': profileId, 'KeyName': keyName, 'Values': values},
    );
  }

  /// Updates standard fields and attributes on an existing profile.
  Future<void> updateProfile({
    required String profileId,
    Map<String, String>? attributes,
    String? firstName,
    String? lastName,
    String? emailAddress,
    String? phoneNumber,
  }) async {
    final body = <String, dynamic>{
      'ProfileId': profileId,
      'FirstName': ?firstName,
      'LastName': ?lastName,
      'EmailAddress': ?emailAddress,
      'PhoneNumber': ?phoneNumber,
      if (attributes != null && attributes.isNotEmpty) 'Attributes': attributes,
    };
    await _send(
      AWSHttpMethod.put,
      '/domains/$_domainName/profiles',
      body: body,
    );
  }

  /// Creates or updates a profile object of [objectTypeName] and returns the
  /// service-generated `ProfileObjectUniqueKey`.
  ///
  /// When [profileId] is omitted, the object type's `PROFILE` key routes the
  /// object to (or auto-creates) the correct profile.
  Future<String> putProfileObject({
    required String objectTypeName,
    required Map<String, dynamic> object,
    String? profileId,
  }) async {
    final body = <String, dynamic>{
      'ProfileId': ?profileId,
      'ObjectTypeName': objectTypeName,
      'Object': jsonEncode(object),
    };
    final result = await _send(
      AWSHttpMethod.put,
      '/domains/$_domainName/profiles/objects',
      body: body,
    );
    final key = result['ProfileObjectUniqueKey'];
    if (key is! String || key.isEmpty) {
      throw const ConnectServiceException(
        detail: 'PutProfileObject did not return a ProfileObjectUniqueKey.',
      );
    }
    return key;
  }

  /// Deletes the profile object identified by [profileObjectUniqueKey].
  Future<void> deleteProfileObject({
    required String profileId,
    required String objectTypeName,
    required String profileObjectUniqueKey,
  }) async {
    await _send(
      AWSHttpMethod.post,
      '/domains/$_domainName/profiles/objects/delete',
      body: {
        'ProfileId': profileId,
        'ObjectTypeName': objectTypeName,
        'ProfileObjectUniqueKey': profileObjectUniqueKey,
      },
    );
  }

  /// Returns whether the profile object type [objectTypeName] exists on the
  /// domain.
  ///
  /// A 404 resolves to `false`; other non-2xx responses throw.
  Future<bool> objectTypeExists(String objectTypeName) async {
    final response = await _client.send(
      method: AWSHttpMethod.get,
      uri: _uri('/domains/$_domainName/object-types/$objectTypeName'),
    );
    if (response.isSuccess) return true;
    if (response.statusCode == 404) return false;
    throw connectExceptionFromResponse(response.statusCode, response.json);
  }
}
