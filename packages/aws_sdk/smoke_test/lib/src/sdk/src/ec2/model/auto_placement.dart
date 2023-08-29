// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.auto_placement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class AutoPlacement extends _i1.SmithyEnum<AutoPlacement> {
  const AutoPlacement._(
    super.index,
    super.name,
    super.value,
  );

  const AutoPlacement._sdkUnknown(super.value) : super.sdkUnknown();

  static const off = AutoPlacement._(
    0,
    'off',
    'off',
  );

  static const on = AutoPlacement._(
    1,
    'on',
    'on',
  );

  /// All values of [AutoPlacement].
  static const values = <AutoPlacement>[
    AutoPlacement.off,
    AutoPlacement.on,
  ];

  static const List<_i1.SmithySerializer<AutoPlacement>> serializers = [
    _i1.SmithyEnumSerializer(
      'AutoPlacement',
      values: values,
      sdkUnknown: AutoPlacement._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension AutoPlacementHelpers on List<AutoPlacement> {
  /// Returns the value of [AutoPlacement] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  AutoPlacement byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [AutoPlacement] whose value matches [value].
  AutoPlacement byValue(String value) => firstWhere((el) => el.value == value);
}
