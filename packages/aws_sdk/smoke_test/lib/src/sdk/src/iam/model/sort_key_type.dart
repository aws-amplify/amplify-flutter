// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.sort_key_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SortKeyType extends _i1.SmithyEnum<SortKeyType> {
  const SortKeyType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const SortKeyType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const lastAuthenticatedTimeAscending = SortKeyType._(
    0,
    'LAST_AUTHENTICATED_TIME_ASCENDING',
    'LAST_AUTHENTICATED_TIME_ASCENDING',
  );

  static const lastAuthenticatedTimeDescending = SortKeyType._(
    1,
    'LAST_AUTHENTICATED_TIME_DESCENDING',
    'LAST_AUTHENTICATED_TIME_DESCENDING',
  );

  static const serviceNamespaceAscending = SortKeyType._(
    2,
    'SERVICE_NAMESPACE_ASCENDING',
    'SERVICE_NAMESPACE_ASCENDING',
  );

  static const serviceNamespaceDescending = SortKeyType._(
    3,
    'SERVICE_NAMESPACE_DESCENDING',
    'SERVICE_NAMESPACE_DESCENDING',
  );

  /// All values of [SortKeyType].
  static const values = <SortKeyType>[
    SortKeyType.lastAuthenticatedTimeAscending,
    SortKeyType.lastAuthenticatedTimeDescending,
    SortKeyType.serviceNamespaceAscending,
    SortKeyType.serviceNamespaceDescending,
  ];

  static const List<_i1.SmithySerializer<SortKeyType>> serializers = [
    _i1.SmithyEnumSerializer(
      'sortKeyType',
      values: values,
      sdkUnknown: SortKeyType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension SortKeyTypeHelpers on List<SortKeyType> {
  /// Returns the value of [SortKeyType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SortKeyType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SortKeyType] whose value matches [value].
  SortKeyType byValue(String value) => firstWhere((el) => el.value == value);
}
