// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.type_tests_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class TypeTestsStatus extends _i1.SmithyEnum<TypeTestsStatus> {
  const TypeTestsStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const TypeTestsStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const failed = TypeTestsStatus._(
    0,
    'FAILED',
    'FAILED',
  );

  static const inProgress = TypeTestsStatus._(
    1,
    'IN_PROGRESS',
    'IN_PROGRESS',
  );

  static const notTested = TypeTestsStatus._(
    2,
    'NOT_TESTED',
    'NOT_TESTED',
  );

  static const passed = TypeTestsStatus._(
    3,
    'PASSED',
    'PASSED',
  );

  /// All values of [TypeTestsStatus].
  static const values = <TypeTestsStatus>[
    TypeTestsStatus.failed,
    TypeTestsStatus.inProgress,
    TypeTestsStatus.notTested,
    TypeTestsStatus.passed,
  ];

  static const List<_i1.SmithySerializer<TypeTestsStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'TypeTestsStatus',
      values: values,
      sdkUnknown: TypeTestsStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension TypeTestsStatusHelpers on List<TypeTestsStatus> {
  /// Returns the value of [TypeTestsStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  TypeTestsStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [TypeTestsStatus] whose value matches [value].
  TypeTestsStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
