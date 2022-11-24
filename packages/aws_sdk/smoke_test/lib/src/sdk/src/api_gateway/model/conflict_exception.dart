// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.conflict_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'conflict_exception.g.dart';

/// The request configuration has conflicts. For details, see the accompanying error message.
abstract class ConflictException
    with _i1.AWSEquatable<ConflictException>
    implements
        Built<ConflictException, ConflictExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request configuration has conflicts. For details, see the accompanying error message.
  factory ConflictException({String? message}) {
    return _$ConflictException._(message: message);
  }

  /// The request configuration has conflicts. For details, see the accompanying error message.
  factory ConflictException.build(
      [void Function(ConflictExceptionBuilder) updates]) = _$ConflictException;

  const ConflictException._();

  /// Constructs a [ConflictException] from a [payload] and [response].
  factory ConflictException.fromResponse(
    ConflictException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ConflictExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConflictExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.apigateway',
        shape: 'ConflictException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 409;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConflictException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ConflictExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<ConflictException> {
  const ConflictExceptionRestJson1Serializer() : super('ConflictException');

  @override
  Iterable<Type> get types => const [
        ConflictException,
        _$ConflictException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  ConflictException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConflictExceptionBuilder();
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
    final payload = (object as ConflictException);
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
