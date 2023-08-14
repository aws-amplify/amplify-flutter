// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.snapshot_attribute_name; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SnapshotAttributeName extends _i1.SmithyEnum<SnapshotAttributeName> {
  const SnapshotAttributeName._(
    super.index,
    super.name,
    super.value,
  );

  const SnapshotAttributeName._sdkUnknown(super.value) : super.sdkUnknown();

  static const createVolumePermission = SnapshotAttributeName._(
    0,
    'createVolumePermission',
    'createVolumePermission',
  );

  static const productCodes = SnapshotAttributeName._(
    1,
    'productCodes',
    'productCodes',
  );

  /// All values of [SnapshotAttributeName].
  static const values = <SnapshotAttributeName>[
    SnapshotAttributeName.createVolumePermission,
    SnapshotAttributeName.productCodes,
  ];

  static const List<_i1.SmithySerializer<SnapshotAttributeName>> serializers = [
    _i1.SmithyEnumSerializer(
      'SnapshotAttributeName',
      values: values,
      sdkUnknown: SnapshotAttributeName._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension SnapshotAttributeNameHelpers on List<SnapshotAttributeName> {
  /// Returns the value of [SnapshotAttributeName] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SnapshotAttributeName byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SnapshotAttributeName] whose value matches [value].
  SnapshotAttributeName byValue(String value) =>
      firstWhere((el) => el.value == value);
}
