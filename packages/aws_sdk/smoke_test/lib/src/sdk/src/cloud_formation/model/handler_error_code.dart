// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.handler_error_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class HandlerErrorCode extends _i1.SmithyEnum<HandlerErrorCode> {
  const HandlerErrorCode._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const HandlerErrorCode._sdkUnknown(String value) : super.sdkUnknown(value);

  static const accessDenied = HandlerErrorCode._(
    0,
    'AccessDenied',
    'AccessDenied',
  );

  static const alreadyExists = HandlerErrorCode._(
    1,
    'AlreadyExists',
    'AlreadyExists',
  );

  static const generalServiceException = HandlerErrorCode._(
    2,
    'GeneralServiceException',
    'GeneralServiceException',
  );

  static const handlerInternalFailure = HandlerErrorCode._(
    3,
    'HandlerInternalFailure',
    'HandlerInternalFailure',
  );

  static const internalFailure = HandlerErrorCode._(
    4,
    'InternalFailure',
    'InternalFailure',
  );

  static const invalidCredentials = HandlerErrorCode._(
    5,
    'InvalidCredentials',
    'InvalidCredentials',
  );

  static const invalidRequest = HandlerErrorCode._(
    6,
    'InvalidRequest',
    'InvalidRequest',
  );

  static const invalidTypeConfiguration = HandlerErrorCode._(
    7,
    'InvalidTypeConfiguration',
    'InvalidTypeConfiguration',
  );

  static const networkFailure = HandlerErrorCode._(
    8,
    'NetworkFailure',
    'NetworkFailure',
  );

  static const nonCompliant = HandlerErrorCode._(
    9,
    'NonCompliant',
    'NonCompliant',
  );

  static const notFound = HandlerErrorCode._(
    10,
    'NotFound',
    'NotFound',
  );

  static const notUpdatable = HandlerErrorCode._(
    11,
    'NotUpdatable',
    'NotUpdatable',
  );

  static const resourceConflict = HandlerErrorCode._(
    12,
    'ResourceConflict',
    'ResourceConflict',
  );

  static const serviceInternalError = HandlerErrorCode._(
    13,
    'ServiceInternalError',
    'ServiceInternalError',
  );

  static const serviceLimitExceeded = HandlerErrorCode._(
    14,
    'ServiceLimitExceeded',
    'ServiceLimitExceeded',
  );

  static const serviceTimeout = HandlerErrorCode._(
    15,
    'ServiceTimeout',
    'NotStabilized',
  );

  static const throttling = HandlerErrorCode._(
    16,
    'Throttling',
    'Throttling',
  );

  static const unknown = HandlerErrorCode._(
    17,
    'Unknown',
    'Unknown',
  );

  static const unsupportedTarget = HandlerErrorCode._(
    18,
    'UnsupportedTarget',
    'UnsupportedTarget',
  );

  /// All values of [HandlerErrorCode].
  static const values = <HandlerErrorCode>[
    HandlerErrorCode.accessDenied,
    HandlerErrorCode.alreadyExists,
    HandlerErrorCode.generalServiceException,
    HandlerErrorCode.handlerInternalFailure,
    HandlerErrorCode.internalFailure,
    HandlerErrorCode.invalidCredentials,
    HandlerErrorCode.invalidRequest,
    HandlerErrorCode.invalidTypeConfiguration,
    HandlerErrorCode.networkFailure,
    HandlerErrorCode.nonCompliant,
    HandlerErrorCode.notFound,
    HandlerErrorCode.notUpdatable,
    HandlerErrorCode.resourceConflict,
    HandlerErrorCode.serviceInternalError,
    HandlerErrorCode.serviceLimitExceeded,
    HandlerErrorCode.serviceTimeout,
    HandlerErrorCode.throttling,
    HandlerErrorCode.unknown,
    HandlerErrorCode.unsupportedTarget,
  ];

  static const List<_i1.SmithySerializer<HandlerErrorCode>> serializers = [
    _i1.SmithyEnumSerializer(
      'HandlerErrorCode',
      values: values,
      sdkUnknown: HandlerErrorCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ],
    )
  ];
}

extension HandlerErrorCodeHelpers on List<HandlerErrorCode> {
  /// Returns the value of [HandlerErrorCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  HandlerErrorCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [HandlerErrorCode] whose value matches [value].
  HandlerErrorCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
