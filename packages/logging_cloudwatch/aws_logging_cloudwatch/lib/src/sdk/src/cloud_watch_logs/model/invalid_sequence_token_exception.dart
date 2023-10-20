// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_logging_cloudwatch.cloud_watch_logs.model.invalid_sequence_token_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_sequence_token_exception.g.dart';

/// The sequence token is not valid. You can get the correct sequence token in the `expectedSequenceToken` field in the `InvalidSequenceTokenException` message.
///
/// `PutLogEvents` actions are now always accepted and never return `InvalidSequenceTokenException` regardless of receiving an invalid sequence token.
abstract class InvalidSequenceTokenException
    with
        _i1.AWSEquatable<InvalidSequenceTokenException>
    implements
        Built<InvalidSequenceTokenException,
            InvalidSequenceTokenExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The sequence token is not valid. You can get the correct sequence token in the `expectedSequenceToken` field in the `InvalidSequenceTokenException` message.
  ///
  /// `PutLogEvents` actions are now always accepted and never return `InvalidSequenceTokenException` regardless of receiving an invalid sequence token.
  factory InvalidSequenceTokenException({
    String? expectedSequenceToken,
    String? message,
  }) {
    return _$InvalidSequenceTokenException._(
      expectedSequenceToken: expectedSequenceToken,
      message: message,
    );
  }

  /// The sequence token is not valid. You can get the correct sequence token in the `expectedSequenceToken` field in the `InvalidSequenceTokenException` message.
  ///
  /// `PutLogEvents` actions are now always accepted and never return `InvalidSequenceTokenException` regardless of receiving an invalid sequence token.
  factory InvalidSequenceTokenException.build(
          [void Function(InvalidSequenceTokenExceptionBuilder) updates]) =
      _$InvalidSequenceTokenException;

  const InvalidSequenceTokenException._();

  /// Constructs a [InvalidSequenceTokenException] from a [payload] and [response].
  factory InvalidSequenceTokenException.fromResponse(
    InvalidSequenceTokenException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidSequenceTokenException>>
      serializers = [InvalidSequenceTokenExceptionAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidSequenceTokenExceptionBuilder b) {}
  String? get expectedSequenceToken;
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.cloudwatchlogs',
        shape: 'InvalidSequenceTokenException',
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
  List<Object?> get props => [
        expectedSequenceToken,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidSequenceTokenException')
      ..add(
        'expectedSequenceToken',
        expectedSequenceToken,
      )
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class InvalidSequenceTokenExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidSequenceTokenException> {
  const InvalidSequenceTokenExceptionAwsJson11Serializer()
      : super('InvalidSequenceTokenException');

  @override
  Iterable<Type> get types => const [
        InvalidSequenceTokenException,
        _$InvalidSequenceTokenException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidSequenceTokenException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidSequenceTokenExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'expectedSequenceToken':
          result.expectedSequenceToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    InvalidSequenceTokenException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InvalidSequenceTokenException(:expectedSequenceToken, :message) =
        object;
    if (expectedSequenceToken != null) {
      result$
        ..add('expectedSequenceToken')
        ..add(serializers.serialize(
          expectedSequenceToken,
          specifiedType: const FullType(String),
        ));
    }
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
