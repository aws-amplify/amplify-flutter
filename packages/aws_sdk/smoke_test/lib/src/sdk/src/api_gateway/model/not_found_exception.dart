// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.api_gateway.model.not_found_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'not_found_exception.g.dart';

/// The requested resource is not found. Make sure that the request URI is correct.
abstract class NotFoundException
    with _i1.AWSEquatable<NotFoundException>
    implements
        Built<NotFoundException, NotFoundExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The requested resource is not found. Make sure that the request URI is correct.
  factory NotFoundException({String? message}) {
    return _$NotFoundException._(message: message);
  }

  /// The requested resource is not found. Make sure that the request URI is correct.
  factory NotFoundException.build(
      [void Function(NotFoundExceptionBuilder) updates]) = _$NotFoundException;

  const NotFoundException._();

  /// Constructs a [NotFoundException] from a [payload] and [response].
  factory NotFoundException.fromResponse(
    NotFoundException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    NotFoundExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NotFoundExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.apigateway',
        shape: 'NotFoundException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 404;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NotFoundException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class NotFoundExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<NotFoundException> {
  const NotFoundExceptionRestJson1Serializer() : super('NotFoundException');

  @override
  Iterable<Type> get types => const [
        NotFoundException,
        _$NotFoundException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  NotFoundException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotFoundExceptionBuilder();
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
    final payload = (object as NotFoundException);
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
