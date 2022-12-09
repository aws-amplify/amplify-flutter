// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.batch_statement_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
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
  }) {
    return _$BatchStatementError._(
      code: code,
      message: message,
    );
  }

  /// An error associated with a statement in a PartiQL batch that was run.
  factory BatchStatementError.build(
          [void Function(BatchStatementErrorBuilder) updates]) =
      _$BatchStatementError;

  const BatchStatementError._();

  static const List<_i3.SmithySerializer> serializers = [
    BatchStatementErrorAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(BatchStatementErrorBuilder b) {}

  /// The error code associated with the failed PartiQL batch statement.
  _i2.BatchStatementErrorCodeEnum? get code;

  /// The error message associated with the PartiQL batch response.
  String? get message;
  @override
  List<Object?> get props => [
        code,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('BatchStatementError');
    helper.add(
      'code',
      code,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class BatchStatementErrorAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<BatchStatementError> {
  const BatchStatementErrorAwsJson10Serializer() : super('BatchStatementError');

  @override
  Iterable<Type> get types => const [
        BatchStatementError,
        _$BatchStatementError,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      switch (key) {
        case 'Code':
          if (value != null) {
            result.code = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.BatchStatementErrorCodeEnum),
            ) as _i2.BatchStatementErrorCodeEnum);
          }
          break;
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(
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
    final payload = (object as BatchStatementError);
    final result = <Object?>[];
    if (payload.code != null) {
      result
        ..add('Code')
        ..add(serializers.serialize(
          payload.code!,
          specifiedType: const FullType(_i2.BatchStatementErrorCodeEnum),
        ));
    }
    if (payload.message != null) {
      result
        ..add('Message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
