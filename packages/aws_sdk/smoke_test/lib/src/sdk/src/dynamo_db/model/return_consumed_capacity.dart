// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.return_consumed_capacity; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

/// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response:
///
/// *   `INDEXES` \- The response includes the aggregate `ConsumedCapacity` for the operation, together with `ConsumedCapacity` for each table and secondary index that was accessed.
///
///     Note that some operations, such as `GetItem` and `BatchGetItem`, do not access any indexes at all. In these cases, specifying `INDEXES` will only return `ConsumedCapacity` information for table(s).
///
/// *   `TOTAL` \- The response includes only the aggregate `ConsumedCapacity` for the operation.
///
/// *   `NONE` \- No `ConsumedCapacity` details are included in the response.
class ReturnConsumedCapacity extends _i1.SmithyEnum<ReturnConsumedCapacity> {
  const ReturnConsumedCapacity._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ReturnConsumedCapacity._sdkUnknown(String value)
      : super.sdkUnknown(value);

  static const indexes = ReturnConsumedCapacity._(
    0,
    'INDEXES',
    'INDEXES',
  );

  static const none = ReturnConsumedCapacity._(
    1,
    'NONE',
    'NONE',
  );

  static const total = ReturnConsumedCapacity._(
    2,
    'TOTAL',
    'TOTAL',
  );

  /// All values of [ReturnConsumedCapacity].
  static const values = <ReturnConsumedCapacity>[
    ReturnConsumedCapacity.indexes,
    ReturnConsumedCapacity.none,
    ReturnConsumedCapacity.total,
  ];

  static const List<_i1.SmithySerializer<ReturnConsumedCapacity>> serializers =
      [
    _i1.SmithyEnumSerializer(
      'ReturnConsumedCapacity',
      values: values,
      sdkUnknown: ReturnConsumedCapacity._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ReturnConsumedCapacityHelpers on List<ReturnConsumedCapacity> {
  /// Returns the value of [ReturnConsumedCapacity] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ReturnConsumedCapacity byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ReturnConsumedCapacity] whose value matches [value].
  ReturnConsumedCapacity byValue(String value) =>
      firstWhere((el) => el.value == value);
}
