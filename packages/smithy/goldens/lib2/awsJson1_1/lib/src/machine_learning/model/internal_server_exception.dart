// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library aws_json1_1_v2.machine_learning.model.internal_server_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'internal_server_exception.g.dart';

abstract class InternalServerException
    with _i1.AWSEquatable<InternalServerException>
    implements
        Built<InternalServerException, InternalServerExceptionBuilder>,
        _i2.SmithyHttpException {
  factory InternalServerException({int? code, String? message}) {
    return _$InternalServerException._(code: code, message: message);
  }

  factory InternalServerException.build(
          [void Function(InternalServerExceptionBuilder) updates]) =
      _$InternalServerException;

  const InternalServerException._();

  /// Constructs a [InternalServerException] from a [payload] and [response].
  factory InternalServerException.fromResponse(
          InternalServerException payload, _i1.AWSBaseHttpResponse response) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    InternalServerExceptionAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InternalServerExceptionBuilder b) {}
  int? get code;
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
      namespace: 'com.amazonaws.machinelearning',
      shape: 'InternalServerException');
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 500;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [code, message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InternalServerException');
    helper.add('code', code);
    helper.add('message', message);
    return helper.toString();
  }
}

class InternalServerExceptionAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<InternalServerException> {
  const InternalServerExceptionAwsJson11Serializer()
      : super('InternalServerException');

  @override
  Iterable<Type> get types =>
      const [InternalServerException, _$InternalServerException];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  InternalServerException deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = InternalServerExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'code':
          if (value != null) {
            result.code = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'message':
          if (value != null) {
            result.message = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as InternalServerException);
    final result = <Object?>[];
    if (payload.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(payload.code!,
            specifiedType: const FullType(int)));
    }
    if (payload.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(payload.message!,
            specifiedType: const FullType(String)));
    }
    return result;
  }
}
