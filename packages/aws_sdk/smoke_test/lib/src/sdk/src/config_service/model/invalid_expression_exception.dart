// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.invalid_expression_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_expression_exception.g.dart';

/// The syntax of the query is incorrect.
abstract class InvalidExpressionException
    with _i1.AWSEquatable<InvalidExpressionException>
    implements
        Built<InvalidExpressionException, InvalidExpressionExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The syntax of the query is incorrect.
  factory InvalidExpressionException({String? message}) {
    return _$InvalidExpressionException._(message: message);
  }

  /// The syntax of the query is incorrect.
  factory InvalidExpressionException.build(
          [void Function(InvalidExpressionExceptionBuilder) updates]) =
      _$InvalidExpressionException;

  const InvalidExpressionException._();

  /// Constructs a [InvalidExpressionException] from a [payload] and [response].
  factory InvalidExpressionException.fromResponse(
    InvalidExpressionException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InvalidExpressionExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidExpressionExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InvalidExpressionException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int? get statusCode;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidExpressionException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class InvalidExpressionExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidExpressionException> {
  const InvalidExpressionExceptionAwsJson11Serializer()
      : super('InvalidExpressionException');

  @override
  Iterable<Type> get types => const [
        InvalidExpressionException,
        _$InvalidExpressionException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidExpressionException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidExpressionExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'message':
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
    final payload = (object as InvalidExpressionException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
