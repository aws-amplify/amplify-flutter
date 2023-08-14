// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.subnet_cidr_block_state_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SubnetCidrBlockStateCode
    extends _i1.SmithyEnum<SubnetCidrBlockStateCode> {
  const SubnetCidrBlockStateCode._(
    super.index,
    super.name,
    super.value,
  );

  const SubnetCidrBlockStateCode._sdkUnknown(super.value) : super.sdkUnknown();

  static const associated = SubnetCidrBlockStateCode._(
    0,
    'associated',
    'associated',
  );

  static const associating = SubnetCidrBlockStateCode._(
    1,
    'associating',
    'associating',
  );

  static const disassociated = SubnetCidrBlockStateCode._(
    2,
    'disassociated',
    'disassociated',
  );

  static const disassociating = SubnetCidrBlockStateCode._(
    3,
    'disassociating',
    'disassociating',
  );

  static const failed = SubnetCidrBlockStateCode._(
    4,
    'failed',
    'failed',
  );

  static const failing = SubnetCidrBlockStateCode._(
    5,
    'failing',
    'failing',
  );

  /// All values of [SubnetCidrBlockStateCode].
  static const values = <SubnetCidrBlockStateCode>[
    SubnetCidrBlockStateCode.associated,
    SubnetCidrBlockStateCode.associating,
    SubnetCidrBlockStateCode.disassociated,
    SubnetCidrBlockStateCode.disassociating,
    SubnetCidrBlockStateCode.failed,
    SubnetCidrBlockStateCode.failing,
  ];

  static const List<_i1.SmithySerializer<SubnetCidrBlockStateCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'SubnetCidrBlockStateCode',
      values: values,
      sdkUnknown: SubnetCidrBlockStateCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SubnetCidrBlockStateCodeHelpers on List<SubnetCidrBlockStateCode> {
  /// Returns the value of [SubnetCidrBlockStateCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SubnetCidrBlockStateCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SubnetCidrBlockStateCode] whose value matches [value].
  SubnetCidrBlockStateCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
