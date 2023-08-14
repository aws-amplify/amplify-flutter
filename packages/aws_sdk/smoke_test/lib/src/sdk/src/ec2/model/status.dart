// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class Status extends _i1.SmithyEnum<Status> {
  const Status._(
    super.index,
    super.name,
    super.value,
  );

  const Status._sdkUnknown(super.value) : super.sdkUnknown();

  static const inClassic = Status._(
    0,
    'inClassic',
    'InClassic',
  );

  static const inVpc = Status._(
    1,
    'inVpc',
    'InVpc',
  );

  static const moveInProgress = Status._(
    2,
    'moveInProgress',
    'MoveInProgress',
  );

  /// All values of [Status].
  static const values = <Status>[
    Status.inClassic,
    Status.inVpc,
    Status.moveInProgress,
  ];

  static const List<_i1.SmithySerializer<Status>> serializers = [
    _i1.SmithyEnumSerializer(
      'Status',
      values: values,
      sdkUnknown: Status._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension StatusHelpers on List<Status> {
  /// Returns the value of [Status] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  Status byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [Status] whose value matches [value].
  Status byValue(String value) => firstWhere((el) => el.value == value);
}
