// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_fleet_error_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DeleteFleetErrorCode extends _i1.SmithyEnum<DeleteFleetErrorCode> {
  const DeleteFleetErrorCode._(
    super.index,
    super.name,
    super.value,
  );

  const DeleteFleetErrorCode._sdkUnknown(super.value) : super.sdkUnknown();

  static const fleetIdDoesNotExist = DeleteFleetErrorCode._(
    0,
    'FLEET_ID_DOES_NOT_EXIST',
    'fleetIdDoesNotExist',
  );

  static const fleetIdMalformed = DeleteFleetErrorCode._(
    1,
    'FLEET_ID_MALFORMED',
    'fleetIdMalformed',
  );

  static const fleetNotInDeletableState = DeleteFleetErrorCode._(
    2,
    'FLEET_NOT_IN_DELETABLE_STATE',
    'fleetNotInDeletableState',
  );

  static const unexpectedError = DeleteFleetErrorCode._(
    3,
    'UNEXPECTED_ERROR',
    'unexpectedError',
  );

  /// All values of [DeleteFleetErrorCode].
  static const values = <DeleteFleetErrorCode>[
    DeleteFleetErrorCode.fleetIdDoesNotExist,
    DeleteFleetErrorCode.fleetIdMalformed,
    DeleteFleetErrorCode.fleetNotInDeletableState,
    DeleteFleetErrorCode.unexpectedError,
  ];

  static const List<_i1.SmithySerializer<DeleteFleetErrorCode>> serializers = [
    _i1.SmithyEnumSerializer(
      'DeleteFleetErrorCode',
      values: values,
      sdkUnknown: DeleteFleetErrorCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DeleteFleetErrorCodeHelpers on List<DeleteFleetErrorCode> {
  /// Returns the value of [DeleteFleetErrorCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DeleteFleetErrorCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DeleteFleetErrorCode] whose value matches [value].
  DeleteFleetErrorCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
