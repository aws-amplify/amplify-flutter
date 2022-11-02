// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.transact_write_items_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_item_collection_metrics.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/transact_write_item.dart'
    as _i5;

part 'transact_write_items_input.g.dart';

abstract class TransactWriteItemsInput
    with
        _i1.HttpInput<TransactWriteItemsInput>,
        _i2.AWSEquatable<TransactWriteItemsInput>
    implements Built<TransactWriteItemsInput, TransactWriteItemsInputBuilder> {
  factory TransactWriteItemsInput({
    String? clientRequestToken,
    _i3.ReturnConsumedCapacity? returnConsumedCapacity,
    _i4.ReturnItemCollectionMetrics? returnItemCollectionMetrics,
    required List<_i5.TransactWriteItem> transactItems,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      clientRequestToken ??= '00000000-0000-4000-8000-000000000000';
    } else {
      clientRequestToken ??= _i2.uuid(secure: true);
    }
    return _$TransactWriteItemsInput._(
      clientRequestToken: clientRequestToken,
      returnConsumedCapacity: returnConsumedCapacity,
      returnItemCollectionMetrics: returnItemCollectionMetrics,
      transactItems: _i6.BuiltList(transactItems),
    );
  }

  factory TransactWriteItemsInput.build(
          [void Function(TransactWriteItemsInputBuilder) updates]) =
      _$TransactWriteItemsInput;

  const TransactWriteItemsInput._();

  factory TransactWriteItemsInput.fromRequest(
    TransactWriteItemsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    TransactWriteItemsInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TransactWriteItemsInputBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.clientRequestToken = '00000000-0000-4000-8000-000000000000';
    } else {
      b.clientRequestToken = _i2.uuid(secure: true);
    }
  }

  /// Providing a `ClientRequestToken` makes the call to `TransactWriteItems` idempotent, meaning that multiple identical calls have the same effect as one single call.
  ///
  /// Although multiple identical calls using the same client request token produce the same result on the server (no side effects), the responses to the calls might not be the same. If the `ReturnConsumedCapacity>` parameter is set, then the initial `TransactWriteItems` call returns the amount of write capacity units consumed in making the changes. Subsequent `TransactWriteItems` calls with the same client token return the number of read capacity units consumed in reading the item.
  ///
  /// A client request token is valid for 10 minutes after the first request that uses it is completed. After 10 minutes, any request with the same client token is treated as a new request. Do not resubmit the same request with the same client token for more than 10 minutes, or the result might not be idempotent.
  ///
  /// If you submit a request with the same client token but a change in other parameters within the 10-minute idempotency window, DynamoDB returns an `IdempotentParameterMismatch` exception.
  String? get clientRequestToken;

  /// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response:
  ///
  /// *   `INDEXES` \- The response includes the aggregate `ConsumedCapacity` for the operation, together with `ConsumedCapacity` for each table and secondary index that was accessed.
  ///
  ///     Note that some operations, such as `GetItem` and `BatchGetItem`, do not access any indexes at all. In these cases, specifying `INDEXES` will only return `ConsumedCapacity` information for table(s).
  ///
  /// *   `TOTAL` \- The response includes only the aggregate `ConsumedCapacity` for the operation.
  ///
  /// *   `NONE` \- No `ConsumedCapacity` details are included in the response.
  _i3.ReturnConsumedCapacity? get returnConsumedCapacity;

  /// Determines whether item collection metrics are returned. If set to `SIZE`, the response includes statistics about item collections (if any), that were modified during the operation and are returned in the response. If set to `NONE` (the default), no statistics are returned.
  _i4.ReturnItemCollectionMetrics? get returnItemCollectionMetrics;

  /// An ordered array of up to 100 `TransactWriteItem` objects, each of which contains a `ConditionCheck`, `Put`, `Update`, or `Delete` object. These can operate on items in different tables, but the tables must reside in the same Amazon Web Services account and Region, and no two of them can operate on the same item.
  _i6.BuiltList<_i5.TransactWriteItem> get transactItems;
  @override
  TransactWriteItemsInput getPayload() => this;
  @override
  List<Object?> get props => [
        clientRequestToken,
        returnConsumedCapacity,
        returnItemCollectionMetrics,
        transactItems,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransactWriteItemsInput');
    helper.add(
      'clientRequestToken',
      clientRequestToken,
    );
    helper.add(
      'returnConsumedCapacity',
      returnConsumedCapacity,
    );
    helper.add(
      'returnItemCollectionMetrics',
      returnItemCollectionMetrics,
    );
    helper.add(
      'transactItems',
      transactItems,
    );
    return helper.toString();
  }
}

class TransactWriteItemsInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<TransactWriteItemsInput> {
  const TransactWriteItemsInputAwsJson10Serializer()
      : super('TransactWriteItemsInput');

  @override
  Iterable<Type> get types => const [
        TransactWriteItemsInput,
        _$TransactWriteItemsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  TransactWriteItemsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactWriteItemsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ClientRequestToken':
          if (value != null) {
            result.clientRequestToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ReturnConsumedCapacity':
          if (value != null) {
            result.returnConsumedCapacity = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ReturnConsumedCapacity),
            ) as _i3.ReturnConsumedCapacity);
          }
          break;
        case 'ReturnItemCollectionMetrics':
          if (value != null) {
            result.returnItemCollectionMetrics = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ReturnItemCollectionMetrics),
            ) as _i4.ReturnItemCollectionMetrics);
          }
          break;
        case 'TransactItems':
          result.transactItems.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i5.TransactWriteItem)],
            ),
          ) as _i6.BuiltList<_i5.TransactWriteItem>));
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
    final payload = (object as TransactWriteItemsInput);
    final result = <Object?>[
      'TransactItems',
      serializers.serialize(
        payload.transactItems,
        specifiedType: const FullType(
          _i6.BuiltList,
          [FullType(_i5.TransactWriteItem)],
        ),
      ),
    ];
    if (payload.clientRequestToken != null) {
      result
        ..add('ClientRequestToken')
        ..add(serializers.serialize(
          payload.clientRequestToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.returnConsumedCapacity != null) {
      result
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          payload.returnConsumedCapacity!,
          specifiedType: const FullType(_i3.ReturnConsumedCapacity),
        ));
    }
    if (payload.returnItemCollectionMetrics != null) {
      result
        ..add('ReturnItemCollectionMetrics')
        ..add(serializers.serialize(
          payload.returnItemCollectionMetrics!,
          specifiedType: const FullType(_i4.ReturnItemCollectionMetrics),
        ));
    }
    return result;
  }
}
