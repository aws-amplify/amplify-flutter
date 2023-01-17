// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.provisioned_throughput_exceeded_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'provisioned_throughput_exceeded_exception.g.dart';

/// Your request rate is too high. The Amazon Web Services SDKs for DynamoDB automatically retry requests that receive this exception. Your request is eventually successful, unless your retry queue is too large to finish. Reduce the frequency of requests and use exponential backoff. For more information, go to [Error Retries and Exponential Backoff](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Programming.Errors.html#Programming.Errors.RetryAndBackoff) in the _Amazon DynamoDB Developer Guide_.
abstract class ProvisionedThroughputExceededException
    with
        _i1.AWSEquatable<ProvisionedThroughputExceededException>
    implements
        Built<ProvisionedThroughputExceededException,
            ProvisionedThroughputExceededExceptionBuilder>,
        _i2.SmithyHttpException {
  /// Your request rate is too high. The Amazon Web Services SDKs for DynamoDB automatically retry requests that receive this exception. Your request is eventually successful, unless your retry queue is too large to finish. Reduce the frequency of requests and use exponential backoff. For more information, go to [Error Retries and Exponential Backoff](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Programming.Errors.html#Programming.Errors.RetryAndBackoff) in the _Amazon DynamoDB Developer Guide_.
  factory ProvisionedThroughputExceededException({String? message}) {
    return _$ProvisionedThroughputExceededException._(message: message);
  }

  /// Your request rate is too high. The Amazon Web Services SDKs for DynamoDB automatically retry requests that receive this exception. Your request is eventually successful, unless your retry queue is too large to finish. Reduce the frequency of requests and use exponential backoff. For more information, go to [Error Retries and Exponential Backoff](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Programming.Errors.html#Programming.Errors.RetryAndBackoff) in the _Amazon DynamoDB Developer Guide_.
  factory ProvisionedThroughputExceededException.build(
      [void Function(ProvisionedThroughputExceededExceptionBuilder)
          updates]) = _$ProvisionedThroughputExceededException;

  const ProvisionedThroughputExceededException._();

  /// Constructs a [ProvisionedThroughputExceededException] from a [payload] and [response].
  factory ProvisionedThroughputExceededException.fromResponse(
    ProvisionedThroughputExceededException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    ProvisionedThroughputExceededExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProvisionedThroughputExceededExceptionBuilder b) {}

  /// You exceeded your maximum allowed provisioned throughput.
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'ProvisionedThroughputExceededException',
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
        newBuiltValueToStringHelper('ProvisionedThroughputExceededException');
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class ProvisionedThroughputExceededExceptionAwsJson10Serializer extends _i2
    .StructuredSmithySerializer<ProvisionedThroughputExceededException> {
  const ProvisionedThroughputExceededExceptionAwsJson10Serializer()
      : super('ProvisionedThroughputExceededException');

  @override
  Iterable<Type> get types => const [
        ProvisionedThroughputExceededException,
        _$ProvisionedThroughputExceededException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ProvisionedThroughputExceededException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionedThroughputExceededExceptionBuilder();
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
    final payload = (object as ProvisionedThroughputExceededException);
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
