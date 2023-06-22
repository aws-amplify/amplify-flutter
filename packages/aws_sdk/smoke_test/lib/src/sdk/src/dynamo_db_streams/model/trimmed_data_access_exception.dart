// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db_streams.model.trimmed_data_access_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'trimmed_data_access_exception.g.dart';

/// The operation attempted to read past the oldest stream record in a shard.
///
/// In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream. You might receive a TrimmedDataAccessException if:
///
/// *   You request a shard iterator with a sequence number older than the trim point (24 hours).
///
/// *   You obtain a shard iterator, but before you use the iterator in a `GetRecords` request, a stream record in the shard exceeds the 24 hour period and is trimmed. This causes the iterator to access a record that no longer exists.
abstract class TrimmedDataAccessException
    with _i1.AWSEquatable<TrimmedDataAccessException>
    implements
        Built<TrimmedDataAccessException, TrimmedDataAccessExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The operation attempted to read past the oldest stream record in a shard.
  ///
  /// In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream. You might receive a TrimmedDataAccessException if:
  ///
  /// *   You request a shard iterator with a sequence number older than the trim point (24 hours).
  ///
  /// *   You obtain a shard iterator, but before you use the iterator in a `GetRecords` request, a stream record in the shard exceeds the 24 hour period and is trimmed. This causes the iterator to access a record that no longer exists.
  factory TrimmedDataAccessException({String? message}) {
    return _$TrimmedDataAccessException._(message: message);
  }

  /// The operation attempted to read past the oldest stream record in a shard.
  ///
  /// In DynamoDB Streams, there is a 24 hour limit on data retention. Stream records whose age exceeds this limit are subject to removal (trimming) from the stream. You might receive a TrimmedDataAccessException if:
  ///
  /// *   You request a shard iterator with a sequence number older than the trim point (24 hours).
  ///
  /// *   You obtain a shard iterator, but before you use the iterator in a `GetRecords` request, a stream record in the shard exceeds the 24 hour period and is trimmed. This causes the iterator to access a record that no longer exists.
  factory TrimmedDataAccessException.build(
          [void Function(TrimmedDataAccessExceptionBuilder) updates]) =
      _$TrimmedDataAccessException;

  const TrimmedDataAccessException._();

  /// Constructs a [TrimmedDataAccessException] from a [payload] and [response].
  factory TrimmedDataAccessException.fromResponse(
    TrimmedDataAccessException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<TrimmedDataAccessException>>
      serializers = [TrimmedDataAccessExceptionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TrimmedDataAccessExceptionBuilder b) {}

  /// "The data you are trying to access has been trimmed.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodbstreams',
        shape: 'TrimmedDataAccessException',
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
    final helper = newBuiltValueToStringHelper('TrimmedDataAccessException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class TrimmedDataAccessExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<TrimmedDataAccessException> {
  const TrimmedDataAccessExceptionAwsJson10Serializer()
      : super('TrimmedDataAccessException');

  @override
  Iterable<Type> get types => const [
        TrimmedDataAccessException,
        _$TrimmedDataAccessException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TrimmedDataAccessException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrimmedDataAccessExceptionBuilder();
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
    TrimmedDataAccessException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TrimmedDataAccessException(:message) = object;
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
