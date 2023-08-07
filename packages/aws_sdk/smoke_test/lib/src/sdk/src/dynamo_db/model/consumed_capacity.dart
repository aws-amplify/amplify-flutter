// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.consumed_capacity; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/capacity.dart';

part 'consumed_capacity.g.dart';

/// The capacity units consumed by an operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. `ConsumedCapacity` is only returned if the request asked for it. For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html) in the _Amazon DynamoDB Developer Guide_.
abstract class ConsumedCapacity
    with _i1.AWSEquatable<ConsumedCapacity>
    implements Built<ConsumedCapacity, ConsumedCapacityBuilder> {
  /// The capacity units consumed by an operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. `ConsumedCapacity` is only returned if the request asked for it. For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html) in the _Amazon DynamoDB Developer Guide_.
  factory ConsumedCapacity({
    String? tableName,
    double? capacityUnits,
    double? readCapacityUnits,
    double? writeCapacityUnits,
    Capacity? table,
    Map<String, Capacity>? localSecondaryIndexes,
    Map<String, Capacity>? globalSecondaryIndexes,
  }) {
    return _$ConsumedCapacity._(
      tableName: tableName,
      capacityUnits: capacityUnits,
      readCapacityUnits: readCapacityUnits,
      writeCapacityUnits: writeCapacityUnits,
      table: table,
      localSecondaryIndexes: localSecondaryIndexes == null
          ? null
          : _i2.BuiltMap(localSecondaryIndexes),
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i2.BuiltMap(globalSecondaryIndexes),
    );
  }

  /// The capacity units consumed by an operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. `ConsumedCapacity` is only returned if the request asked for it. For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html) in the _Amazon DynamoDB Developer Guide_.
  factory ConsumedCapacity.build(
      [void Function(ConsumedCapacityBuilder) updates]) = _$ConsumedCapacity;

  const ConsumedCapacity._();

  static const List<_i3.SmithySerializer<ConsumedCapacity>> serializers = [
    ConsumedCapacityAwsJson10Serializer()
  ];

  /// The name of the table that was affected by the operation.
  String? get tableName;

  /// The total number of capacity units consumed by the operation.
  double? get capacityUnits;

  /// The total number of read capacity units consumed by the operation.
  double? get readCapacityUnits;

  /// The total number of write capacity units consumed by the operation.
  double? get writeCapacityUnits;

  /// The amount of throughput consumed on the table affected by the operation.
  Capacity? get table;

  /// The amount of throughput consumed on each local index affected by the operation.
  _i2.BuiltMap<String, Capacity>? get localSecondaryIndexes;

  /// The amount of throughput consumed on each global index affected by the operation.
  _i2.BuiltMap<String, Capacity>? get globalSecondaryIndexes;
  @override
  List<Object?> get props => [
        tableName,
        capacityUnits,
        readCapacityUnits,
        writeCapacityUnits,
        table,
        localSecondaryIndexes,
        globalSecondaryIndexes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConsumedCapacity')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'capacityUnits',
        capacityUnits,
      )
      ..add(
        'readCapacityUnits',
        readCapacityUnits,
      )
      ..add(
        'writeCapacityUnits',
        writeCapacityUnits,
      )
      ..add(
        'table',
        table,
      )
      ..add(
        'localSecondaryIndexes',
        localSecondaryIndexes,
      )
      ..add(
        'globalSecondaryIndexes',
        globalSecondaryIndexes,
      );
    return helper.toString();
  }
}

class ConsumedCapacityAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ConsumedCapacity> {
  const ConsumedCapacityAwsJson10Serializer() : super('ConsumedCapacity');

  @override
  Iterable<Type> get types => const [
        ConsumedCapacity,
        _$ConsumedCapacity,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ConsumedCapacity deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConsumedCapacityBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CapacityUnits':
          result.capacityUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'ReadCapacityUnits':
          result.readCapacityUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'WriteCapacityUnits':
          result.writeCapacityUnits = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'Table':
          result.table.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Capacity),
          ) as Capacity));
        case 'LocalSecondaryIndexes':
          result.localSecondaryIndexes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(Capacity),
              ],
            ),
          ) as _i2.BuiltMap<String, Capacity>));
        case 'GlobalSecondaryIndexes':
          result.globalSecondaryIndexes.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(Capacity),
              ],
            ),
          ) as _i2.BuiltMap<String, Capacity>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ConsumedCapacity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConsumedCapacity(
      :tableName,
      :capacityUnits,
      :readCapacityUnits,
      :writeCapacityUnits,
      :table,
      :localSecondaryIndexes,
      :globalSecondaryIndexes
    ) = object;
    if (tableName != null) {
      result$
        ..add('TableName')
        ..add(serializers.serialize(
          tableName,
          specifiedType: const FullType(String),
        ));
    }
    if (capacityUnits != null) {
      result$
        ..add('CapacityUnits')
        ..add(serializers.serialize(
          capacityUnits,
          specifiedType: const FullType(double),
        ));
    }
    if (readCapacityUnits != null) {
      result$
        ..add('ReadCapacityUnits')
        ..add(serializers.serialize(
          readCapacityUnits,
          specifiedType: const FullType(double),
        ));
    }
    if (writeCapacityUnits != null) {
      result$
        ..add('WriteCapacityUnits')
        ..add(serializers.serialize(
          writeCapacityUnits,
          specifiedType: const FullType(double),
        ));
    }
    if (table != null) {
      result$
        ..add('Table')
        ..add(serializers.serialize(
          table,
          specifiedType: const FullType(Capacity),
        ));
    }
    if (localSecondaryIndexes != null) {
      result$
        ..add('LocalSecondaryIndexes')
        ..add(serializers.serialize(
          localSecondaryIndexes,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(Capacity),
            ],
          ),
        ));
    }
    if (globalSecondaryIndexes != null) {
      result$
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          globalSecondaryIndexes,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(Capacity),
            ],
          ),
        ));
    }
    return result$;
  }
}
