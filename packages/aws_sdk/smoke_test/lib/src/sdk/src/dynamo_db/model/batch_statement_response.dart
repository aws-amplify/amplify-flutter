// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.batch_statement_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_error.dart';

part 'batch_statement_response.g.dart';

/// A PartiQL batch statement response..
abstract class BatchStatementResponse
    with _i1.AWSEquatable<BatchStatementResponse>
    implements Built<BatchStatementResponse, BatchStatementResponseBuilder> {
  /// A PartiQL batch statement response..
  factory BatchStatementResponse({
    BatchStatementError? error,
    String? tableName,
    Map<String, AttributeValue>? item,
  }) {
    return _$BatchStatementResponse._(
      error: error,
      tableName: tableName,
      item: item == null ? null : _i2.BuiltMap(item),
    );
  }

  /// A PartiQL batch statement response..
  factory BatchStatementResponse.build(
          [void Function(BatchStatementResponseBuilder) updates]) =
      _$BatchStatementResponse;

  const BatchStatementResponse._();

  static const List<_i3.SmithySerializer<BatchStatementResponse>> serializers =
      [BatchStatementResponseAwsJson10Serializer()];

  /// The error associated with a failed PartiQL batch statement.
  BatchStatementError? get error;

  /// The table name associated with a failed PartiQL batch statement.
  String? get tableName;

  /// A DynamoDB item associated with a BatchStatementResponse
  _i2.BuiltMap<String, AttributeValue>? get item;
  @override
  List<Object?> get props => [
        error,
        tableName,
        item,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchStatementResponse')
      ..add(
        'error',
        error,
      )
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'item',
        item,
      );
    return helper.toString();
  }
}

class BatchStatementResponseAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<BatchStatementResponse> {
  const BatchStatementResponseAwsJson10Serializer()
      : super('BatchStatementResponse');

  @override
  Iterable<Type> get types => const [
        BatchStatementResponse,
        _$BatchStatementResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Error':
          result.error.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(BatchStatementError),
          ) as BatchStatementError));
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Item':
          result.item.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltMap,
              [
                FullType(String),
                FullType(AttributeValue),
              ],
            ),
          ) as _i2.BuiltMap<String, AttributeValue>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BatchStatementResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final BatchStatementResponse(:error, :tableName, :item) = object;
    if (error != null) {
      result$
        ..add('Error')
        ..add(serializers.serialize(
          error,
          specifiedType: const FullType(BatchStatementError),
        ));
    }
    if (tableName != null) {
      result$
        ..add('TableName')
        ..add(serializers.serialize(
          tableName,
          specifiedType: const FullType(String),
        ));
    }
    if (item != null) {
      result$
        ..add('Item')
        ..add(serializers.serialize(
          item,
          specifiedType: const FullType(
            _i2.BuiltMap,
            [
              FullType(String),
              FullType(AttributeValue),
            ],
          ),
        ));
    }
    return result$;
  }
}
