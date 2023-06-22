// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db_streams.model.internal_server_error; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'internal_server_error.g.dart';

/// An error occurred on the server side.
abstract class InternalServerError
    with _i1.AWSEquatable<InternalServerError>
    implements
        Built<InternalServerError, InternalServerErrorBuilder>,
        _i2.SmithyHttpException {
  /// An error occurred on the server side.
  factory InternalServerError({String? message}) {
    return _$InternalServerError._(message: message);
  }

  /// An error occurred on the server side.
  factory InternalServerError.build(
          [void Function(InternalServerErrorBuilder) updates]) =
      _$InternalServerError;

  const InternalServerError._();

  /// Constructs a [InternalServerError] from a [payload] and [response].
  factory InternalServerError.fromResponse(
    InternalServerError payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InternalServerError>> serializers = [
    InternalServerErrorAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InternalServerErrorBuilder b) {}

  /// The server encountered an internal error trying to fulfill the request.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodbstreams',
        shape: 'InternalServerError',
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
    final helper = newBuiltValueToStringHelper('InternalServerError')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class InternalServerErrorAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<InternalServerError> {
  const InternalServerErrorAwsJson10Serializer() : super('InternalServerError');

  @override
  Iterable<Type> get types => const [
        InternalServerError,
        _$InternalServerError,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  InternalServerError deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InternalServerErrorBuilder();
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
    InternalServerError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final InternalServerError(:message) = object;
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
