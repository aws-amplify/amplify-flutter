// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

part 'auth_code_delivery_details.g.dart';

@zAmplifySerializable
class AuthCodeDeliveryDetails
    with
        AWSEquatable<AuthCodeDeliveryDetails>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const AuthCodeDeliveryDetails({
    this.attributeName,
    this.deliveryMedium,
    this.destination,
  });

  factory AuthCodeDeliveryDetails.fromJson(Map<String, Object?> json) =>
      _$AuthCodeDeliveryDetailsFromJson(json);

  final String? attributeName;
  final String? deliveryMedium;
  final String? destination;

  @override
  List<Object?> get props => [attributeName, deliveryMedium, destination];

  @override
  String get runtimeTypeName => 'AuthCodeDeliveryDetails';

  @override
  Map<String, Object?> toJson() => _$AuthCodeDeliveryDetailsToJson(this);
}
