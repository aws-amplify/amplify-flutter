// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.move_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class MoveStatus extends _i1.SmithyEnum<MoveStatus> {
  const MoveStatus._(
    super.index,
    super.name,
    super.value,
  );

  const MoveStatus._sdkUnknown(super.value) : super.sdkUnknown();

  static const movingToVpc = MoveStatus._(
    0,
    'movingToVpc',
    'movingToVpc',
  );

  static const restoringToClassic = MoveStatus._(
    1,
    'restoringToClassic',
    'restoringToClassic',
  );

  /// All values of [MoveStatus].
  static const values = <MoveStatus>[
    MoveStatus.movingToVpc,
    MoveStatus.restoringToClassic,
  ];

  static const List<_i1.SmithySerializer<MoveStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'MoveStatus',
      values: values,
      sdkUnknown: MoveStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension MoveStatusHelpers on List<MoveStatus> {
  /// Returns the value of [MoveStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  MoveStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [MoveStatus] whose value matches [value].
  MoveStatus byValue(String value) => firstWhere((el) => el.value == value);
}
