// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Generated with smithy-dart 0.5.1. DO NOT MODIFY.

library amplify_auth_cognito.cognito_identity_provider.model.delivery_medium_type;

import 'package:smithy/smithy.dart' as _i1;

class DeliveryMediumType extends _i1.SmithyEnum<DeliveryMediumType> {
  const DeliveryMediumType._(int index, String name, String value)
      : super(index, name, value);

  const DeliveryMediumType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const email = DeliveryMediumType._(0, 'EMAIL', 'EMAIL');

  static const sms = DeliveryMediumType._(1, 'SMS', 'SMS');

  /// All values of [DeliveryMediumType].
  static const values = <DeliveryMediumType>[
    DeliveryMediumType.email,
    DeliveryMediumType.sms
  ];

  static const List<_i1.SmithySerializer<DeliveryMediumType>> serializers = [
    _i1.SmithyEnumSerializer('DeliveryMediumType',
        values: values,
        sdkUnknown: DeliveryMediumType._sdkUnknown,
        supportedProtocols: [
          _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')
        ])
  ];
}

extension DeliveryMediumTypeHelpers on List<DeliveryMediumType> {
  /// Returns the value of [DeliveryMediumType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DeliveryMediumType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DeliveryMediumType] whose value matches [value].
  DeliveryMediumType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
