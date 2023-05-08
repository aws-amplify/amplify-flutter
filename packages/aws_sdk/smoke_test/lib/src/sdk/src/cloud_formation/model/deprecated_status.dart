// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.deprecated_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DeprecatedStatus extends _i1.SmithyEnum<DeprecatedStatus> {
  const DeprecatedStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const DeprecatedStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const deprecated = DeprecatedStatus._(
    0,
    'DEPRECATED',
    'DEPRECATED',
  );

  static const live = DeprecatedStatus._(
    1,
    'LIVE',
    'LIVE',
  );

  /// All values of [DeprecatedStatus].
  static const values = <DeprecatedStatus>[
    DeprecatedStatus.deprecated,
    DeprecatedStatus.live,
  ];

  static const List<_i1.SmithySerializer<DeprecatedStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'DeprecatedStatus',
      values: values,
      sdkUnknown: DeprecatedStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension DeprecatedStatusHelpers on List<DeprecatedStatus> {
  /// Returns the value of [DeprecatedStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DeprecatedStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DeprecatedStatus] whose value matches [value].
  DeprecatedStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
