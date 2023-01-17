// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.shard_iterator_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class ShardIteratorType extends _i1.SmithyEnum<ShardIteratorType> {
  const ShardIteratorType._(
    int index,
    String name,
    String value,
  ) : super(
          index,
          name,
          value,
        );

  const ShardIteratorType._sdkUnknown(String value) : super.sdkUnknown(value);

  static const afterSequenceNumber = ShardIteratorType._(
    0,
    'AFTER_SEQUENCE_NUMBER',
    'AFTER_SEQUENCE_NUMBER',
  );

  static const atSequenceNumber = ShardIteratorType._(
    1,
    'AT_SEQUENCE_NUMBER',
    'AT_SEQUENCE_NUMBER',
  );

  static const latest = ShardIteratorType._(
    2,
    'LATEST',
    'LATEST',
  );

  static const trimHorizon = ShardIteratorType._(
    3,
    'TRIM_HORIZON',
    'TRIM_HORIZON',
  );

  /// All values of [ShardIteratorType].
  static const values = <ShardIteratorType>[
    ShardIteratorType.afterSequenceNumber,
    ShardIteratorType.atSequenceNumber,
    ShardIteratorType.latest,
    ShardIteratorType.trimHorizon,
  ];

  static const List<_i1.SmithySerializer<ShardIteratorType>> serializers = [
    _i1.SmithyEnumSerializer(
      'ShardIteratorType',
      values: values,
      sdkUnknown: ShardIteratorType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ],
    )
  ];
}

extension ShardIteratorTypeHelpers on List<ShardIteratorType> {
  /// Returns the value of [ShardIteratorType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  ShardIteratorType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [ShardIteratorType] whose value matches [value].
  ShardIteratorType byValue(String value) =>
      firstWhere((el) => el.value == value);
}
