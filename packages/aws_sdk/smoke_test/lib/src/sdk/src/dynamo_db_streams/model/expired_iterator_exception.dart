// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db_streams.model.expired_iterator_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'expired_iterator_exception.g.dart';

/// The shard iterator has expired and can no longer be used to retrieve stream records. A shard iterator expires 15 minutes after it is retrieved using the `GetShardIterator` action.
abstract class ExpiredIteratorException
    with _i1.AWSEquatable<ExpiredIteratorException>
    implements
        Built<ExpiredIteratorException, ExpiredIteratorExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The shard iterator has expired and can no longer be used to retrieve stream records. A shard iterator expires 15 minutes after it is retrieved using the `GetShardIterator` action.
  factory ExpiredIteratorException({String? message}) {
    return _$ExpiredIteratorException._(message: message);
  }

  /// The shard iterator has expired and can no longer be used to retrieve stream records. A shard iterator expires 15 minutes after it is retrieved using the `GetShardIterator` action.
  factory ExpiredIteratorException.build(
          [void Function(ExpiredIteratorExceptionBuilder) updates]) =
      _$ExpiredIteratorException;

  const ExpiredIteratorException._();

  /// Constructs a [ExpiredIteratorException] from a [payload] and [response].
  factory ExpiredIteratorException.fromResponse(
    ExpiredIteratorException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<ExpiredIteratorException>>
      serializers = [ExpiredIteratorExceptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExpiredIteratorExceptionBuilder b) {}

  /// The provided iterator exceeds the maximum age allowed.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodbstreams',
        shape: 'ExpiredIteratorException',
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
    final helper = newBuiltValueToStringHelper('ExpiredIteratorException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class ExpiredIteratorExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<ExpiredIteratorException> {
  const ExpiredIteratorExceptionAwsJson10Serializer()
      : super('ExpiredIteratorException');

  @override
  Iterable<Type> get types => const [
        ExpiredIteratorException,
        _$ExpiredIteratorException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ExpiredIteratorException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExpiredIteratorExceptionBuilder();
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
    ExpiredIteratorException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ExpiredIteratorException(:message) = object;
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
