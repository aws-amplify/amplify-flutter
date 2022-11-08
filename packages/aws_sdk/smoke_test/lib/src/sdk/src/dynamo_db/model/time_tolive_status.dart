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

library smoke_test.dynamo_db.model.time_tolive_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TimeToliveStatus extends _i1.SmithyEnum<TimeToliveStatus> {
  const TimeToliveStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const TimeToliveStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const disabled = TimeToliveStatus._(
    0,
    'DISABLED',
    'DISABLED',
  );

  static const disabling = TimeToliveStatus._(
    1,
    'DISABLING',
    'DISABLING',
  );

  static const enabled = TimeToliveStatus._(
    2,
    'ENABLED',
    'ENABLED',
  );

  static const enabling = TimeToliveStatus._(
    3,
    'ENABLING',
    'ENABLING',
  );

  /// All values of [TimeToliveStatus].
  static const values = <TimeToliveStatus>[
    TimeToliveStatus.disabled,
    TimeToliveStatus.disabling,
    TimeToliveStatus.enabled,
    TimeToliveStatus.enabling,
  ];

  static const List<_i1.SmithySerializer<TimeToliveStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'TimeToLiveStatus',
      values: values,
      sdkUnknown: TimeToliveStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension TimeToliveStatusHelpers on List<TimeToliveStatus> {
  /// Returns the value of [TimeToliveStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TimeToliveStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TimeToliveStatus] whose value matches [value].
  TimeToliveStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
