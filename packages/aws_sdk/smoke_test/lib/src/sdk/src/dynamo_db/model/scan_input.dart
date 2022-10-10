// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.scan_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/condition.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/conditional_operator.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/select.dart' as _i7;

part 'scan_input.g.dart';

/// Represents the input of a `Scan` operation.
abstract class ScanInput
    with _i1.HttpInput<ScanInput>, _i2.AWSEquatable<ScanInput>
    implements Built<ScanInput, ScanInputBuilder> {
  /// Represents the input of a `Scan` operation.
  factory ScanInput({
    List<String>? attributesToGet,
    _i3.ConditionalOperator? conditionalOperator,
    bool? consistentRead,
    Map<String, _i4.AttributeValue>? exclusiveStartKey,
    Map<String, String>? expressionAttributeNames,
    Map<String, _i4.AttributeValue>? expressionAttributeValues,
    String? filterExpression,
    String? indexName,
    int? limit,
    String? projectionExpression,
    _i5.ReturnConsumedCapacity? returnConsumedCapacity,
    Map<String, _i6.Condition>? scanFilter,
    int? segment,
    _i7.Select? select,
    required String tableName,
    int? totalSegments,
  }) {
    return _$ScanInput._(
      attributesToGet:
          attributesToGet == null ? null : _i8.BuiltList(attributesToGet),
      conditionalOperator: conditionalOperator,
      consistentRead: consistentRead,
      exclusiveStartKey:
          exclusiveStartKey == null ? null : _i8.BuiltMap(exclusiveStartKey),
      expressionAttributeNames: expressionAttributeNames == null
          ? null
          : _i8.BuiltMap(expressionAttributeNames),
      expressionAttributeValues: expressionAttributeValues == null
          ? null
          : _i8.BuiltMap(expressionAttributeValues),
      filterExpression: filterExpression,
      indexName: indexName,
      limit: limit,
      projectionExpression: projectionExpression,
      returnConsumedCapacity: returnConsumedCapacity,
      scanFilter: scanFilter == null ? null : _i8.BuiltMap(scanFilter),
      segment: segment,
      select: select,
      tableName: tableName,
      totalSegments: totalSegments,
    );
  }

  /// Represents the input of a `Scan` operation.
  factory ScanInput.build([void Function(ScanInputBuilder) updates]) =
      _$ScanInput;

  const ScanInput._();

  factory ScanInput.fromRequest(
    ScanInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    ScanInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScanInputBuilder b) {}

  /// This is a legacy parameter. Use `ProjectionExpression` instead. For more information, see [AttributesToGet](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html) in the _Amazon DynamoDB Developer Guide_.
  _i8.BuiltList<String>? get attributesToGet;

  /// This is a legacy parameter. Use `FilterExpression` instead. For more information, see [ConditionalOperator](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html) in the _Amazon DynamoDB Developer Guide_.
  _i3.ConditionalOperator? get conditionalOperator;

  /// A Boolean value that determines the read consistency model during the scan:
  ///
  /// *   If `ConsistentRead` is `false`, then the data returned from `Scan` might not contain the results from other recently completed write operations (`PutItem`, `UpdateItem`, or `DeleteItem`).
  ///
  /// *   If `ConsistentRead` is `true`, then all of the write operations that completed before the `Scan` began are guaranteed to be contained in the `Scan` response.
  ///
  ///
  /// The default setting for `ConsistentRead` is `false`.
  ///
  /// The `ConsistentRead` parameter is not supported on global secondary indexes. If you scan a global secondary index with `ConsistentRead` set to true, you will receive a `ValidationException`.
  bool? get consistentRead;

  /// The primary key of the first item that this operation will evaluate. Use the value that was returned for `LastEvaluatedKey` in the previous operation.
  ///
  /// The data type for `ExclusiveStartKey` must be String, Number or Binary. No set data types are allowed.
  ///
  /// In a parallel scan, a `Scan` request that includes `ExclusiveStartKey` must specify the same segment whose previous `Scan` returned the corresponding value of `LastEvaluatedKey`.
  _i8.BuiltMap<String, _i4.AttributeValue>? get exclusiveStartKey;

  /// One or more substitution tokens for attribute names in an expression. The following are some use cases for using `ExpressionAttributeNames`:
  ///
  /// *   To access an attribute whose name conflicts with a DynamoDB reserved word.
  ///
  /// *   To create a placeholder for repeating occurrences of an attribute name in an expression.
  ///
  /// *   To prevent special characters in an attribute name from being misinterpreted in an expression.
  ///
  ///
  /// Use the **#** character in an expression to dereference an attribute name. For example, consider the following attribute name:
  ///
  /// *   `Percentile`
  ///
  ///
  /// The name of this attribute conflicts with a reserved word, so it cannot be used directly in an expression. (For the complete list of reserved words, see [Reserved Words](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html) in the _Amazon DynamoDB Developer Guide_). To work around this, you could specify the following for `ExpressionAttributeNames`:
  ///
  /// *   `{"#P":"Percentile"}`
  ///
  ///
  /// You could then use this substitution in an expression, as in this example:
  ///
  /// *   `#P = :val`
  ///
  ///
  /// Tokens that begin with the **:** character are _expression attribute values_, which are placeholders for the actual value at runtime.
  ///
  /// For more information on expression attribute names, see [Specifying Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
  _i8.BuiltMap<String, String>? get expressionAttributeNames;

  /// One or more values that can be substituted in an expression.
  ///
  /// Use the **:** (colon) character in an expression to dereference an attribute value. For example, suppose that you wanted to check whether the value of the `ProductStatus` attribute was one of the following:
  ///
  /// `Available | Backordered | Discontinued`
  ///
  /// You would first need to specify `ExpressionAttributeValues` as follows:
  ///
  /// `{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"}, ":disc":{"S":"Discontinued"} }`
  ///
  /// You could then use these values in an expression, such as this:
  ///
  /// `ProductStatus IN (:avail, :back, :disc)`
  ///
  /// For more information on expression attribute values, see [Condition Expressions](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html) in the _Amazon DynamoDB Developer Guide_.
  _i8.BuiltMap<String, _i4.AttributeValue>? get expressionAttributeValues;

  /// A string that contains conditions that DynamoDB applies after the `Scan` operation, but before the data is returned to you. Items that do not satisfy the `FilterExpression` criteria are not returned.
  ///
  /// A `FilterExpression` is applied after the items have already been read; the process of filtering does not consume any additional read capacity units.
  ///
  /// For more information, see [Filter Expressions](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Query.FilterExpression) in the _Amazon DynamoDB Developer Guide_.
  String? get filterExpression;

  /// The name of a secondary index to scan. This index can be any local secondary index or global secondary index. Note that if you use the `IndexName` parameter, you must also provide `TableName`.
  String? get indexName;

  /// The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in `LastEvaluatedKey` to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed dataset size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in `LastEvaluatedKey` to apply in a subsequent operation to continue the operation. For more information, see [Working with Queries](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html) in the _Amazon DynamoDB Developer Guide_.
  int? get limit;

  /// A string that identifies one or more attributes to retrieve from the specified table or index. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.
  ///
  /// If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.
  ///
  /// For more information, see [Specifying Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
  String? get projectionExpression;

  /// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response:
  ///
  /// *   `INDEXES` \- The response includes the aggregate `ConsumedCapacity` for the operation, together with `ConsumedCapacity` for each table and secondary index that was accessed.
  ///
  ///     Note that some operations, such as `GetItem` and `BatchGetItem`, do not access any indexes at all. In these cases, specifying `INDEXES` will only return `ConsumedCapacity` information for table(s).
  ///
  /// *   `TOTAL` \- The response includes only the aggregate `ConsumedCapacity` for the operation.
  ///
  /// *   `NONE` \- No `ConsumedCapacity` details are included in the response.
  _i5.ReturnConsumedCapacity? get returnConsumedCapacity;

  /// This is a legacy parameter. Use `FilterExpression` instead. For more information, see [ScanFilter](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html) in the _Amazon DynamoDB Developer Guide_.
  _i8.BuiltMap<String, _i6.Condition>? get scanFilter;

  /// For a parallel `Scan` request, `Segment` identifies an individual segment to be scanned by an application worker.
  ///
  /// Segment IDs are zero-based, so the first segment is always 0. For example, if you want to use four application threads to scan a table or an index, then the first thread specifies a `Segment` value of 0, the second thread specifies 1, and so on.
  ///
  /// The value of `LastEvaluatedKey` returned from a parallel `Scan` request must be used as `ExclusiveStartKey` with the same segment ID in a subsequent `Scan` operation.
  ///
  /// The value for `Segment` must be greater than or equal to 0, and less than the value provided for `TotalSegments`.
  ///
  /// If you provide `Segment`, you must also provide `TotalSegments`.
  int? get segment;

  /// The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.
  ///
  /// *   `ALL_ATTRIBUTES` \- Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index, DynamoDB fetches the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.
  ///
  /// *   `ALL\_PROJECTED\_ATTRIBUTES` \- Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying `ALL_ATTRIBUTES`.
  ///
  /// *   `COUNT` \- Returns the number of matching items, rather than the matching items themselves.
  ///
  /// *   `SPECIFIC_ATTRIBUTES` \- Returns only the attributes listed in `ProjectionExpression`. This return value is equivalent to specifying `ProjectionExpression` without specifying any value for `Select`.
  ///
  ///     If you query or scan a local secondary index and request only attributes that are projected into that index, the operation reads only the index and not the table. If any of the requested attributes are not projected into the local secondary index, DynamoDB fetches each of these attributes from the parent table. This extra fetching incurs additional throughput cost and latency.
  ///
  ///     If you query or scan a global secondary index, you can only request attributes that are projected into the index. Global secondary index queries cannot fetch attributes from the parent table.
  ///
  ///
  /// If neither `Select` nor `ProjectionExpression` are specified, DynamoDB defaults to `ALL_ATTRIBUTES` when accessing a table, and `ALL\_PROJECTED\_ATTRIBUTES` when accessing an index. You cannot use both `Select` and `ProjectionExpression` together in a single request, unless the value for `Select` is `SPECIFIC_ATTRIBUTES`. (This usage is equivalent to specifying `ProjectionExpression` without any value for `Select`.)
  ///
  /// If you use the `ProjectionExpression` parameter, then the value for `Select` can only be `SPECIFIC_ATTRIBUTES`. Any other value for `Select` will return an error.
  _i7.Select? get select;

  /// The name of the table containing the requested items; or, if you provide `IndexName`, the name of the table to which that index belongs.
  String get tableName;

  /// For a parallel `Scan` request, `TotalSegments` represents the total number of segments into which the `Scan` operation will be divided. The value of `TotalSegments` corresponds to the number of application workers that will perform the parallel scan. For example, if you want to use four application threads to scan a table or an index, specify a `TotalSegments` value of 4.
  ///
  /// The value for `TotalSegments` must be greater than or equal to 1, and less than or equal to 1000000. If you specify a `TotalSegments` value of 1, the `Scan` operation will be sequential rather than parallel.
  ///
  /// If you specify `TotalSegments`, you must also specify `Segment`.
  int? get totalSegments;
  @override
  ScanInput getPayload() => this;
  @override
  List<Object?> get props => [
        attributesToGet,
        conditionalOperator,
        consistentRead,
        exclusiveStartKey,
        expressionAttributeNames,
        expressionAttributeValues,
        filterExpression,
        indexName,
        limit,
        projectionExpression,
        returnConsumedCapacity,
        scanFilter,
        segment,
        select,
        tableName,
        totalSegments,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScanInput');
    helper.add(
      'attributesToGet',
      attributesToGet,
    );
    helper.add(
      'conditionalOperator',
      conditionalOperator,
    );
    helper.add(
      'consistentRead',
      consistentRead,
    );
    helper.add(
      'exclusiveStartKey',
      exclusiveStartKey,
    );
    helper.add(
      'expressionAttributeNames',
      expressionAttributeNames,
    );
    helper.add(
      'expressionAttributeValues',
      expressionAttributeValues,
    );
    helper.add(
      'filterExpression',
      filterExpression,
    );
    helper.add(
      'indexName',
      indexName,
    );
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'projectionExpression',
      projectionExpression,
    );
    helper.add(
      'returnConsumedCapacity',
      returnConsumedCapacity,
    );
    helper.add(
      'scanFilter',
      scanFilter,
    );
    helper.add(
      'segment',
      segment,
    );
    helper.add(
      'select',
      select,
    );
    helper.add(
      'tableName',
      tableName,
    );
    helper.add(
      'totalSegments',
      totalSegments,
    );
    return helper.toString();
  }
}

class ScanInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<ScanInput> {
  const ScanInputAwsJson10Serializer() : super('ScanInput');

  @override
  Iterable<Type> get types => const [
        ScanInput,
        _$ScanInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ScanInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScanInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AttributesToGet':
          if (value != null) {
            result.attributesToGet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(String)],
              ),
            ) as _i8.BuiltList<String>));
          }
          break;
        case 'ConditionalOperator':
          if (value != null) {
            result.conditionalOperator = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ConditionalOperator),
            ) as _i3.ConditionalOperator);
          }
          break;
        case 'ConsistentRead':
          if (value != null) {
            result.consistentRead = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'ExclusiveStartKey':
          if (value != null) {
            result.exclusiveStartKey.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i8.BuiltMap,
                [
                  FullType(String),
                  FullType(_i4.AttributeValue),
                ],
              ),
            ) as _i8.BuiltMap<String, _i4.AttributeValue>));
          }
          break;
        case 'ExpressionAttributeNames':
          if (value != null) {
            result.expressionAttributeNames.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i8.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ) as _i8.BuiltMap<String, String>));
          }
          break;
        case 'ExpressionAttributeValues':
          if (value != null) {
            result.expressionAttributeValues.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i8.BuiltMap,
                [
                  FullType(String),
                  FullType(_i4.AttributeValue),
                ],
              ),
            ) as _i8.BuiltMap<String, _i4.AttributeValue>));
          }
          break;
        case 'FilterExpression':
          if (value != null) {
            result.filterExpression = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IndexName':
          if (value != null) {
            result.indexName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'ProjectionExpression':
          if (value != null) {
            result.projectionExpression = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ReturnConsumedCapacity':
          if (value != null) {
            result.returnConsumedCapacity = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.ReturnConsumedCapacity),
            ) as _i5.ReturnConsumedCapacity);
          }
          break;
        case 'ScanFilter':
          if (value != null) {
            result.scanFilter.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i8.BuiltMap,
                [
                  FullType(String),
                  FullType(_i6.Condition),
                ],
              ),
            ) as _i8.BuiltMap<String, _i6.Condition>));
          }
          break;
        case 'Segment':
          if (value != null) {
            result.segment = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'Select':
          if (value != null) {
            result.select = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i7.Select),
            ) as _i7.Select);
          }
          break;
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TotalSegments':
          if (value != null) {
            result.totalSegments = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as ScanInput);
    final result = <Object?>[
      'TableName',
      serializers.serialize(
        payload.tableName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.attributesToGet != null) {
      result
        ..add('AttributesToGet')
        ..add(serializers.serialize(
          payload.attributesToGet!,
          specifiedType: const FullType(
            _i8.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.conditionalOperator != null) {
      result
        ..add('ConditionalOperator')
        ..add(serializers.serialize(
          payload.conditionalOperator!,
          specifiedType: const FullType(_i3.ConditionalOperator),
        ));
    }
    if (payload.consistentRead != null) {
      result
        ..add('ConsistentRead')
        ..add(serializers.serialize(
          payload.consistentRead!,
          specifiedType: const FullType(bool),
        ));
    }
    if (payload.exclusiveStartKey != null) {
      result
        ..add('ExclusiveStartKey')
        ..add(serializers.serialize(
          payload.exclusiveStartKey!,
          specifiedType: const FullType(
            _i8.BuiltMap,
            [
              FullType(String),
              FullType(_i4.AttributeValue),
            ],
          ),
        ));
    }
    if (payload.expressionAttributeNames != null) {
      result
        ..add('ExpressionAttributeNames')
        ..add(serializers.serialize(
          payload.expressionAttributeNames!,
          specifiedType: const FullType(
            _i8.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.expressionAttributeValues != null) {
      result
        ..add('ExpressionAttributeValues')
        ..add(serializers.serialize(
          payload.expressionAttributeValues!,
          specifiedType: const FullType(
            _i8.BuiltMap,
            [
              FullType(String),
              FullType(_i4.AttributeValue),
            ],
          ),
        ));
    }
    if (payload.filterExpression != null) {
      result
        ..add('FilterExpression')
        ..add(serializers.serialize(
          payload.filterExpression!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.indexName != null) {
      result
        ..add('IndexName')
        ..add(serializers.serialize(
          payload.indexName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.projectionExpression != null) {
      result
        ..add('ProjectionExpression')
        ..add(serializers.serialize(
          payload.projectionExpression!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.returnConsumedCapacity != null) {
      result
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          payload.returnConsumedCapacity!,
          specifiedType: const FullType(_i5.ReturnConsumedCapacity),
        ));
    }
    if (payload.scanFilter != null) {
      result
        ..add('ScanFilter')
        ..add(serializers.serialize(
          payload.scanFilter!,
          specifiedType: const FullType(
            _i8.BuiltMap,
            [
              FullType(String),
              FullType(_i6.Condition),
            ],
          ),
        ));
    }
    if (payload.segment != null) {
      result
        ..add('Segment')
        ..add(serializers.serialize(
          payload.segment!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.select != null) {
      result
        ..add('Select')
        ..add(serializers.serialize(
          payload.select!,
          specifiedType: const FullType(_i7.Select),
        ));
    }
    if (payload.totalSegments != null) {
      result
        ..add('TotalSegments')
        ..add(serializers.serialize(
          payload.totalSegments!,
          specifiedType: const FullType(int),
        ));
    }
    return result;
  }
}
