// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_code_delivery_details.g.dart';

/// The medium to which an item (e.g., confirmation code) was delivered.
enum DeliveryMedium {
  /// The item was delivered to a registered email.
  email,

  /// The item was delivered to a registered phone number.
  phone,

  /// The item was delivered to a registered phone number via SMS.
  sms,

  /// The item was delivered to an unknown destination.
  unknown,
}

/// {@template amplify_core.auth.auth_code_delivery_details}
/// Details on where a confirmation code has been delivered.
/// {@endtemplate}
@JsonSerializable(
  includeIfNull: false,
  explicitToJson: true,
  createFactory: false,
)
class AuthCodeDeliveryDetails
    with
        AWSEquatable<AuthCodeDeliveryDetails>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  /// {@macro amplify_core.auth.auth_code_delivery_details}
  const AuthCodeDeliveryDetails({
    required this.deliveryMedium,
    this.destination,
    this.attributeKey,
  });

  /// The type of [destination], to which the confirmation code was delivered.
  final DeliveryMedium deliveryMedium;

  /// Where the confirmation code was delivered.
  ///
  /// The type of destination represented by this is given by [deliveryMedium].
  final String? destination;

  /// If a user attribute update is underway, this is the key of the attribute
  /// being updated.
  final AuthUserAttributeKey? attributeKey;

  /// If a user attribute update is underway, this is the name of the attribute
  /// being updated.
  @Deprecated('Use attributeKey instead')
  String? get attributeName => attributeKey?.key;

  @override
  List<Object?> get props => [attributeKey, deliveryMedium, destination];

  @override
  String get runtimeTypeName => 'AuthCodeDeliveryDetails';

  @override
  Map<String, Object?> toJson() => _$AuthCodeDeliveryDetailsToJson(this);
}
