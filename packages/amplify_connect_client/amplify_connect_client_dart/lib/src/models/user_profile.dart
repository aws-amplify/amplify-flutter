// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:meta/meta.dart';

/// {@template amplify_connect_client.user_profile}
/// User-level attributes applied to a Connect Customer Profile via
/// `AmplifyConnectClient.identifyUser`.
///
/// All fields are optional. Provided values map onto the standard Customer
/// Profiles fields and the profile `Attributes` map:
///
/// | Field              | Destination                          |
/// |--------------------|--------------------------------------|
/// | [name]             | `FirstName` + `LastName`             |
/// | [email]            | `EmailAddress`                       |
/// | [phoneNumber]      | `PhoneNumber`                        |
/// | [plan]             | `Attributes['plan']`                 |
/// | [customAttributes] | merged into `Attributes`             |
/// {@endtemplate}
@immutable
class UserProfile {
  /// {@macro amplify_connect_client.user_profile}
  const UserProfile({
    this.name,
    this.email,
    this.phoneNumber,
    this.plan,
    this.customAttributes,
  });

  /// The user's full name. Split on the first space into `FirstName` and
  /// `LastName` when written to the standard profile.
  final String? name;

  /// The user's email address, mapped to the standard `EmailAddress` field.
  final String? email;

  /// The user's phone number, mapped to the standard `PhoneNumber` field.
  final String? phoneNumber;

  /// The user's plan or tier, stored as the custom attribute `plan`.
  final String? plan;

  /// Additional custom attributes merged into the profile `Attributes` map.
  final Map<String, String>? customAttributes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserProfile &&
          other.name == name &&
          other.email == email &&
          other.phoneNumber == phoneNumber &&
          other.plan == plan &&
          _mapEquals(other.customAttributes, customAttributes);

  @override
  int get hashCode => Object.hash(
    name,
    email,
    phoneNumber,
    plan,
    Object.hashAllUnordered(customAttributes?.entries.map((e) => e.key) ?? []),
  );

  static bool _mapEquals(Map<String, String>? a, Map<String, String>? b) {
    if (identical(a, b)) return true;
    if (a == null || b == null || a.length != b.length) return false;
    for (final entry in a.entries) {
      if (b[entry.key] != entry.value) return false;
    }
    return true;
  }
}
