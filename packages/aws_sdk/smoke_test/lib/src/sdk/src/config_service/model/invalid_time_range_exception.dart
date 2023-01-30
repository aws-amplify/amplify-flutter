// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.invalid_time_range_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_time_range_exception.g.dart';

/// The specified time range is not valid. The earlier time is not chronologically before the later time.
abstract class InvalidTimeRangeException
    with _i1.AWSEquatable<InvalidTimeRangeException>
    implements
        Built<InvalidTimeRangeException, InvalidTimeRangeExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The specified time range is not valid. The earlier time is not chronologically before the later time.
  factory InvalidTimeRangeException({String? message}) {
    return _$InvalidTimeRangeException._(message: message);
  }

  /// The specified time range is not valid. The earlier time is not chronologically before the later time.
  factory InvalidTimeRangeException.build(
          [void Function(InvalidTimeRangeExceptionBuilder) updates]) =
      _$InvalidTimeRangeException;

  const InvalidTimeRangeException._();

  /// Constructs a [InvalidTimeRangeException] from a [payload] and [response].
  factory InvalidTimeRangeException.fromResponse(
    InvalidTimeRangeException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InvalidTimeRangeExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidTimeRangeExceptionBuilder b) {}

  /// Error executing the command
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.configservice',
        shape: 'InvalidTimeRangeException',
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
    final helper = newBuiltValueToStringHelper('InvalidTimeRangeException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class InvalidTimeRangeExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InvalidTimeRangeException> {
  const InvalidTimeRangeExceptionAwsJson11Serializer()
      : super('InvalidTimeRangeException');

  @override
  Iterable<Type> get types => const [
        InvalidTimeRangeException,
        _$InvalidTimeRangeException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  InvalidTimeRangeException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidTimeRangeExceptionBuilder();
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
    final payload = (object as InvalidTimeRangeException);
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
