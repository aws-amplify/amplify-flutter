// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.batch_statement_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_error.dart'
    as _i2;

part 'batch_statement_response.g.dart';

/// A PartiQL batch statement response..
abstract class BatchStatementResponse
    with _i1.AWSEquatable<BatchStatementResponse>
    implements Built<BatchStatementResponse, BatchStatementResponseBuilder> {
  /// A PartiQL batch statement response..
  factory BatchStatementResponse({
    _i2.BatchStatementError? error,
    Map<String, _i3.AttributeValue>? item,
    String? tableName,
  }) {
    return _$BatchStatementResponse._(
      error: error,
      item: item == null ? null : _i4.BuiltMap(item),
      tableName: tableName,
    );
  }

  /// A PartiQL batch statement response..
  factory BatchStatementResponse.build(
          [void Function(BatchStatementResponseBuilder) updates]) =
      _$BatchStatementResponse;

  const BatchStatementResponse._();

  static const List<_i5.SmithySerializer> serializers = [
    BatchStatementResponseAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchStatementResponseBuilder b) {}

  /// The error associated with a failed PartiQL batch statement.
  _i2.BatchStatementError? get error;

  /// A DynamoDB item associated with a BatchStatementResponse
  _i4.BuiltMap<String, _i3.AttributeValue>? get item;

  /// The table name associated with a failed PartiQL batch statement.
  String? get tableName;
  @override
  List<Object?> get props => [
        error,
        item,
        tableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchStatementResponse');
    helper.add(
      'error',
      error,
    );
    helper.add(
      'item',
      item,
    );
    helper.add(
      'tableName',
      tableName,
    );
    return helper.toString();
  }
}

class BatchStatementResponseAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<BatchStatementResponse> {
  const BatchStatementResponseAwsJson10Serializer()
      : super('BatchStatementResponse');

  @override
  Iterable<Type> get types => const [
        BatchStatementResponse,
        _$BatchStatementResponse,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BatchStatementResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchStatementResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Error':
          if (value != null) {
            result.error.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.BatchStatementError),
            ) as _i2.BatchStatementError));
          }
          break;
        case 'Item':
          if (value != null) {
            result.item.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(_i3.AttributeValue),
                ],
              ),
            ) as _i4.BuiltMap<String, _i3.AttributeValue>));
          }
          break;
        case 'TableName':
          if (value != null) {
            result.tableName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as BatchStatementResponse);
    final result = <Object?>[];
    if (payload.error != null) {
      result
        ..add('Error')
        ..add(serializers.serialize(
          payload.error!,
          specifiedType: const FullType(_i2.BatchStatementError),
        ));
    }
    if (payload.item != null) {
      result
        ..add('Item')
        ..add(serializers.serialize(
          payload.item!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.AttributeValue),
            ],
          ),
        ));
    }
    if (payload.tableName != null) {
      result
        ..add('TableName')
        ..add(serializers.serialize(
          payload.tableName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
