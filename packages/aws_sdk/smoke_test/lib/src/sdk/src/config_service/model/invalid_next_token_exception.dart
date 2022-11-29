// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.invalid_next_token_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_next_token_exception.g.dart';

/// The specified next token is invalid. Specify the `nextToken` string that was returned in the previous response to get the next page of results.
abstract class InvalidNextTokenException
    with _i1.AWSEquatable<InvalidNextTokenException>
    implements
        Built<InvalidNextTokenException, InvalidNextTokenExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified next token is invalid. Specify the `nextToken` string that was returned in the previous response to get the next page of results.
  factory InvalidNextTokenException({String? message}) {
    return _$InvalidNextTokenException._(message: message);
  }

  /// The specified next token is invalid. Specify the `nextToken` string that was returned in the previous response to get the next page of results.
  factory InvalidNextTokenException.build(
          [void Function(InvalidNextTokenExceptionBuilder) updates]) =
      _$InvalidNextTokenException;

  const InvalidNextTokenException._();

  /// Constructs a [InvalidNextTokenException] from a [payload] and [response].
  factory InvalidNextTokenException.fromResponse(
    InvalidNextTokenException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InvalidNextTokenExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidNextTokenExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InvalidNextTokenException',
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
    final helper = newBuiltValueToStringHelper('InvalidNextTokenException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class InvalidNextTokenExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidNextTokenException> {
  const InvalidNextTokenExceptionAwsJson11Serializer()
      : super('InvalidNextTokenException');

  @override
  Iterable<Type> get types => const [
        InvalidNextTokenException,
        _$InvalidNextTokenException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidNextTokenException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidNextTokenExceptionBuilder();
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
    final payload = (object as InvalidNextTokenException);
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
