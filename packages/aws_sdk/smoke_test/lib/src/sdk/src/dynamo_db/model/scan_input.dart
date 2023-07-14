// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.scan_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/attribute_value.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/condition.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/conditional_operator.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/return_consumed_capacity.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/select.dart' as _i3;

part 'scan_input.g.dart';

/// Represents the input of a `Scan` operation.
abstract class ScanInput
    with _i1.HttpInput<ScanInput>, _i2.AWSEquatable<ScanInput>
    implements Built<ScanInput, ScanInputBuilder> {
  /// Represents the input of a `Scan` operation.
  factory ScanInput({
    required String tableName,
    String? indexName,
    List<String>? attributesToGet,
    int? limit,
    _i3.Select? select,
    Map<String, _i4.Condition>? scanFilter,
    _i5.ConditionalOperator? conditionalOperator,
    Map<String, _i6.AttributeValue>? exclusiveStartKey,
    _i7.ReturnConsumedCapacity? returnConsumedCapacity,
    int? totalSegments,
    int? segment,
    String? projectionExpression,
    String? filterExpression,
    Map<String, String>? expressionAttributeNames,
    Map<String, _i6.AttributeValue>? expressionAttributeValues,
    bool? consistentRead,
  }) {
    return _$ScanInput._(
      tableName: tableName,
      indexName: indexName,
      attributesToGet:
          attributesToGet == null ? null : _i8.BuiltList(attributesToGet),
      limit: limit,
      select: select,
      scanFilter: scanFilter == null ? null : _i8.BuiltMap(scanFilter),
      conditionalOperator: conditionalOperator,
      exclusiveStartKey:
          exclusiveStartKey == null ? null : _i8.BuiltMap(exclusiveStartKey),
      returnConsumedCapacity: returnConsumedCapacity,
      totalSegments: totalSegments,
      segment: segment,
      projectionExpression: projectionExpression,
      filterExpression: filterExpression,
      expressionAttributeNames: expressionAttributeNames == null
          ? null
          : _i8.BuiltMap(expressionAttributeNames),
      expressionAttributeValues: expressionAttributeValues == null
          ? null
          : _i8.BuiltMap(expressionAttributeValues),
      consistentRead: consistentRead,
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

  static const List<_i1.SmithySerializer<ScanInput>> serializers = [
    ScanInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ScanInputBuilder b) {}

  /// The name of the table containing the requested items; or, if you provide `IndexName`, the name of the table to which that index belongs.
  String get tableName;

  /// The name of a secondary index to scan. This index can be any local secondary index or global secondary index. Note that if you use the `IndexName` parameter, you must also provide `TableName`.
  String? get indexName;

  /// This is a legacy parameter. Use `ProjectionExpression` instead. For more information, see [AttributesToGet](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html) in the _Amazon DynamoDB Developer Guide_.
  _i8.BuiltList<String>? get attributesToGet;

  /// The maximum number of items to evaluate (not necessarily the number of matching items). If DynamoDB processes the number of items up to the limit while processing the results, it stops the operation and returns the matching values up to that point, and a key in `LastEvaluatedKey` to apply in a subsequent operation, so that you can pick up where you left off. Also, if the processed dataset size exceeds 1 MB before DynamoDB reaches this limit, it stops the operation and returns the matching values up to the limit, and a key in `LastEvaluatedKey` to apply in a subsequent operation to continue the operation. For more information, see [Working with Queries](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html) in the _Amazon DynamoDB Developer Guide_.
  int? get limit;

  /// The attributes to be returned in the result. You can retrieve all item attributes, specific item attributes, the count of matching items, or in the case of an index, some or all of the attributes projected into the index.
  ///
  /// *   `ALL_ATTRIBUTES` \- Returns all of the item attributes from the specified table or index. If you query a local secondary index, then for each matching item in the index, DynamoDB fetches the entire item from the parent table. If the index is configured to project all item attributes, then all of the data can be obtained from the local secondary index, and no fetching is required.
  ///
  /// *   `ALL\_PROJECTED\_ATTRIBUTES` \- Allowed only when querying an index. Retrieves all attributes that have been projected into the index. If the index is configured to project all attributes, this return value is equivalent to specifying `ALL_ATTRIBUTES`.
  ///
  /// *   `COUNT` \- Returns the number of matching items, rather than the matching items themselves. Note that this uses the same quantity of read capacity units as getting the items, and is subject to the same item size calculations.
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
  _i3.Select? get select;

  /// This is a legacy parameter. Use `FilterExpression` instead. For more information, see [ScanFilter](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html) in the _Amazon DynamoDB Developer Guide_.
  _i8.BuiltMap<String, _i4.Condition>? get scanFilter;

  /// This is a legacy parameter. Use `FilterExpression` instead. For more information, see [ConditionalOperator](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html) in the _Amazon DynamoDB Developer Guide_.
  _i5.ConditionalOperator? get conditionalOperator;

  /// The primary key of the first item that this operation will evaluate. Use the value that was returned for `LastEvaluatedKey` in the previous operation.
  ///
  /// The data type for `ExclusiveStartKey` must be String, Number or Binary. No set data types are allowed.
  ///
  /// In a parallel scan, a `Scan` request that includes `ExclusiveStartKey` must specify the same segment whose previous `Scan` returned the corresponding value of `LastEvaluatedKey`.
  _i8.BuiltMap<String, _i6.AttributeValue>? get exclusiveStartKey;

  /// Determines the level of detail about either provisioned or on-demand throughput consumption that is returned in the response:
  ///
  /// *   `INDEXES` \- The response includes the aggregate `ConsumedCapacity` for the operation, together with `ConsumedCapacity` for each table and secondary index that was accessed.
  ///
  ///     Note that some operations, such as `GetItem` and `BatchGetItem`, do not access any indexes at all. In these cases, specifying `INDEXES` will only return `ConsumedCapacity` information for table(s).
  ///
  /// *   `TOTAL` \- The response includes only the aggregate `ConsumedCapacity` for the operation.
  ///
  /// *   `NONE` \- No `ConsumedCapacity` details are included in the response.
  _i7.ReturnConsumedCapacity? get returnConsumedCapacity;

  /// For a parallel `Scan` request, `TotalSegments` represents the total number of segments into which the `Scan` operation will be divided. The value of `TotalSegments` corresponds to the number of application workers that will perform the parallel scan. For example, if you want to use four application threads to scan a table or an index, specify a `TotalSegments` value of 4.
  ///
  /// The value for `TotalSegments` must be greater than or equal to 1, and less than or equal to 1000000. If you specify a `TotalSegments` value of 1, the `Scan` operation will be sequential rather than parallel.
  ///
  /// If you specify `TotalSegments`, you must also specify `Segment`.
  int? get totalSegments;

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

  /// A string that identifies one or more attributes to retrieve from the specified table or index. These attributes can include scalars, sets, or elements of a JSON document. The attributes in the expression must be separated by commas.
  ///
  /// If no attribute names are specified, then all attributes will be returned. If any of the requested attributes are not found, they will not appear in the result.
  ///
  /// For more information, see [Specifying Item Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html) in the _Amazon DynamoDB Developer Guide_.
  String? get projectionExpression;

  /// A string that contains conditions that DynamoDB applies after the `Scan` operation, but before the data is returned to you. Items that do not satisfy the `FilterExpression` criteria are not returned.
  ///
  /// A `FilterExpression` is applied after the items have already been read; the process of filtering does not consume any additional read capacity units.
  ///
  /// For more information, see [Filter Expressions](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Query.FilterExpression) in the _Amazon DynamoDB Developer Guide_.
  String? get filterExpression;

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
  _i8.BuiltMap<String, _i6.AttributeValue>? get expressionAttributeValues;

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
  @override
  ScanInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableName,
        indexName,
        attributesToGet,
        limit,
        select,
        scanFilter,
        conditionalOperator,
        exclusiveStartKey,
        returnConsumedCapacity,
        totalSegments,
        segment,
        projectionExpression,
        filterExpression,
        expressionAttributeNames,
        expressionAttributeValues,
        consistentRead,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScanInput')
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'indexName',
        indexName,
      )
      ..add(
        'attributesToGet',
        attributesToGet,
      )
      ..add(
        'limit',
        limit,
      )
      ..add(
        'select',
        select,
      )
      ..add(
        'scanFilter',
        scanFilter,
      )
      ..add(
        'conditionalOperator',
        conditionalOperator,
      )
      ..add(
        'exclusiveStartKey',
        exclusiveStartKey,
      )
      ..add(
        'returnConsumedCapacity',
        returnConsumedCapacity,
      )
      ..add(
        'totalSegments',
        totalSegments,
      )
      ..add(
        'segment',
        segment,
      )
      ..add(
        'projectionExpression',
        projectionExpression,
      )
      ..add(
        'filterExpression',
        filterExpression,
      )
      ..add(
        'expressionAttributeNames',
        expressionAttributeNames,
      )
      ..add(
        'expressionAttributeValues',
        expressionAttributeValues,
      )
      ..add(
        'consistentRead',
        consistentRead,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IndexName':
          result.indexName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AttributesToGet':
          result.attributesToGet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(String)],
            ),
          ) as _i8.BuiltList<String>));
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Select':
          result.select = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Select),
          ) as _i3.Select);
        case 'ScanFilter':
          result.scanFilter.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltMap,
              [
                FullType(String),
                FullType(_i4.Condition),
              ],
            ),
          ) as _i8.BuiltMap<String, _i4.Condition>));
        case 'ConditionalOperator':
          result.conditionalOperator = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.ConditionalOperator),
          ) as _i5.ConditionalOperator);
        case 'ExclusiveStartKey':
          result.exclusiveStartKey.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltMap,
              [
                FullType(String),
                FullType(_i6.AttributeValue),
              ],
            ),
          ) as _i8.BuiltMap<String, _i6.AttributeValue>));
        case 'ReturnConsumedCapacity':
          result.returnConsumedCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.ReturnConsumedCapacity),
          ) as _i7.ReturnConsumedCapacity);
        case 'TotalSegments':
          result.totalSegments = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Segment':
          result.segment = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ProjectionExpression':
          result.projectionExpression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'FilterExpression':
          result.filterExpression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExpressionAttributeNames':
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
        case 'ExpressionAttributeValues':
          result.expressionAttributeValues.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i8.BuiltMap,
              [
                FullType(String),
                FullType(_i6.AttributeValue),
              ],
            ),
          ) as _i8.BuiltMap<String, _i6.AttributeValue>));
        case 'ConsistentRead':
          result.consistentRead = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ScanInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ScanInput(
      :tableName,
      :indexName,
      :attributesToGet,
      :limit,
      :select,
      :scanFilter,
      :conditionalOperator,
      :exclusiveStartKey,
      :returnConsumedCapacity,
      :totalSegments,
      :segment,
      :projectionExpression,
      :filterExpression,
      :expressionAttributeNames,
      :expressionAttributeValues,
      :consistentRead
    ) = object;
    result$.addAll([
      'TableName',
      serializers.serialize(
        tableName,
        specifiedType: const FullType(String),
      ),
    ]);
    if (indexName != null) {
      result$
        ..add('IndexName')
        ..add(serializers.serialize(
          indexName,
          specifiedType: const FullType(String),
        ));
    }
    if (attributesToGet != null) {
      result$
        ..add('AttributesToGet')
        ..add(serializers.serialize(
          attributesToGet,
          specifiedType: const FullType(
            _i8.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (limit != null) {
      result$
        ..add('Limit')
        ..add(serializers.serialize(
          limit,
          specifiedType: const FullType(int),
        ));
    }
    if (select != null) {
      result$
        ..add('Select')
        ..add(serializers.serialize(
          select,
          specifiedType: const FullType(_i3.Select),
        ));
    }
    if (scanFilter != null) {
      result$
        ..add('ScanFilter')
        ..add(serializers.serialize(
          scanFilter,
          specifiedType: const FullType(
            _i8.BuiltMap,
            [
              FullType(String),
              FullType(_i4.Condition),
            ],
          ),
        ));
    }
    if (conditionalOperator != null) {
      result$
        ..add('ConditionalOperator')
        ..add(serializers.serialize(
          conditionalOperator,
          specifiedType: const FullType(_i5.ConditionalOperator),
        ));
    }
    if (exclusiveStartKey != null) {
      result$
        ..add('ExclusiveStartKey')
        ..add(serializers.serialize(
          exclusiveStartKey,
          specifiedType: const FullType(
            _i8.BuiltMap,
            [
              FullType(String),
              FullType(_i6.AttributeValue),
            ],
          ),
        ));
    }
    if (returnConsumedCapacity != null) {
      result$
        ..add('ReturnConsumedCapacity')
        ..add(serializers.serialize(
          returnConsumedCapacity,
          specifiedType: const FullType(_i7.ReturnConsumedCapacity),
        ));
    }
    if (totalSegments != null) {
      result$
        ..add('TotalSegments')
        ..add(serializers.serialize(
          totalSegments,
          specifiedType: const FullType(int),
        ));
    }
    if (segment != null) {
      result$
        ..add('Segment')
        ..add(serializers.serialize(
          segment,
          specifiedType: const FullType(int),
        ));
    }
    if (projectionExpression != null) {
      result$
        ..add('ProjectionExpression')
        ..add(serializers.serialize(
          projectionExpression,
          specifiedType: const FullType(String),
        ));
    }
    if (filterExpression != null) {
      result$
        ..add('FilterExpression')
        ..add(serializers.serialize(
          filterExpression,
          specifiedType: const FullType(String),
        ));
    }
    if (expressionAttributeNames != null) {
      result$
        ..add('ExpressionAttributeNames')
        ..add(serializers.serialize(
          expressionAttributeNames,
          specifiedType: const FullType(
            _i8.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (expressionAttributeValues != null) {
      result$
        ..add('ExpressionAttributeValues')
        ..add(serializers.serialize(
          expressionAttributeValues,
          specifiedType: const FullType(
            _i8.BuiltMap,
            [
              FullType(String),
              FullType(_i6.AttributeValue),
            ],
          ),
        ));
    }
    if (consistentRead != null) {
      result$
        ..add('ConsistentRead')
        ..add(serializers.serialize(
          consistentRead,
          specifiedType: const FullType(bool),
        ));
    }
    return result$;
  }
}
