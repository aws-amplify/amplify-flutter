// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client_dart/src/models/location.dart';
import 'package:meta/meta.dart';

/// {@template amplify_connect_client.user_profile}
/// Customer-controlled profile and targeting attributes sent to the
/// identify endpoint. All fields are optional.
/// {@endtemplate}
@immutable
class UserProfile {
  /// {@macro amplify_connect_client.user_profile}
  const UserProfile({
    this.email,
    this.name,
    this.phone,
    this.customAttributes,
    this.location,
  });

  /// The user's email address.
  final String? email;

  /// The user's name.
  final String? name;

  /// The user's phone number.
  final String? phone;

  /// Custom string attributes for targeting.
  final Map<String, String>? customAttributes;

  /// The user's location.
  final Location? location;

  /// Serializes to the endpoint's `userProfile` shape, omitting null fields.
  Map<String, dynamic> toJson() => {
    'email': ?email,
    'name': ?name,
    'phone': ?phone,
    if (customAttributes != null && customAttributes!.isNotEmpty)
      'customAttributes': customAttributes,
    'location': ?location?.toJson(),
  };
}
