// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.placement_group_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PlacementGroupState extends _i1.SmithyEnum<PlacementGroupState> {
  const PlacementGroupState._(
    super.index,
    super.name,
    super.value,
  );

  const PlacementGroupState._sdkUnknown(super.value) : super.sdkUnknown();

  static const available = PlacementGroupState._(
    0,
    'available',
    'available',
  );

  static const deleted = PlacementGroupState._(
    1,
    'deleted',
    'deleted',
  );

  static const deleting = PlacementGroupState._(
    2,
    'deleting',
    'deleting',
  );

  static const pending = PlacementGroupState._(
    3,
    'pending',
    'pending',
  );

  /// All values of [PlacementGroupState].
  static const values = <PlacementGroupState>[
    PlacementGroupState.available,
    PlacementGroupState.deleted,
    PlacementGroupState.deleting,
    PlacementGroupState.pending,
  ];

  static const List<_i1.SmithySerializer<PlacementGroupState>> serializers = [
    _i1.SmithyEnumSerializer(
      'PlacementGroupState',
      values: values,
      sdkUnknown: PlacementGroupState._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension PlacementGroupStateHelpers on List<PlacementGroupState> {
  /// Returns the value of [PlacementGroupState] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PlacementGroupState byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PlacementGroupState] whose value matches [value].
  PlacementGroupState byValue(String value) =>
      firstWhere((el) => el.value == value);
}
