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

// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.point_intime_recovery_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PointIntimeRecoveryStatus
    extends _i1.SmithyEnum<PointIntimeRecoveryStatus> {
  const PointIntimeRecoveryStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PointIntimeRecoveryStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const disabled = PointIntimeRecoveryStatus._(
    0,
    'DISABLED',
    'DISABLED',
  );

  static const enabled = PointIntimeRecoveryStatus._(
    1,
    'ENABLED',
    'ENABLED',
  );

  /// All values of [PointIntimeRecoveryStatus].
  static const values = <PointIntimeRecoveryStatus>[
    PointIntimeRecoveryStatus.disabled,
    PointIntimeRecoveryStatus.enabled,
  ];

  static const List<_i1.SmithySerializer<PointIntimeRecoveryStatus>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'PointInTimeRecoveryStatus',
      values: values,
      sdkUnknown: PointIntimeRecoveryStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension PointIntimeRecoveryStatusHelpers on List<PointIntimeRecoveryStatus> {
  /// Returns the value of [PointIntimeRecoveryStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PointIntimeRecoveryStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PointIntimeRecoveryStatus] whose value matches [value].
  PointIntimeRecoveryStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
