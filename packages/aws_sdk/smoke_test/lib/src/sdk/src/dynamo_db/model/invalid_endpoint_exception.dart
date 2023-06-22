// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.invalid_endpoint_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_endpoint_exception.g.dart';

abstract class InvalidEndpointException
    with _i1.AWSEquatable<InvalidEndpointException>
    implements
        Built<InvalidEndpointException, InvalidEndpointExceptionBuilder>,
        _i2.SmithyHttpException {
  factory InvalidEndpointException({String? message}) {
    return _$InvalidEndpointException._(message: message);
  }

  factory InvalidEndpointException.build(
          [void Function(InvalidEndpointExceptionBuilder) updates]) =
      _$InvalidEndpointException;

  const InvalidEndpointException._();

  /// Constructs a [InvalidEndpointException] from a [payload] and [response].
  factory InvalidEndpointException.fromResponse(
    InvalidEndpointException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidEndpointException>>
      serializers = [InvalidEndpointExceptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidEndpointExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'InvalidEndpointException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 421;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidEndpointException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class InvalidEndpointExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<InvalidEndpointException> {
  const InvalidEndpointExceptionAwsJson10Serializer()
      : super('InvalidEndpointException');

  @override
  Iterable<Type> get types => const [
        InvalidEndpointException,
        _$InvalidEndpointException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  InvalidEndpointException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidEndpointExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InvalidEndpointException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InvalidEndpointException(:message) = object;
    if (message != null) {
      result$
        ..add('Message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
