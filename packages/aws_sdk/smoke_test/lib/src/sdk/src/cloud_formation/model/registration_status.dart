// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.registration_status; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class RegistrationStatus extends _i1.SmithyEnum<RegistrationStatus> {
  const RegistrationStatus._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const RegistrationStatus._sdkUnknown(String value) : super.sdkUnknown(value);

  static const complete = RegistrationStatus._(
    0,
    'COMPLETE',
    'COMPLETE',
  );

  static const failed = RegistrationStatus._(
    1,
    'FAILED',
    'FAILED',
  );

  static const inProgress = RegistrationStatus._(
    2,
    'IN_PROGRESS',
    'IN_PROGRESS',
  );

  /// All values of [RegistrationStatus].
  static const values = <RegistrationStatus>[
    RegistrationStatus.complete,
    RegistrationStatus.failed,
    RegistrationStatus.inProgress,
  ];

  static const List<_i1.SmithySerializer<RegistrationStatus>> serializers = [
    _i1.SmithyEnumSerializer(
      'RegistrationStatus',
      values: values,
      sdkUnknown: RegistrationStatus._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension RegistrationStatusHelpers on List<RegistrationStatus> {
  /// Returns the value of [RegistrationStatus] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  RegistrationStatus byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [RegistrationStatus] whose value matches [value].
  RegistrationStatus byValue(String value) =>
      firstWhere((el) => el.value == value);
}
