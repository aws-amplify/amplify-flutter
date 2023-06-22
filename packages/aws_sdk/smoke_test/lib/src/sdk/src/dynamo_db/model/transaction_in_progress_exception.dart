// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.transaction_in_progress_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'transaction_in_progress_exception.g.dart';

/// The transaction with the given request token is already in progress.
///
/// Recommended Settings
///
/// This is a general recommendation for handling the `TransactionInProgressException`. These settings help ensure that the client retries will trigger completion of the ongoing `TransactWriteItems` request.
///
/// *   Set `clientExecutionTimeout` to a value that allows at least one retry to be processed after 5 seconds have elapsed since the first attempt for the `TransactWriteItems` operation.
///
/// *   Set `socketTimeout` to a value a little lower than the `requestTimeout` setting.
///
/// *   `requestTimeout` should be set based on the time taken for the individual retries of a single HTTP request for your use case, but setting it to 1 second or higher should work well to reduce chances of retries and `TransactionInProgressException` errors.
///
/// *   Use exponential backoff when retrying and tune backoff if needed.
///
///
/// Assuming [default retry policy](https://github.com/aws/aws-sdk-java/blob/fd409dee8ae23fb8953e0bb4dbde65536a7e0514/aws-java-sdk-core/src/main/java/com/amazonaws/retry/PredefinedRetryPolicies.java#L97), example timeout settings based on the guidelines above are as follows:
///
/// Example timeline:
///
/// *   0-1000 first attempt
///
/// *   1000-1500 first sleep/delay (default retry policy uses 500 ms as base delay for 4xx errors)
///
/// *   1500-2500 second attempt
///
/// *   2500-3500 second sleep/delay (500 * 2, exponential backoff)
///
/// *   3500-4500 third attempt
///
/// *   4500-6500 third sleep/delay (500 * 2^2)
///
/// *   6500-7500 fourth attempt (this can trigger inline recovery since 5 seconds have elapsed since the first attempt reached TC)
abstract class TransactionInProgressException
    with
        _i1.AWSEquatable<TransactionInProgressException>
    implements
        Built<TransactionInProgressException,
            TransactionInProgressExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The transaction with the given request token is already in progress.
  ///
  /// Recommended Settings
  ///
  /// This is a general recommendation for handling the `TransactionInProgressException`. These settings help ensure that the client retries will trigger completion of the ongoing `TransactWriteItems` request.
  ///
  /// *   Set `clientExecutionTimeout` to a value that allows at least one retry to be processed after 5 seconds have elapsed since the first attempt for the `TransactWriteItems` operation.
  ///
  /// *   Set `socketTimeout` to a value a little lower than the `requestTimeout` setting.
  ///
  /// *   `requestTimeout` should be set based on the time taken for the individual retries of a single HTTP request for your use case, but setting it to 1 second or higher should work well to reduce chances of retries and `TransactionInProgressException` errors.
  ///
  /// *   Use exponential backoff when retrying and tune backoff if needed.
  ///
  ///
  /// Assuming [default retry policy](https://github.com/aws/aws-sdk-java/blob/fd409dee8ae23fb8953e0bb4dbde65536a7e0514/aws-java-sdk-core/src/main/java/com/amazonaws/retry/PredefinedRetryPolicies.java#L97), example timeout settings based on the guidelines above are as follows:
  ///
  /// Example timeline:
  ///
  /// *   0-1000 first attempt
  ///
  /// *   1000-1500 first sleep/delay (default retry policy uses 500 ms as base delay for 4xx errors)
  ///
  /// *   1500-2500 second attempt
  ///
  /// *   2500-3500 second sleep/delay (500 * 2, exponential backoff)
  ///
  /// *   3500-4500 third attempt
  ///
  /// *   4500-6500 third sleep/delay (500 * 2^2)
  ///
  /// *   6500-7500 fourth attempt (this can trigger inline recovery since 5 seconds have elapsed since the first attempt reached TC)
  factory TransactionInProgressException({String? message}) {
    return _$TransactionInProgressException._(message: message);
  }

  /// The transaction with the given request token is already in progress.
  ///
  /// Recommended Settings
  ///
  /// This is a general recommendation for handling the `TransactionInProgressException`. These settings help ensure that the client retries will trigger completion of the ongoing `TransactWriteItems` request.
  ///
  /// *   Set `clientExecutionTimeout` to a value that allows at least one retry to be processed after 5 seconds have elapsed since the first attempt for the `TransactWriteItems` operation.
  ///
  /// *   Set `socketTimeout` to a value a little lower than the `requestTimeout` setting.
  ///
  /// *   `requestTimeout` should be set based on the time taken for the individual retries of a single HTTP request for your use case, but setting it to 1 second or higher should work well to reduce chances of retries and `TransactionInProgressException` errors.
  ///
  /// *   Use exponential backoff when retrying and tune backoff if needed.
  ///
  ///
  /// Assuming [default retry policy](https://github.com/aws/aws-sdk-java/blob/fd409dee8ae23fb8953e0bb4dbde65536a7e0514/aws-java-sdk-core/src/main/java/com/amazonaws/retry/PredefinedRetryPolicies.java#L97), example timeout settings based on the guidelines above are as follows:
  ///
  /// Example timeline:
  ///
  /// *   0-1000 first attempt
  ///
  /// *   1000-1500 first sleep/delay (default retry policy uses 500 ms as base delay for 4xx errors)
  ///
  /// *   1500-2500 second attempt
  ///
  /// *   2500-3500 second sleep/delay (500 * 2, exponential backoff)
  ///
  /// *   3500-4500 third attempt
  ///
  /// *   4500-6500 third sleep/delay (500 * 2^2)
  ///
  /// *   6500-7500 fourth attempt (this can trigger inline recovery since 5 seconds have elapsed since the first attempt reached TC)
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

  static const List<_i2.SmithySerializer<TransactionInProgressException>>
      serializers = [TransactionInProgressExceptionAwsJson10Serializer()];

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
    final helper = newBuiltValueToStringHelper('TransactionInProgressException')
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Message':
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
    TransactionInProgressException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final TransactionInProgressException(:message) = object;
    if (message != null) {
      result$
        ..add('Message')
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
