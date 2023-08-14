// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_batch_error_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class CancelBatchErrorCode extends _i1.SmithyEnum<CancelBatchErrorCode> {
  const CancelBatchErrorCode._(
    super.index,
    super.name,
    super.value,
  );

  const CancelBatchErrorCode._sdkUnknown(super.value) : super.sdkUnknown();

  static const fleetRequestIdDoesNotExist = CancelBatchErrorCode._(
    0,
    'FLEET_REQUEST_ID_DOES_NOT_EXIST',
    'fleetRequestIdDoesNotExist',
  );

  static const fleetRequestIdMalformed = CancelBatchErrorCode._(
    1,
    'FLEET_REQUEST_ID_MALFORMED',
    'fleetRequestIdMalformed',
  );

  static const fleetRequestNotInCancellableState = CancelBatchErrorCode._(
    2,
    'FLEET_REQUEST_NOT_IN_CANCELLABLE_STATE',
    'fleetRequestNotInCancellableState',
  );

  static const unexpectedError = CancelBatchErrorCode._(
    3,
    'UNEXPECTED_ERROR',
    'unexpectedError',
  );

  /// All values of [CancelBatchErrorCode].
  static const values = <CancelBatchErrorCode>[
    CancelBatchErrorCode.fleetRequestIdDoesNotExist,
    CancelBatchErrorCode.fleetRequestIdMalformed,
    CancelBatchErrorCode.fleetRequestNotInCancellableState,
    CancelBatchErrorCode.unexpectedError,
  ];

  static const List<_i1.SmithySerializer<CancelBatchErrorCode>> serializers = [
    _i1.SmithyEnumSerializer(
      'CancelBatchErrorCode',
      values: values,
      sdkUnknown: CancelBatchErrorCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension CancelBatchErrorCodeHelpers on List<CancelBatchErrorCode> {
  /// Returns the value of [CancelBatchErrorCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  CancelBatchErrorCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [CancelBatchErrorCode] whose value matches [value].
  CancelBatchErrorCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
