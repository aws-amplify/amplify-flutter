// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db.model.global_secondary_index_info; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/projection.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart';

part 'global_secondary_index_info.g.dart';

/// Represents the properties of a global secondary index for the table when the backup was created.
abstract class GlobalSecondaryIndexInfo
    with _i1.AWSEquatable<GlobalSecondaryIndexInfo>
    implements
        Built<GlobalSecondaryIndexInfo, GlobalSecondaryIndexInfoBuilder> {
  /// Represents the properties of a global secondary index for the table when the backup was created.
  factory GlobalSecondaryIndexInfo({
    String? indexName,
    List<KeySchemaElement>? keySchema,
    Projection? projection,
    ProvisionedThroughput? provisionedThroughput,
  }) {
    return _$GlobalSecondaryIndexInfo._(
      indexName: indexName,
      keySchema: keySchema == null ? null : _i2.BuiltList(keySchema),
      projection: projection,
      provisionedThroughput: provisionedThroughput,
    );
  }

  /// Represents the properties of a global secondary index for the table when the backup was created.
  factory GlobalSecondaryIndexInfo.build(
          [void Function(GlobalSecondaryIndexInfoBuilder) updates]) =
      _$GlobalSecondaryIndexInfo;

  const GlobalSecondaryIndexInfo._();

  static const List<_i3.SmithySerializer<GlobalSecondaryIndexInfo>>
      serializers = [GlobalSecondaryIndexInfoAwsJson10Serializer()];

  /// The name of the global secondary index.
  String? get indexName;

  /// The complete key schema for a global secondary index, which consists of one or more pairs of attribute names and key types:
  ///
  /// *   `HASH` \- partition key
  ///
  /// *   `RANGE` \- sort key
  ///
  ///
  /// The partition key of an item is also known as its _hash attribute_. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across partitions, based on their partition key values.
  ///
  /// The sort key of an item is also known as its _range attribute_. The term "range attribute" derives from the way DynamoDB stores items with the same partition key physically close together, in sorted order by the sort key value.
  _i2.BuiltList<KeySchemaElement>? get keySchema;

  /// Represents attributes that are copied (projected) from the table into the global secondary index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  Projection? get projection;

  /// Represents the provisioned throughput settings for the specified global secondary index.
  ProvisionedThroughput? get provisionedThroughput;
  @override
  List<Object?> get props => [
        indexName,
        keySchema,
        projection,
        provisionedThroughput,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GlobalSecondaryIndexInfo')
      ..add(
        'indexName',
        indexName,
      )
      ..add(
        'keySchema',
        keySchema,
      )
      ..add(
        'projection',
        projection,
      )
      ..add(
        'provisionedThroughput',
        provisionedThroughput,
      );
    return helper.toString();
  }
}

class GlobalSecondaryIndexInfoAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<GlobalSecondaryIndexInfo> {
  const GlobalSecondaryIndexInfoAwsJson10Serializer()
      : super('GlobalSecondaryIndexInfo');

  @override
  Iterable<Type> get types => const [
        GlobalSecondaryIndexInfo,
        _$GlobalSecondaryIndexInfo,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  GlobalSecondaryIndexInfo deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GlobalSecondaryIndexInfoBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'IndexName':
          result.indexName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'KeySchema':
          result.keySchema.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(KeySchemaElement)],
            ),
          ) as _i2.BuiltList<KeySchemaElement>));
        case 'Projection':
          result.projection.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Projection),
          ) as Projection));
        case 'ProvisionedThroughput':
          result.provisionedThroughput.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ProvisionedThroughput),
          ) as ProvisionedThroughput));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GlobalSecondaryIndexInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GlobalSecondaryIndexInfo(
      :indexName,
      :keySchema,
      :projection,
      :provisionedThroughput
    ) = object;
    if (indexName != null) {
      result$
        ..add('IndexName')
        ..add(serializers.serialize(
          indexName,
          specifiedType: const FullType(String),
        ));
    }
    if (keySchema != null) {
      result$
        ..add('KeySchema')
        ..add(serializers.serialize(
          keySchema,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(KeySchemaElement)],
          ),
        ));
    }
    if (projection != null) {
      result$
        ..add('Projection')
        ..add(serializers.serialize(
          projection,
          specifiedType: const FullType(Projection),
        ));
    }
    if (provisionedThroughput != null) {
      result$
        ..add('ProvisionedThroughput')
        ..add(serializers.serialize(
          provisionedThroughput,
          specifiedType: const FullType(ProvisionedThroughput),
        ));
    }
    return result$;
  }
}
