// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.consumed_capacity; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/capacity.dart' as _i2;

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
    _i2.Capacity? table,
    Map<String, _i2.Capacity>? localSecondaryIndexes,
    Map<String, _i2.Capacity>? globalSecondaryIndexes,
  }) {
    return _$ConsumedCapacity._(
      tableName: tableName,
      capacityUnits: capacityUnits,
      readCapacityUnits: readCapacityUnits,
      writeCapacityUnits: writeCapacityUnits,
      table: table,
      localSecondaryIndexes: localSecondaryIndexes == null
          ? null
          : _i3.BuiltMap(localSecondaryIndexes),
      globalSecondaryIndexes: globalSecondaryIndexes == null
          ? null
          : _i3.BuiltMap(globalSecondaryIndexes),
    );
  }

  /// The capacity units consumed by an operation. The data returned includes the total provisioned throughput consumed, along with statistics for the table and any indexes involved in the operation. `ConsumedCapacity` is only returned if the request asked for it. For more information, see [Provisioned Throughput](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html) in the _Amazon DynamoDB Developer Guide_.
  factory ConsumedCapacity.build(
      [void Function(ConsumedCapacityBuilder) updates]) = _$ConsumedCapacity;

  const ConsumedCapacity._();

  static const List<_i4.SmithySerializer> serializers = [
    ConsumedCapacityAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConsumedCapacityBuilder b) {}

  /// The name of the table that was affected by the operation.
  String? get tableName;

  /// The total number of capacity units consumed by the operation.
  double? get capacityUnits;

  /// The total number of read capacity units consumed by the operation.
  double? get readCapacityUnits;

  /// The total number of write capacity units consumed by the operation.
  double? get writeCapacityUnits;

  /// The amount of throughput consumed on the table affected by the operation.
  _i2.Capacity? get table;

  /// The amount of throughput consumed on each local index affected by the operation.
  _i3.BuiltMap<String, _i2.Capacity>? get localSecondaryIndexes;

  /// The amount of throughput consumed on each global index affected by the operation.
  _i3.BuiltMap<String, _i2.Capacity>? get globalSecondaryIndexes;
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
    final helper = newBuiltValueToStringHelper('ConsumedCapacity');
    helper.add(
      'tableName',
      tableName,
    );
    helper.add(
      'capacityUnits',
      capacityUnits,
    );
    helper.add(
      'readCapacityUnits',
      readCapacityUnits,
    );
    helper.add(
      'writeCapacityUnits',
      writeCapacityUnits,
    );
    helper.add(
      'table',
      table,
    );
    helper.add(
      'localSecondaryIndexes',
      localSecondaryIndexes,
    );
    helper.add(
      'globalSecondaryIndexes',
      globalSecondaryIndexes,
    );
    return helper.toString();
  }
}

class ConsumedCapacityAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<ConsumedCapacity> {
  const ConsumedCapacityAwsJson10Serializer() : super('ConsumedCapacity');

  @override
  Iterable<Type> get types => const [
        ConsumedCapacity,
        _$ConsumedCapacity,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      switch (key) {
        case 'TableName':
          if (value != null) {
            result.tableName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CapacityUnits':
          if (value != null) {
            result.capacityUnits = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'ReadCapacityUnits':
          if (value != null) {
            result.readCapacityUnits = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'WriteCapacityUnits':
          if (value != null) {
            result.writeCapacityUnits = (serializers.deserialize(
              value,
              specifiedType: const FullType(double),
            ) as double);
          }
          break;
        case 'Table':
          if (value != null) {
            result.table.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.Capacity),
            ) as _i2.Capacity));
          }
          break;
        case 'LocalSecondaryIndexes':
          if (value != null) {
            result.localSecondaryIndexes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(_i2.Capacity),
                ],
              ),
            ) as _i3.BuiltMap<String, _i2.Capacity>));
          }
          break;
        case 'GlobalSecondaryIndexes':
          if (value != null) {
            result.globalSecondaryIndexes.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(_i2.Capacity),
                ],
              ),
            ) as _i3.BuiltMap<String, _i2.Capacity>));
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as ConsumedCapacity);
    final result = <Object?>[];
    if (payload.tableName != null) {
      result
        ..add('TableName')
        ..add(serializers.serialize(
          payload.tableName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.capacityUnits != null) {
      result
        ..add('CapacityUnits')
        ..add(serializers.serialize(
          payload.capacityUnits!,
          specifiedType: const FullType(double),
        ));
    }
    if (payload.readCapacityUnits != null) {
      result
        ..add('ReadCapacityUnits')
        ..add(serializers.serialize(
          payload.readCapacityUnits!,
          specifiedType: const FullType(double),
        ));
    }
    if (payload.writeCapacityUnits != null) {
      result
        ..add('WriteCapacityUnits')
        ..add(serializers.serialize(
          payload.writeCapacityUnits!,
          specifiedType: const FullType(double),
        ));
    }
    if (payload.table != null) {
      result
        ..add('Table')
        ..add(serializers.serialize(
          payload.table!,
          specifiedType: const FullType(_i2.Capacity),
        ));
    }
    if (payload.localSecondaryIndexes != null) {
      result
        ..add('LocalSecondaryIndexes')
        ..add(serializers.serialize(
          payload.localSecondaryIndexes!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(_i2.Capacity),
            ],
          ),
        ));
    }
    if (payload.globalSecondaryIndexes != null) {
      result
        ..add('GlobalSecondaryIndexes')
        ..add(serializers.serialize(
          payload.globalSecondaryIndexes!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(_i2.Capacity),
            ],
          ),
        ));
    }
    return result;
  }
}
