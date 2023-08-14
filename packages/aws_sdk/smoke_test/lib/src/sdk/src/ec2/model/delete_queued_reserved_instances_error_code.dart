// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.delete_queued_reserved_instances_error_code; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class DeleteQueuedReservedInstancesErrorCode
    extends _i1.SmithyEnum<DeleteQueuedReservedInstancesErrorCode> {
  const DeleteQueuedReservedInstancesErrorCode._(
    super.index,
    super.name,
    super.value,
  );

  const DeleteQueuedReservedInstancesErrorCode._sdkUnknown(super.value)
      : super.sdkUnknown();

  static const reservedInstancesIdInvalid =
      DeleteQueuedReservedInstancesErrorCode._(
    0,
    'RESERVED_INSTANCES_ID_INVALID',
    'reserved-instances-id-invalid',
  );

  static const reservedInstancesNotInQueuedState =
      DeleteQueuedReservedInstancesErrorCode._(
    1,
    'RESERVED_INSTANCES_NOT_IN_QUEUED_STATE',
    'reserved-instances-not-in-queued-state',
  );

  static const unexpectedError = DeleteQueuedReservedInstancesErrorCode._(
    2,
    'UNEXPECTED_ERROR',
    'unexpected-error',
  );

  /// All values of [DeleteQueuedReservedInstancesErrorCode].
  static const values = <DeleteQueuedReservedInstancesErrorCode>[
    DeleteQueuedReservedInstancesErrorCode.reservedInstancesIdInvalid,
    DeleteQueuedReservedInstancesErrorCode.reservedInstancesNotInQueuedState,
    DeleteQueuedReservedInstancesErrorCode.unexpectedError,
  ];

  static const List<
          _i1.SmithySerializer<DeleteQueuedReservedInstancesErrorCode>>
      serializers = [
    _i1.SmithyEnumSerializer(
      'DeleteQueuedReservedInstancesErrorCode',
      values: values,
      sdkUnknown: DeleteQueuedReservedInstancesErrorCode._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension DeleteQueuedReservedInstancesErrorCodeHelpers
    on List<DeleteQueuedReservedInstancesErrorCode> {
  /// Returns the value of [DeleteQueuedReservedInstancesErrorCode] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  DeleteQueuedReservedInstancesErrorCode byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [DeleteQueuedReservedInstancesErrorCode] whose value matches [value].
  DeleteQueuedReservedInstancesErrorCode byValue(String value) =>
      firstWhere((el) => el.value == value);
}
