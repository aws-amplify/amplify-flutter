// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.forbidden_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'forbidden_exception.g.dart';

/// Provides information about an API request or response.
abstract class ForbiddenException
    with _i1.AWSEquatable<ForbiddenException>
    implements
        Built<ForbiddenException, ForbiddenExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Provides information about an API request or response.
  factory ForbiddenException({
    String? message,
    String? requestId,
  }) {
    return _$ForbiddenException._(
      message: message,
      requestId: requestId,
    );
  }

  /// Provides information about an API request or response.
  factory ForbiddenException.build(
          [void Function(ForbiddenExceptionBuilder) updates]) =
      _$ForbiddenException;

  const ForbiddenException._();

  /// Constructs a [ForbiddenException] from a [payload] and [response].
  factory ForbiddenException.fromResponse(
    ForbiddenException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ForbiddenExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ForbiddenExceptionBuilder b) {}

  /// The message that's returned from the API.
  @override
  String? get message;

  /// The unique identifier for the request or response.
  String? get requestId;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.pinpoint',
        shape: 'ForbiddenException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 403;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [
        message,
        requestId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ForbiddenException');
    helper.add(
      'message',
      message,
    );
    helper.add(
      'requestId',
      requestId,
    );
    return helper.toString();
  }
}

class ForbiddenExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ForbiddenException> {
  const ForbiddenExceptionRestJson1Serializer() : super('ForbiddenException');

  @override
  Iterable<Type> get types => const [
        ForbiddenException,
        _$ForbiddenException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ForbiddenException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ForbiddenExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Message':
          if (value != null) {
            result.message = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RequestID':
          if (value != null) {
            result.requestId = (serializers.deserialize(
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
    final payload = (object as ForbiddenException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('Message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.requestId != null) {
      result
        ..add('RequestID')
        ..add(serializers.serialize(
          payload.requestId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
