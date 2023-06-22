// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.create_global_secondary_index_action; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/key_schema_element.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/projection.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/provisioned_throughput.dart'
    as _i4;

part 'create_global_secondary_index_action.g.dart';

/// Represents a new global secondary index to be added to an existing table.
abstract class CreateGlobalSecondaryIndexAction
    with
        _i1.AWSEquatable<CreateGlobalSecondaryIndexAction>
    implements
        Built<CreateGlobalSecondaryIndexAction,
            CreateGlobalSecondaryIndexActionBuilder> {
  /// Represents a new global secondary index to be added to an existing table.
  factory CreateGlobalSecondaryIndexAction({
    required String indexName,
    required List<_i2.KeySchemaElement> keySchema,
    required _i3.Projection projection,
    _i4.ProvisionedThroughput? provisionedThroughput,
  }) {
    return _$CreateGlobalSecondaryIndexAction._(
      indexName: indexName,
      keySchema: _i5.BuiltList(keySchema),
      projection: projection,
      provisionedThroughput: provisionedThroughput,
    );
  }

  /// Represents a new global secondary index to be added to an existing table.
  factory CreateGlobalSecondaryIndexAction.build(
          [void Function(CreateGlobalSecondaryIndexActionBuilder) updates]) =
      _$CreateGlobalSecondaryIndexAction;

  const CreateGlobalSecondaryIndexAction._();

  static const List<_i6.SmithySerializer<CreateGlobalSecondaryIndexAction>>
      serializers = [CreateGlobalSecondaryIndexActionAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateGlobalSecondaryIndexActionBuilder b) {}

  /// The name of the global secondary index to be created.
  String get indexName;

  /// The key schema for the global secondary index.
  _i5.BuiltList<_i2.KeySchemaElement> get keySchema;

  /// Represents attributes that are copied (projected) from the table into an index. These are in addition to the primary key attributes and index key attributes, which are automatically projected.
  _i3.Projection get projection;

  /// Represents the provisioned throughput settings for the specified global secondary index.
  ///
  /// For current minimum and maximum provisioned throughput values, see [Service, Account, and Table Quotas](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html) in the _Amazon DynamoDB Developer Guide_.
  _i4.ProvisionedThroughput? get provisionedThroughput;
  @override
  List<Object?> get props => [
        indexName,
        keySchema,
        projection,
        provisionedThroughput,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateGlobalSecondaryIndexAction')
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

class CreateGlobalSecondaryIndexActionAwsJson10Serializer
    extends _i6.StructuredSmithySerializer<CreateGlobalSecondaryIndexAction> {
  const CreateGlobalSecondaryIndexActionAwsJson10Serializer()
      : super('CreateGlobalSecondaryIndexAction');

  @override
  Iterable<Type> get types => const [
        CreateGlobalSecondaryIndexAction,
        _$CreateGlobalSecondaryIndexAction,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  CreateGlobalSecondaryIndexAction deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateGlobalSecondaryIndexActionBuilder();
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
              _i5.BuiltList,
              [FullType(_i2.KeySchemaElement)],
            ),
          ) as _i5.BuiltList<_i2.KeySchemaElement>));
        case 'Projection':
          result.projection.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Projection),
          ) as _i3.Projection));
        case 'ProvisionedThroughput':
          result.provisionedThroughput.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.ProvisionedThroughput),
          ) as _i4.ProvisionedThroughput));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateGlobalSecondaryIndexAction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CreateGlobalSecondaryIndexAction(
      :indexName,
      :keySchema,
      :projection,
      :provisionedThroughput
    ) = object;
    result$.addAll([
      'IndexName',
      serializers.serialize(
        indexName,
        specifiedType: const FullType(String),
      ),
      'KeySchema',
      serializers.serialize(
        keySchema,
        specifiedType: const FullType(
          _i5.BuiltList,
          [FullType(_i2.KeySchemaElement)],
        ),
      ),
      'Projection',
      serializers.serialize(
        projection,
        specifiedType: const FullType(_i3.Projection),
      ),
    ]);
    if (provisionedThroughput != null) {
      result$
        ..add('ProvisionedThroughput')
        ..add(serializers.serialize(
          provisionedThroughput,
          specifiedType: const FullType(_i4.ProvisionedThroughput),
        ));
    }
    return result$;
  }
}
