// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.hook_invocation_point; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class HookInvocationPoint extends _i1.SmithyEnum<HookInvocationPoint> {
  const HookInvocationPoint._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const HookInvocationPoint._sdkUnknown(String value) : super.sdkUnknown(value);

  static const preProvision = HookInvocationPoint._(
    0,
    'PRE_PROVISION',
    'PRE_PROVISION',
  );

  /// All values of [HookInvocationPoint].
  static const values = <HookInvocationPoint>[HookInvocationPoint.preProvision];

  static const List<_i1.SmithySerializer<HookInvocationPoint>> serializers = [
    _i1.SmithyEnumSerializer(
      'HookInvocationPoint',
      values: values,
      sdkUnknown: HookInvocationPoint._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension HookInvocationPointHelpers on List<HookInvocationPoint> {
  /// Returns the value of [HookInvocationPoint] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  HookInvocationPoint byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [HookInvocationPoint] whose value matches [value].
  HookInvocationPoint byValue(String value) =>
      firstWhere((el) => el.value == value);
}
