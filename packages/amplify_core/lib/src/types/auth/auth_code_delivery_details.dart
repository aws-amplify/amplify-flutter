/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/src/util/serializable.dart';
import 'package:aws_common/aws_common.dart';

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
