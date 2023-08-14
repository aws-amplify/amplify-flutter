// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.vpc_cidr_block_state_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class VpcCidrBlockStateCode extends _i1.SmithyEnum<VpcCidrBlockStateCode> {
  const VpcCidrBlockStateCode._(
    super.index,
    super.name,
    super.value,
  );

  const VpcCidrBlockStateCode._sdkUnknown(super.value) : super.sdkUnknown();

  static const associated = VpcCidrBlockStateCode._(
    0,
    'associated',
    'associated',
  );

  static const associating = VpcCidrBlockStateCode._(
    1,
    'associating',
    'associating',
  );

  static const disassociated = VpcCidrBlockStateCode._(
    2,
    'disassociated',
    'disassociated',
  );

  static const disassociating = VpcCidrBlockStateCode._(
    3,
    'disassociating',
    'disassociating',
  );

  static const failed = VpcCidrBlockStateCode._(
    4,
    'failed',
    'failed',
  );

  static const failing = VpcCidrBlockStateCode._(
    5,
    'failing',
    'failing',
  );

  /// All values of [VpcCidrBlockStateCode].
  static const values = <VpcCidrBlockStateCode>[
    VpcCidrBlockStateCode.associated,
    VpcCidrBlockStateCode.associating,
    VpcCidrBlockStateCode.disassociated,
    VpcCidrBlockStateCode.disassociating,
    VpcCidrBlockStateCode.failed,
    VpcCidrBlockStateCode.failing,
  ];

  static const List<_i1.SmithySerializer<VpcCidrBlockStateCode>> serializers = [
    _i1.SmithyEnumSerializer(
      'VpcCidrBlockStateCode',
      values: values,
      sdkUnknown: VpcCidrBlockStateCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension VpcCidrBlockStateCodeHelpers on List<VpcCidrBlockStateCode> {
  /// Returns the value of [VpcCidrBlockStateCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  VpcCidrBlockStateCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [VpcCidrBlockStateCode] whose value matches [value].
  VpcCidrBlockStateCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
