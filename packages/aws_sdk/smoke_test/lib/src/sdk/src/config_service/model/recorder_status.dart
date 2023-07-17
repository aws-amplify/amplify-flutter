// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.recorder_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RecorderStatus extends _i1.SmithyEnum<RecorderStatus> {
  const RecorderStatus._(
    super.index,
    super.name,
    super.value,
  );

  const RecorderStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const failure = RecorderStatus._(
    0,
    'Failure',
    'Failure',
  );

  static const pending = RecorderStatus._(
    1,
    'Pending',
    'Pending',
  );

  static const success = RecorderStatus._(
    2,
    'Success',
    'Success',
  );

  /// All values of [RecorderStatus].
  static const values = <RecorderStatus>[
    RecorderStatus.failure,
    RecorderStatus.pending,
    RecorderStatus.success,
  ];

  static const List<_i1.SmithySerializer<RecorderStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'RecorderStatus',
      values: values,
      sdkUnknown: RecorderStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ],
    )
  ];
}

extension RecorderStatusHelpers on List<RecorderStatus> {
  /// Returns the value of [RecorderStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RecorderStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RecorderStatus] whose value matches [value].
  RecorderStatus byValue(String value) => firstWhere((el) => el.value == value);
}
