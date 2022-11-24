// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v2.api_gateway.model.unauthorized_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'unauthorized_exception.g.dart';

abstract class UnauthorizedException
    with _i1.AWSEquatable<UnauthorizedException>
    implements
        Built<UnauthorizedException, UnauthorizedExceptionBuilder>,
        _i2.SmithyHttpException {
  factory UnauthorizedException({String? message}) {
    return _$UnauthorizedException._(message: message);
  }

  factory UnauthorizedException.build(
          [void Function(UnauthorizedExceptionBuilder) updates]) =
      _$UnauthorizedException;

  const UnauthorizedException._();

  /// Constructs a [UnauthorizedException] from a [payload] and [response].
  factory UnauthorizedException.fromResponse(
    UnauthorizedException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    UnauthorizedExceptionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UnauthorizedExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.apigateway',
        shape: 'UnauthorizedException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 401;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UnauthorizedException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class UnauthorizedExceptionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<UnauthorizedException> {
  const UnauthorizedExceptionRestJson1Serializer()
      : super('UnauthorizedException');

  @override
  Iterable<Type> get types => const [
        UnauthorizedException,
        _$UnauthorizedException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  UnauthorizedException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnauthorizedExceptionBuilder();
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
    final payload = (object as UnauthorizedException);
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
