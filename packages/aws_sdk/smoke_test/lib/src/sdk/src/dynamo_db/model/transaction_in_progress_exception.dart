// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.transaction_in_progress_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'transaction_in_progress_exception.g.dart';

/// The transaction with the given request token is already in progress.
abstract class TransactionInProgressException
    with
        _i1.AWSEquatable<TransactionInProgressException>
    implements
        Built<TransactionInProgressException,
            TransactionInProgressExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The transaction with the given request token is already in progress.
  factory TransactionInProgressException({String? message}) {
    return _$TransactionInProgressException._(message: message);
  }

  /// The transaction with the given request token is already in progress.
  factory TransactionInProgressException.build(
          [void Function(TransactionInProgressExceptionBuilder) updates]) =
      _$TransactionInProgressException;

  const TransactionInProgressException._();

  /// Constructs a [TransactionInProgressException] from a [payload] and [response].
  factory TransactionInProgressException.fromResponse(
    TransactionInProgressException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    TransactionInProgressExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransactionInProgressExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'TransactionInProgressException',
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
    final helper =
        newBuiltValueToStringHelper('TransactionInProgressException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class TransactionInProgressExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<TransactionInProgressException> {
  const TransactionInProgressExceptionAwsJson10Serializer()
      : super('TransactionInProgressException');

  @override
  Iterable<Type> get types => const [
        TransactionInProgressException,
        _$TransactionInProgressException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TransactionInProgressException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactionInProgressExceptionBuilder();
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
    final payload = (object as TransactionInProgressException);
    final result = <Object?>[];
    if (payload.message != null) {
      result
        ..add('Message')
        ..add(serializers.serialize(
          payload.message!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
