// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.status_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class StatusType extends _i1.SmithyEnum<StatusType> {
  const StatusType._(
    super.index,
    super.name,
    super.value,
  );

  const StatusType._sdkUnknown(super.value) : super.sdkUnknown();

  static const failed = StatusType._(
    0,
    'failed',
    'failed',
  );

  static const initializing = StatusType._(
    1,
    'initializing',
    'initializing',
  );

  static const insufficientData = StatusType._(
    2,
    'insufficient_data',
    'insufficient-data',
  );

  static const passed = StatusType._(
    3,
    'passed',
    'passed',
  );

  /// All values of [StatusType].
  static const values = <StatusType>[
    StatusType.failed,
    StatusType.initializing,
    StatusType.insufficientData,
    StatusType.passed,
  ];

  static const List<_i1.SmithySerializer<StatusType>> serializers = [
    _i1.SmithyEnumSerializer(
      'StatusType',
      values: values,
      sdkUnknown: StatusType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension StatusTypeHelpers on List<StatusType> {
  /// Returns the value of [StatusType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  StatusType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [StatusType] whose value matches [value].
  StatusType byValue(String value) => firstWhere((el) => el.value == value);
}
