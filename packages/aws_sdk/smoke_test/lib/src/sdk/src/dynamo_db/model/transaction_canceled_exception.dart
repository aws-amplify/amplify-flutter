// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.transaction_canceled_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/cancellation_reason.dart'
    as _i3;

part 'transaction_canceled_exception.g.dart';

/// The entire transaction request was canceled.
///
/// DynamoDB cancels a `TransactWriteItems` request under the following circumstances:
///
/// *   A condition in one of the condition expressions is not met.
///
/// *   A table in the `TransactWriteItems` request is in a different account or region.
///
/// *   More than one action in the `TransactWriteItems` operation targets the same item.
///
/// *   There is insufficient provisioned capacity for the transaction to be completed.
///
/// *   An item size becomes too large (larger than 400 KB), or a local secondary index (LSI) becomes too large, or a similar validation error occurs because of changes made by the transaction.
///
/// *   There is a user error, such as an invalid data format.
///
///
/// DynamoDB cancels a `TransactGetItems` request under the following circumstances:
///
/// *   There is an ongoing `TransactGetItems` operation that conflicts with a concurrent `PutItem`, `UpdateItem`, `DeleteItem` or `TransactWriteItems` request. In this case the `TransactGetItems` operation fails with a `TransactionCanceledException`.
///
/// *   A table in the `TransactGetItems` request is in a different account or region.
///
/// *   There is insufficient provisioned capacity for the transaction to be completed.
///
/// *   There is a user error, such as an invalid data format.
///
///
/// If using Java, DynamoDB lists the cancellation reasons on the `CancellationReasons` property. This property is not set for other languages. Transaction cancellation reasons are ordered in the order of requested items, if an item has no error it will have `None` code and `Null` message.
///
/// Cancellation reason codes and possible error messages:
///
/// *   No Errors:
///
///     *   Code: `None`
///
///     *   Message: `null`
///
/// *   Conditional Check Failed:
///
///     *   Code: `ConditionalCheckFailed`
///
///     *   Message: The conditional request failed.
///
/// *   Item Collection Size Limit Exceeded:
///
///     *   Code: `ItemCollectionSizeLimitExceeded`
///
///     *   Message: Collection size exceeded.
///
/// *   Transaction Conflict:
///
///     *   Code: `TransactionConflict`
///
///     *   Message: Transaction is ongoing for the item.
///
/// *   Provisioned Throughput Exceeded:
///
///     *   Code: `ProvisionedThroughputExceeded`
///
///     *   Messages:
///
///         *   The level of configured provisioned throughput for the table was exceeded. Consider increasing your provisioning level with the UpdateTable API.
///
///             This Message is received when provisioned throughput is exceeded is on a provisioned DynamoDB table.
///
///         *   The level of configured provisioned throughput for one or more global secondary indexes of the table was exceeded. Consider increasing your provisioning level for the under-provisioned global secondary indexes with the UpdateTable API.
///
///             This message is returned when provisioned throughput is exceeded is on a provisioned GSI.
///
/// *   Throttling Error:
///
///     *   Code: `ThrottlingError`
///
///     *   Messages:
///
///         *   Throughput exceeds the current capacity of your table or index. DynamoDB is automatically scaling your table or index so please try again shortly. If exceptions persist, check if you have a hot key: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/bp-partition-key-design.html.
///
///             This message is returned when writes get throttled on an On-Demand table as DynamoDB is automatically scaling the table.
///
///         *   Throughput exceeds the current capacity for one or more global secondary indexes. DynamoDB is automatically scaling your index so please try again shortly.
///
///             This message is returned when when writes get throttled on an On-Demand GSI as DynamoDB is automatically scaling the GSI.
///
/// *   Validation Error:
///
///     *   Code: `ValidationError`
///
///     *   Messages:
///
///         *   One or more parameter values were invalid.
///
///         *   The update expression attempted to update the secondary index key beyond allowed size limits.
///
///         *   The update expression attempted to update the secondary index key to unsupported type.
///
///         *   An operand in the update expression has an incorrect data type.
///
///         *   Item size to update has exceeded the maximum allowed size.
///
///         *   Number overflow. Attempting to store a number with magnitude larger than supported range.
///
///         *   Type mismatch for attribute to update.
///
///         *   Nesting Levels have exceeded supported limits.
///
///         *   The document path provided in the update expression is invalid for update.
///
///         *   The provided expression refers to an attribute that does not exist in the item.
abstract class TransactionCanceledException
    with
        _i1.AWSEquatable<TransactionCanceledException>
    implements
        Built<TransactionCanceledException,
            TransactionCanceledExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The entire transaction request was canceled.
  ///
  /// DynamoDB cancels a `TransactWriteItems` request under the following circumstances:
  ///
  /// *   A condition in one of the condition expressions is not met.
  ///
  /// *   A table in the `TransactWriteItems` request is in a different account or region.
  ///
  /// *   More than one action in the `TransactWriteItems` operation targets the same item.
  ///
  /// *   There is insufficient provisioned capacity for the transaction to be completed.
  ///
  /// *   An item size becomes too large (larger than 400 KB), or a local secondary index (LSI) becomes too large, or a similar validation error occurs because of changes made by the transaction.
  ///
  /// *   There is a user error, such as an invalid data format.
  ///
  ///
  /// DynamoDB cancels a `TransactGetItems` request under the following circumstances:
  ///
  /// *   There is an ongoing `TransactGetItems` operation that conflicts with a concurrent `PutItem`, `UpdateItem`, `DeleteItem` or `TransactWriteItems` request. In this case the `TransactGetItems` operation fails with a `TransactionCanceledException`.
  ///
  /// *   A table in the `TransactGetItems` request is in a different account or region.
  ///
  /// *   There is insufficient provisioned capacity for the transaction to be completed.
  ///
  /// *   There is a user error, such as an invalid data format.
  ///
  ///
  /// If using Java, DynamoDB lists the cancellation reasons on the `CancellationReasons` property. This property is not set for other languages. Transaction cancellation reasons are ordered in the order of requested items, if an item has no error it will have `None` code and `Null` message.
  ///
  /// Cancellation reason codes and possible error messages:
  ///
  /// *   No Errors:
  ///
  ///     *   Code: `None`
  ///
  ///     *   Message: `null`
  ///
  /// *   Conditional Check Failed:
  ///
  ///     *   Code: `ConditionalCheckFailed`
  ///
  ///     *   Message: The conditional request failed.
  ///
  /// *   Item Collection Size Limit Exceeded:
  ///
  ///     *   Code: `ItemCollectionSizeLimitExceeded`
  ///
  ///     *   Message: Collection size exceeded.
  ///
  /// *   Transaction Conflict:
  ///
  ///     *   Code: `TransactionConflict`
  ///
  ///     *   Message: Transaction is ongoing for the item.
  ///
  /// *   Provisioned Throughput Exceeded:
  ///
  ///     *   Code: `ProvisionedThroughputExceeded`
  ///
  ///     *   Messages:
  ///
  ///         *   The level of configured provisioned throughput for the table was exceeded. Consider increasing your provisioning level with the UpdateTable API.
  ///
  ///             This Message is received when provisioned throughput is exceeded is on a provisioned DynamoDB table.
  ///
  ///         *   The level of configured provisioned throughput for one or more global secondary indexes of the table was exceeded. Consider increasing your provisioning level for the under-provisioned global secondary indexes with the UpdateTable API.
  ///
  ///             This message is returned when provisioned throughput is exceeded is on a provisioned GSI.
  ///
  /// *   Throttling Error:
  ///
  ///     *   Code: `ThrottlingError`
  ///
  ///     *   Messages:
  ///
  ///         *   Throughput exceeds the current capacity of your table or index. DynamoDB is automatically scaling your table or index so please try again shortly. If exceptions persist, check if you have a hot key: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/bp-partition-key-design.html.
  ///
  ///             This message is returned when writes get throttled on an On-Demand table as DynamoDB is automatically scaling the table.
  ///
  ///         *   Throughput exceeds the current capacity for one or more global secondary indexes. DynamoDB is automatically scaling your index so please try again shortly.
  ///
  ///             This message is returned when when writes get throttled on an On-Demand GSI as DynamoDB is automatically scaling the GSI.
  ///
  /// *   Validation Error:
  ///
  ///     *   Code: `ValidationError`
  ///
  ///     *   Messages:
  ///
  ///         *   One or more parameter values were invalid.
  ///
  ///         *   The update expression attempted to update the secondary index key beyond allowed size limits.
  ///
  ///         *   The update expression attempted to update the secondary index key to unsupported type.
  ///
  ///         *   An operand in the update expression has an incorrect data type.
  ///
  ///         *   Item size to update has exceeded the maximum allowed size.
  ///
  ///         *   Number overflow. Attempting to store a number with magnitude larger than supported range.
  ///
  ///         *   Type mismatch for attribute to update.
  ///
  ///         *   Nesting Levels have exceeded supported limits.
  ///
  ///         *   The document path provided in the update expression is invalid for update.
  ///
  ///         *   The provided expression refers to an attribute that does not exist in the item.
  factory TransactionCanceledException({
    List<_i3.CancellationReason>? cancellationReasons,
    String? message,
  }) {
    return _$TransactionCanceledException._(
      cancellationReasons: cancellationReasons == null
          ? null
          : _i4.BuiltList(cancellationReasons),
      message: message,
    );
  }

  /// The entire transaction request was canceled.
  ///
  /// DynamoDB cancels a `TransactWriteItems` request under the following circumstances:
  ///
  /// *   A condition in one of the condition expressions is not met.
  ///
  /// *   A table in the `TransactWriteItems` request is in a different account or region.
  ///
  /// *   More than one action in the `TransactWriteItems` operation targets the same item.
  ///
  /// *   There is insufficient provisioned capacity for the transaction to be completed.
  ///
  /// *   An item size becomes too large (larger than 400 KB), or a local secondary index (LSI) becomes too large, or a similar validation error occurs because of changes made by the transaction.
  ///
  /// *   There is a user error, such as an invalid data format.
  ///
  ///
  /// DynamoDB cancels a `TransactGetItems` request under the following circumstances:
  ///
  /// *   There is an ongoing `TransactGetItems` operation that conflicts with a concurrent `PutItem`, `UpdateItem`, `DeleteItem` or `TransactWriteItems` request. In this case the `TransactGetItems` operation fails with a `TransactionCanceledException`.
  ///
  /// *   A table in the `TransactGetItems` request is in a different account or region.
  ///
  /// *   There is insufficient provisioned capacity for the transaction to be completed.
  ///
  /// *   There is a user error, such as an invalid data format.
  ///
  ///
  /// If using Java, DynamoDB lists the cancellation reasons on the `CancellationReasons` property. This property is not set for other languages. Transaction cancellation reasons are ordered in the order of requested items, if an item has no error it will have `None` code and `Null` message.
  ///
  /// Cancellation reason codes and possible error messages:
  ///
  /// *   No Errors:
  ///
  ///     *   Code: `None`
  ///
  ///     *   Message: `null`
  ///
  /// *   Conditional Check Failed:
  ///
  ///     *   Code: `ConditionalCheckFailed`
  ///
  ///     *   Message: The conditional request failed.
  ///
  /// *   Item Collection Size Limit Exceeded:
  ///
  ///     *   Code: `ItemCollectionSizeLimitExceeded`
  ///
  ///     *   Message: Collection size exceeded.
  ///
  /// *   Transaction Conflict:
  ///
  ///     *   Code: `TransactionConflict`
  ///
  ///     *   Message: Transaction is ongoing for the item.
  ///
  /// *   Provisioned Throughput Exceeded:
  ///
  ///     *   Code: `ProvisionedThroughputExceeded`
  ///
  ///     *   Messages:
  ///
  ///         *   The level of configured provisioned throughput for the table was exceeded. Consider increasing your provisioning level with the UpdateTable API.
  ///
  ///             This Message is received when provisioned throughput is exceeded is on a provisioned DynamoDB table.
  ///
  ///         *   The level of configured provisioned throughput for one or more global secondary indexes of the table was exceeded. Consider increasing your provisioning level for the under-provisioned global secondary indexes with the UpdateTable API.
  ///
  ///             This message is returned when provisioned throughput is exceeded is on a provisioned GSI.
  ///
  /// *   Throttling Error:
  ///
  ///     *   Code: `ThrottlingError`
  ///
  ///     *   Messages:
  ///
  ///         *   Throughput exceeds the current capacity of your table or index. DynamoDB is automatically scaling your table or index so please try again shortly. If exceptions persist, check if you have a hot key: https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/bp-partition-key-design.html.
  ///
  ///             This message is returned when writes get throttled on an On-Demand table as DynamoDB is automatically scaling the table.
  ///
  ///         *   Throughput exceeds the current capacity for one or more global secondary indexes. DynamoDB is automatically scaling your index so please try again shortly.
  ///
  ///             This message is returned when when writes get throttled on an On-Demand GSI as DynamoDB is automatically scaling the GSI.
  ///
  /// *   Validation Error:
  ///
  ///     *   Code: `ValidationError`
  ///
  ///     *   Messages:
  ///
  ///         *   One or more parameter values were invalid.
  ///
  ///         *   The update expression attempted to update the secondary index key beyond allowed size limits.
  ///
  ///         *   The update expression attempted to update the secondary index key to unsupported type.
  ///
  ///         *   An operand in the update expression has an incorrect data type.
  ///
  ///         *   Item size to update has exceeded the maximum allowed size.
  ///
  ///         *   Number overflow. Attempting to store a number with magnitude larger than supported range.
  ///
  ///         *   Type mismatch for attribute to update.
  ///
  ///         *   Nesting Levels have exceeded supported limits.
  ///
  ///         *   The document path provided in the update expression is invalid for update.
  ///
  ///         *   The provided expression refers to an attribute that does not exist in the item.
  factory TransactionCanceledException.build(
          [void Function(TransactionCanceledExceptionBuilder) updates]) =
      _$TransactionCanceledException;

  const TransactionCanceledException._();

  /// Constructs a [TransactionCanceledException] from a [payload] and [response].
  factory TransactionCanceledException.fromResponse(
    TransactionCanceledException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.statusCode = response.statusCode;
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer> serializers = [
    TransactionCanceledExceptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransactionCanceledExceptionBuilder b) {}

  /// A list of cancellation reasons.
  _i4.BuiltList<_i3.CancellationReason>? get cancellationReasons;
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.dynamodb',
        shape: 'TransactionCanceledException',
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
  List<Object?> get props => [
        cancellationReasons,
        message,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransactionCanceledException');
    helper.add(
      'cancellationReasons',
      cancellationReasons,
    );
    helper.add(
      'message',
      message,
    );
    return helper.toString();
  }
}

class TransactionCanceledExceptionAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<TransactionCanceledException> {
  const TransactionCanceledExceptionAwsJson10Serializer()
      : super('TransactionCanceledException');

  @override
  Iterable<Type> get types => const [
        TransactionCanceledException,
        _$TransactionCanceledException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TransactionCanceledException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactionCanceledExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'CancellationReasons':
          if (value != null) {
            result.cancellationReasons.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.CancellationReason)],
              ),
            ) as _i4.BuiltList<_i3.CancellationReason>));
          }
          break;
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
    final payload = (object as TransactionCanceledException);
    final result = <Object?>[];
    if (payload.cancellationReasons != null) {
      result
        ..add('CancellationReasons')
        ..add(serializers.serialize(
          payload.cancellationReasons!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.CancellationReason)],
          ),
        ));
    }
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
