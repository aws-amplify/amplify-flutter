// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.invalid_sns_topic_arn_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_sns_topic_arn_exception.g.dart';

/// The specified Amazon SNS topic does not exist.
abstract class InvalidSnsTopicArnException
    with _i1.AWSEquatable<InvalidSnsTopicArnException>
    implements
        Built<InvalidSnsTopicArnException, InvalidSnsTopicArnExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified Amazon SNS topic does not exist.
  factory InvalidSnsTopicArnException({String? message}) {
    return _$InvalidSnsTopicArnException._(message: message);
  }

  /// The specified Amazon SNS topic does not exist.
  factory InvalidSnsTopicArnException.build(
          [void Function(InvalidSnsTopicArnExceptionBuilder) updates]) =
      _$InvalidSnsTopicArnException;

  const InvalidSnsTopicArnException._();

  /// Constructs a [InvalidSnsTopicArnException] from a [payload] and [response].
  factory InvalidSnsTopicArnException.fromResponse(
    InvalidSnsTopicArnException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidSnsTopicArnException>>
      serializers = [InvalidSnsTopicArnExceptionAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidSnsTopicArnExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InvalidSNSTopicARNException',
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
    final helper = newBuiltValueToStringHelper('InvalidSnsTopicArnException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class InvalidSnsTopicArnExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidSnsTopicArnException> {
  const InvalidSnsTopicArnExceptionAwsJson11Serializer()
      : super('InvalidSnsTopicArnException');

  @override
  Iterable<Type> get types => const [
        InvalidSnsTopicArnException,
        _$InvalidSnsTopicArnException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidSnsTopicArnException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidSnsTopicArnExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
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
    InvalidSnsTopicArnException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InvalidSnsTopicArnException(:message) = object;
    if (message != null) {
      result$
        ..add('message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
