// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.resource_signal_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ResourceSignalStatus extends _i1.SmithyEnum<ResourceSignalStatus> {
  const ResourceSignalStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ResourceSignalStatus._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const failure = ResourceSignalStatus._(
    0,
    'FAILURE',
    'FAILURE',
  );

  static const success = ResourceSignalStatus._(
    1,
    'SUCCESS',
    'SUCCESS',
  );

  /// All values of [ResourceSignalStatus].
  static const values = <ResourceSignalStatus>[
    ResourceSignalStatus.failure,
    ResourceSignalStatus.success,
  ];

  static const List<_i1.SmithySerializer<ResourceSignalStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'ResourceSignalStatus',
      values: values,
      sdkUnknown: ResourceSignalStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension ResourceSignalStatusHelpers on List<ResourceSignalStatus> {
  /// Returns the value of [ResourceSignalStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ResourceSignalStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ResourceSignalStatus] whose value matches [value].
  ResourceSignalStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
