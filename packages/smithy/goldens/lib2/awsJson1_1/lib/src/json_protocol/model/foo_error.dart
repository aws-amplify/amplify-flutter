// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library aws_json1_1_v2.json_protocol.model.foo_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'foo_error.g.dart';

/// This error has test cases that test some of the dark corners of Amazon service framework history. It should only be implemented by clients.
abstract class FooError
    with _i1.AWSEquatable<FooError>
    implements
        Built<FooError, FooErrorBuilder>,
        _i2.EmptyPayload,
        _i2.SmithyHttpException {
  /// This error has test cases that test some of the dark corners of Amazon service framework history. It should only be implemented by clients.
  factory FooError() {
    return _$FooError._();
  }

  /// This error has test cases that test some of the dark corners of Amazon service framework history. It should only be implemented by clients.
  factory FooError.build([void Function(FooErrorBuilder) updates]) = _$FooError;

  const FooError._();

  /// Constructs a [FooError] from a [payload] and [response].
  factory FooError.fromResponse(
          FooError payload, _i1.AWSBaseHttpResponse response) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    FooErrorAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FooErrorBuilder b) {}
  @override
  _i2.ShapeId get shapeId =>
      const _i2.ShapeId(namespace: 'aws.protocoltests.json', shape: 'FooError');
  @override
  String? get message => null;
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
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FooError');
    return helper.toString();
  }
}

class FooErrorAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<FooError> {
  const FooErrorAwsJson11Serializer() : super('FooError');

  @override
  Iterable<Type> get types => const [FooError, _$FooError];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols =>
      const [_i2.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1')];
  @override
  FooError deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return FooErrorBuilder().build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
          {FullType specifiedType = FullType.unspecified}) =>
      const <Object?>[];
}
