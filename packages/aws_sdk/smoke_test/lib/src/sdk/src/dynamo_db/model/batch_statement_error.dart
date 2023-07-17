// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.batch_statement_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/batch_statement_error_code_enum.dart'
    as _i2;

part 'batch_statement_error.g.dart';

/// An error associated with a statement in a PartiQL batch that was run.
abstract class BatchStatementError
    with _i1.AWSEquatable<BatchStatementError>
    implements Built<BatchStatementError, BatchStatementErrorBuilder> {
  /// An error associated with a statement in a PartiQL batch that was run.
  factory BatchStatementError({
    _i2.BatchStatementErrorCodeEnum? code,
    String? message,
    Map<String, _i3.AttributeValue>? item,
  }) {
    return _$BatchStatementError._(
      code: code,
      message: message,
      item: item == null ? null : _i4.BuiltMap(item),
    );
  }

  /// An error associated with a statement in a PartiQL batch that was run.
  factory BatchStatementError.build(
          [void Function(BatchStatementErrorBuilder) updates]) =
      _$BatchStatementError;

  const BatchStatementError._();

  static const List<_i5.SmithySerializer<BatchStatementError>> serializers = [
    BatchStatementErrorAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchStatementErrorBuilder b) {}

  /// The error code associated with the failed PartiQL batch statement.
  _i2.BatchStatementErrorCodeEnum? get code;

  /// The error message associated with the PartiQL batch response.
  String? get message;

  /// The item which caused the condition check to fail. This will be set if ReturnValuesOnConditionCheckFailure is specified as `ALL_OLD`.
  _i4.BuiltMap<String, _i3.AttributeValue>? get item;
  @override
  List<Object?> get props => [
        code,
        message,
        item,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchStatementError')
      ..add(
        'code',
        code,
      )
      ..add(
        'message',
        message,
      )
      ..add(
        'item',
        item,
      );
    return helper.toString();
  }
}

class BatchStatementErrorAwsJson10Serializer
    extends _i5.StructuredSmithySerializer<BatchStatementError> {
  const BatchStatementErrorAwsJson10Serializer() : super('BatchStatementError');

  @override
  Iterable<Type> get types => const [
        BatchStatementError,
        _$BatchStatementError,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  BatchStatementError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchStatementErrorBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Code':
          result.code = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.BatchStatementErrorCodeEnum),
          ) as _i2.BatchStatementErrorCodeEnum);
        case 'Message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Item':
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
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    BatchStatementError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final BatchStatementError(:code, :message, :item) = object;
    if (code != null) {
      result$
        ..add('Code')
        ..add(serializers.serialize(
          code,
          specifiedType: const FullType(_i2.BatchStatementErrorCodeEnum),
        ));
    }
    if (message != null) {
      result$
        ..add('Message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    if (item != null) {
      result$
        ..add('Item')
        ..add(serializers.serialize(
          item,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.AttributeValue),
            ],
          ),
        ));
    }
    return result$;
  }
}
