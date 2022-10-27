// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.invalid_s3_key_prefix_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_s3_key_prefix_exception.g.dart';

/// The specified Amazon S3 key prefix is not valid.
abstract class InvalidS3KeyPrefixException
    with _i1.AWSEquatable<InvalidS3KeyPrefixException>
    implements
        Built<InvalidS3KeyPrefixException, InvalidS3KeyPrefixExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified Amazon S3 key prefix is not valid.
  factory InvalidS3KeyPrefixException({String? message}) {
    return _$InvalidS3KeyPrefixException._(message: message);
  }

  /// The specified Amazon S3 key prefix is not valid.
  factory InvalidS3KeyPrefixException.build(
          [void Function(InvalidS3KeyPrefixExceptionBuilder) updates]) =
      _$InvalidS3KeyPrefixException;

  const InvalidS3KeyPrefixException._();

  /// Constructs a [InvalidS3KeyPrefixException] from a [payload] and [response].
  factory InvalidS3KeyPrefixException.fromResponse(
    InvalidS3KeyPrefixException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InvalidS3KeyPrefixExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidS3KeyPrefixExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InvalidS3KeyPrefixException',
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
    final helper = newBuiltValueToStringHelper('InvalidS3KeyPrefixException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class InvalidS3KeyPrefixExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidS3KeyPrefixException> {
  const InvalidS3KeyPrefixExceptionAwsJson11Serializer()
      : super('InvalidS3KeyPrefixException');

  @override
  Iterable<Type> get types => const [
        InvalidS3KeyPrefixException,
        _$InvalidS3KeyPrefixException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidS3KeyPrefixException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidS3KeyPrefixExceptionBuilder();
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
    final payload = (object as InvalidS3KeyPrefixException);
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
