// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.connectivity_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ConnectivityType extends _i1.SmithyEnum<ConnectivityType> {
  const ConnectivityType._(
    super.index,
    super.name,
    super.value,
  );

  const ConnectivityType._sdkUnknown(super.value) : super.sdkUnknown();

  static const private = ConnectivityType._(
    0,
    'PRIVATE',
    'private',
  );

  static const public = ConnectivityType._(
    1,
    'PUBLIC',
    'public',
  );

  /// All values of [ConnectivityType].
  static const values = <ConnectivityType>[
    ConnectivityType.private,
    ConnectivityType.public,
  ];

  static const List<_i1.SmithySerializer<ConnectivityType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ConnectivityType',
      values: values,
      sdkUnknown: ConnectivityType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension ConnectivityTypeHelpers on List<ConnectivityType> {
  /// Returns the value of [ConnectivityType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ConnectivityType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ConnectivityType] whose value matches [value].
  ConnectivityType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
