// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.api_gateway.model.limit_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart' as _i3;
import 'package:smithy/smithy.dart' as _i2;

part 'limit_exceeded_exception.g.dart';

/// The request exceeded the rate limit. Retry after the specified time period.
abstract class LimitExceededException
    with _i1.AWSEquatable<LimitExceededException>
    implements
        Built<LimitExceededException, LimitExceededExceptionBuilder>,
        _i2.HasPayload<LimitExceededExceptionPayload>,
        _i2.SmithyHttpException {
  /// The request exceeded the rate limit. Retry after the specified time period.
  factory LimitExceededException({
    String? message,
    String? retryAfterSeconds,
  }) {
    return _$LimitExceededException._(
      message: message,
      retryAfterSeconds: retryAfterSeconds,
    );
  }

  /// The request exceeded the rate limit. Retry after the specified time period.
  factory LimitExceededException.build(
          [void Function(LimitExceededExceptionBuilder) updates]) =
      _$LimitExceededException;

  const LimitExceededException._();

  /// Constructs a [LimitExceededException] from a [payload] and [response].
  factory LimitExceededException.fromResponse(
    LimitExceededExceptionPayload payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      LimitExceededException.build((b) {
        b.message = payload.message;
        if (response.headers['Retry-After'] != null) {
          b.retryAfterSeconds = response.headers['Retry-After']!;
        }
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    LimitExceededExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LimitExceededExceptionBuilder b) {}
  @override
  String? get message;
  String? get retryAfterSeconds;
  @override
  LimitExceededExceptionPayload getPayload() =>
      LimitExceededExceptionPayload((b) {
        b.message = message;
      });
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.apigateway',
        shape: 'LimitExceededException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 429;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [
        message,
        retryAfterSeconds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LimitExceededException');
    helper.add(
      'message',
      message,
    );
    helper.add(
      'retryAfterSeconds',
      retryAfterSeconds,
    );
    return helper.toString();
  }
}

@_i3.internal
abstract class LimitExceededExceptionPayload
    with
        _i1.AWSEquatable<LimitExceededExceptionPayload>
    implements
        Built<LimitExceededExceptionPayload,
            LimitExceededExceptionPayloadBuilder> {
  factory LimitExceededExceptionPayload(
          [void Function(LimitExceededExceptionPayloadBuilder) updates]) =
      _$LimitExceededExceptionPayload;

  const LimitExceededExceptionPayload._();

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LimitExceededExceptionPayloadBuilder b) {}
  String? get message;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LimitExceededExceptionPayload');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class LimitExceededExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<LimitExceededExceptionPayload> {
  const LimitExceededExceptionRestJson1Serializer()
      : super('LimitExceededException');

  @override
  Iterable<Type> get types => const [
        LimitExceededException,
        _$LimitExceededException,
        LimitExceededExceptionPayload,
        _$LimitExceededExceptionPayload,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  LimitExceededExceptionPayload deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LimitExceededExceptionPayloadBuilder();
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
    final payload = object is LimitExceededException
        ? object.getPayload()
        : (object as LimitExceededExceptionPayload);
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
