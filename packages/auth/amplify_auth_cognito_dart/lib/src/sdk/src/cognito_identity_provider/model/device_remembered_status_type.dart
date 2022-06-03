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

library amplify_auth_cognito.cognito_identity_provider.model.device_remembered_status_type;

import 'package:smithy/smithy.dart' as _i1;

class DeviceRememberedStatusType
    extends _i1.SmithyEnum<DeviceRememberedStatusType> {
  const DeviceRememberedStatusType._(int index, String name, String value)
      : super(index, name, value);

  const DeviceRememberedStatusType._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const notRemembered =
      DeviceRememberedStatusType._(0, 'NOT_REMEMBERED', 'not_remembered');

  static const remembered =
      DeviceRememberedStatusType._(1, 'REMEMBERED', 'remembered');

  /// All values of [DeviceRememberedStatusType].
  static const values = <DeviceRememberedStatusType>[
    DeviceRememberedStatusType.notRemembered,
    DeviceRememberedStatusType.remembered
  ];

  static const List<_i1.SmithySerializer<DeviceRememberedStatusType>>
      serializers = [
    _i1.SmithyEnumSerializer('DeviceRememberedStatusType',
        values: values,
        sdkUnknown: DeviceRememberedStatusType._sdkUnknown,
        supportedProtocols: [
          _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')
        ])
  ];
}

extension DeviceRememberedStatusTypeHelpers
    on List<DeviceRememberedStatusType> {
  /// Returns the value of [DeviceRememberedStatusType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DeviceRememberedStatusType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DeviceRememberedStatusType] whose value matches [value].
  DeviceRememberedStatusType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
