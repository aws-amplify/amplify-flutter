// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.time_to_live_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TimeToLiveStatus extends _i1.SmithyEnum<TimeToLiveStatus> {
  const TimeToLiveStatus._(
    super.index,
    super.name,
    super.value,
  );

  const TimeToLiveStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const disabled = TimeToLiveStatus._(
    0,
    'DISABLED',
    'DISABLED',
  );

  static const disabling = TimeToLiveStatus._(
    1,
    'DISABLING',
    'DISABLING',
  );

  static const enabled = TimeToLiveStatus._(
    2,
    'ENABLED',
    'ENABLED',
  );

  static const enabling = TimeToLiveStatus._(
    3,
    'ENABLING',
    'ENABLING',
  );

  /// All values of [TimeToLiveStatus].
  static const values = <TimeToLiveStatus>[
    TimeToLiveStatus.disabled,
    TimeToLiveStatus.disabling,
    TimeToLiveStatus.enabled,
    TimeToLiveStatus.enabling,
  ];

  static const List<_i1.SmithySerializer<TimeToLiveStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'TimeToLiveStatus',
      values: values,
      sdkUnknown: TimeToLiveStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension TimeToLiveStatusHelpers on List<TimeToLiveStatus> {
  /// Returns the value of [TimeToLiveStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TimeToLiveStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TimeToLiveStatus] whose value matches [value].
  TimeToLiveStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
