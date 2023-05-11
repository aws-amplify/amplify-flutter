// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.permission_models; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class PermissionModels extends _i1.SmithyEnum<PermissionModels> {
  const PermissionModels._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const PermissionModels._sdkUnknown(String value) : super.sdkUnknown(value);

  static const selfManaged = PermissionModels._(
    0,
    'SELF_MANAGED',
    'SELF_MANAGED',
  );

  static const serviceManaged = PermissionModels._(
    1,
    'SERVICE_MANAGED',
    'SERVICE_MANAGED',
  );

  /// All values of [PermissionModels].
  static const values = <PermissionModels>[
    PermissionModels.selfManaged,
    PermissionModels.serviceManaged,
  ];

  static const List<_i1.SmithySerializer<PermissionModels>> serializers = [
    _i1.SmithyEnumSerializer(
      'PermissionModels',
      values: values,
      sdkUnknown: PermissionModels._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension PermissionModelsHelpers on List<PermissionModels> {
  /// Returns the value of [PermissionModels] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  PermissionModels byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [PermissionModels] whose value matches [value].
  PermissionModels byValue(String value) =>
      firstWhere((el) => el.value == value);
}
