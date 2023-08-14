// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_error_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class LaunchTemplateErrorCode extends _i1.SmithyEnum<LaunchTemplateErrorCode> {
  const LaunchTemplateErrorCode._(
    super.index,
    super.name,
    super.value,
  );

  const LaunchTemplateErrorCode._sdkUnknown(super.value) : super.sdkUnknown();

  static const launchTemplateIdDoesNotExist = LaunchTemplateErrorCode._(
    0,
    'LAUNCH_TEMPLATE_ID_DOES_NOT_EXIST',
    'launchTemplateIdDoesNotExist',
  );

  static const launchTemplateIdMalformed = LaunchTemplateErrorCode._(
    1,
    'LAUNCH_TEMPLATE_ID_MALFORMED',
    'launchTemplateIdMalformed',
  );

  static const launchTemplateNameDoesNotExist = LaunchTemplateErrorCode._(
    2,
    'LAUNCH_TEMPLATE_NAME_DOES_NOT_EXIST',
    'launchTemplateNameDoesNotExist',
  );

  static const launchTemplateNameMalformed = LaunchTemplateErrorCode._(
    3,
    'LAUNCH_TEMPLATE_NAME_MALFORMED',
    'launchTemplateNameMalformed',
  );

  static const launchTemplateVersionDoesNotExist = LaunchTemplateErrorCode._(
    4,
    'LAUNCH_TEMPLATE_VERSION_DOES_NOT_EXIST',
    'launchTemplateVersionDoesNotExist',
  );

  static const unexpectedError = LaunchTemplateErrorCode._(
    5,
    'UNEXPECTED_ERROR',
    'unexpectedError',
  );

  /// All values of [LaunchTemplateErrorCode].
  static const values = <LaunchTemplateErrorCode>[
    LaunchTemplateErrorCode.launchTemplateIdDoesNotExist,
    LaunchTemplateErrorCode.launchTemplateIdMalformed,
    LaunchTemplateErrorCode.launchTemplateNameDoesNotExist,
    LaunchTemplateErrorCode.launchTemplateNameMalformed,
    LaunchTemplateErrorCode.launchTemplateVersionDoesNotExist,
    LaunchTemplateErrorCode.unexpectedError,
  ];

  static const List<_i1.SmithySerializer<LaunchTemplateErrorCode>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'LaunchTemplateErrorCode',
      values: values,
      sdkUnknown: LaunchTemplateErrorCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension LaunchTemplateErrorCodeHelpers on List<LaunchTemplateErrorCode> {
  /// Returns the value of [LaunchTemplateErrorCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  LaunchTemplateErrorCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [LaunchTemplateErrorCode] whose value matches [value].
  LaunchTemplateErrorCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
