// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'auth_code_delivery_details.g.dart';

enum DeliveryMedium {
  email,
  phone,
  sms,
  unknown,
}

@zAmplifySerializable
class AuthCodeDeliveryDetails
    with
        AWSEquatable<AuthCodeDeliveryDetails>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const AuthCodeDeliveryDetails({
    required this.deliveryMedium,
    this.destination,
    this.attributeKey,
  });

  factory AuthCodeDeliveryDetails.fromJson(Map<String, Object?> json) =>
      _$AuthCodeDeliveryDetailsFromJson(json);

  final DeliveryMedium deliveryMedium;
  final String? destination;

  final String? attributeKey;

  @Deprecated('Use attributeKey instead')
  String? get attributeName => attributeKey;

  @override
  List<Object?> get props => [attributeKey, deliveryMedium, destination];

  @override
  String get runtimeTypeName => 'AuthCodeDeliveryDetails';

  @override
  Map<String, Object?> toJson() => _$AuthCodeDeliveryDetailsToJson(this);
}
