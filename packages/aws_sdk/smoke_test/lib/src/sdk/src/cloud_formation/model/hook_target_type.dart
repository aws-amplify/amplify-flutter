// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.hook_target_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class HookTargetType extends _i1.SmithyEnum<HookTargetType> {
  const HookTargetType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const HookTargetType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const resource = HookTargetType._(
    0,
    'RESOURCE',
    'RESOURCE',
  );

  /// All values of [HookTargetType].
  static const values = <HookTargetType>[HookTargetType.resource];

  static const List<_i1.SmithySerializer<HookTargetType>> serializers = [
    _i1.SmithyEnumSerializer(
      'HookTargetType',
      values: values,
      sdkUnknown: HookTargetType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension HookTargetTypeHelpers on List<HookTargetType> {
  /// Returns the value of [HookTargetType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  HookTargetType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [HookTargetType] whose value matches [value].
  HookTargetType byValue(String value) => firstWhere((el) => el.value == value);
}
