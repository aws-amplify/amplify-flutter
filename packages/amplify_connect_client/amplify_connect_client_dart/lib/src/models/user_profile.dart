// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_connect_client_dart/src/models/demographic.dart';
import 'package:amplify_connect_client_dart/src/models/location.dart';
import 'package:meta/meta.dart';

/// {@template amplify_connect_client.user_profile}
/// User attributes sent to the Customer Profiles identify endpoint.
///
/// Mirrors the endpoint's `userProfile` object. All fields are optional. Note
/// that free-form attributes go in [customProperties] as `key -> list of
/// values` (for example `{'phoneNumber': ['555-555-5555']}`).
/// {@endtemplate}
@immutable
class UserProfile {
  /// {@macro amplify_connect_client.user_profile}
  const UserProfile({
    this.name,
    this.email,
    this.plan,
    this.customProperties,
    this.demographic,
    this.location,
    this.metrics,
  });

  /// The user's name.
  final String? name;

  /// The user's email address.
  final String? email;

  /// The user's plan or tier.
  final String? plan;

  /// Custom string properties, each mapping a key to a list of values.
  final Map<String, List<String>>? customProperties;

  /// Device/app demographic information.
  final Demographic? demographic;

  /// Location information.
  final Location? location;

  /// Numeric metrics keyed by name.
  final Map<String, num>? metrics;

  /// Serializes to the endpoint's `userProfile` shape, omitting null fields.
  Map<String, dynamic> toJson() => {
    'name': ?name,
    'email': ?email,
    'plan': ?plan,
    if (customProperties != null && customProperties!.isNotEmpty)
      'customProperties': customProperties,
    'demographic': ?demographic?.toJson(),
    'location': ?location?.toJson(),
    if (metrics != null && metrics!.isNotEmpty) 'metrics': metrics,
  };
}
