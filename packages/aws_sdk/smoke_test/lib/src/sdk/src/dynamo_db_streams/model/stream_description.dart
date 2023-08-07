// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.dynamo_db_streams.model.stream_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/key_schema_element.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/shard.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_status.dart';
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_view_type.dart';

part 'stream_description.g.dart';

/// Represents all of the data describing a particular stream.
abstract class StreamDescription
    with _i1.AWSEquatable<StreamDescription>
    implements Built<StreamDescription, StreamDescriptionBuilder> {
  /// Represents all of the data describing a particular stream.
  factory StreamDescription({
    String? streamArn,
    String? streamLabel,
    StreamStatus? streamStatus,
    StreamViewType? streamViewType,
    DateTime? creationRequestDateTime,
    String? tableName,
    List<KeySchemaElement>? keySchema,
    List<Shard>? shards,
    String? lastEvaluatedShardId,
  }) {
    return _$StreamDescription._(
      streamArn: streamArn,
      streamLabel: streamLabel,
      streamStatus: streamStatus,
      streamViewType: streamViewType,
      creationRequestDateTime: creationRequestDateTime,
      tableName: tableName,
      keySchema: keySchema == null ? null : _i2.BuiltList(keySchema),
      shards: shards == null ? null : _i2.BuiltList(shards),
      lastEvaluatedShardId: lastEvaluatedShardId,
    );
  }

  /// Represents all of the data describing a particular stream.
  factory StreamDescription.build(
      [void Function(StreamDescriptionBuilder) updates]) = _$StreamDescription;

  const StreamDescription._();

  static const List<_i3.SmithySerializer<StreamDescription>> serializers = [
    StreamDescriptionAwsJson10Serializer()
  ];

  /// The Amazon Resource Name (ARN) for the stream.
  String? get streamArn;

  /// A timestamp, in ISO 8601 format, for this stream.
  ///
  /// Note that `LatestStreamLabel` is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:
  ///
  /// *   the Amazon Web Services customer ID.
  ///
  /// *   the table name
  ///
  /// *   the `StreamLabel`
  String? get streamLabel;

  /// Indicates the current status of the stream:
  ///
  /// *   `ENABLING` \- Streams is currently being enabled on the DynamoDB table.
  ///
  /// *   `ENABLED` \- the stream is enabled.
  ///
  /// *   `DISABLING` \- Streams is currently being disabled on the DynamoDB table.
  ///
  /// *   `DISABLED` \- the stream is disabled.
  StreamStatus? get streamStatus;

  /// Indicates the format of the records within this stream:
  ///
  /// *   `KEYS_ONLY` \- only the key attributes of items that were modified in the DynamoDB table.
  ///
  /// *   `NEW_IMAGE` \- entire items from the table, as they appeared after they were modified.
  ///
  /// *   `OLD_IMAGE` \- entire items from the table, as they appeared before they were modified.
  ///
  /// *   `NEW\_AND\_OLD_IMAGES` \- both the new and the old images of the items from the table.
  StreamViewType? get streamViewType;

  /// The date and time when the request to create this stream was issued.
  DateTime? get creationRequestDateTime;

  /// The DynamoDB table with which the stream is associated.
  String? get tableName;

  /// The key attribute(s) of the stream's DynamoDB table.
  _i2.BuiltList<KeySchemaElement>? get keySchema;

  /// The shards that comprise the stream.
  _i2.BuiltList<Shard>? get shards;

  /// The shard ID of the item where the operation stopped, inclusive of the previous result set. Use this value to start a new operation, excluding this value in the new request.
  ///
  /// If `LastEvaluatedShardId` is empty, then the "last page" of results has been processed and there is currently no more data to be retrieved.
  ///
  /// If `LastEvaluatedShardId` is not empty, it does not necessarily mean that there is more data in the result set. The only way to know when you have reached the end of the result set is when `LastEvaluatedShardId` is empty.
  String? get lastEvaluatedShardId;
  @override
  List<Object?> get props => [
        streamArn,
        streamLabel,
        streamStatus,
        streamViewType,
        creationRequestDateTime,
        tableName,
        keySchema,
        shards,
        lastEvaluatedShardId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StreamDescription')
      ..add(
        'streamArn',
        streamArn,
      )
      ..add(
        'streamLabel',
        streamLabel,
      )
      ..add(
        'streamStatus',
        streamStatus,
      )
      ..add(
        'streamViewType',
        streamViewType,
      )
      ..add(
        'creationRequestDateTime',
        creationRequestDateTime,
      )
      ..add(
        'tableName',
        tableName,
      )
      ..add(
        'keySchema',
        keySchema,
      )
      ..add(
        'shards',
        shards,
      )
      ..add(
        'lastEvaluatedShardId',
        lastEvaluatedShardId,
      );
    return helper.toString();
  }
}

class StreamDescriptionAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<StreamDescription> {
  const StreamDescriptionAwsJson10Serializer() : super('StreamDescription');

  @override
  Iterable<Type> get types => const [
        StreamDescription,
        _$StreamDescription,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  StreamDescription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamDescriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StreamArn':
          result.streamArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StreamLabel':
          result.streamLabel = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StreamStatus':
          result.streamStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(StreamStatus),
          ) as StreamStatus);
        case 'StreamViewType':
          result.streamViewType = (serializers.deserialize(
            value,
            specifiedType: const FullType(StreamViewType),
          ) as StreamViewType);
        case 'CreationRequestDateTime':
          result.creationRequestDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'TableName':
          result.tableName = (serializers.deserialize(
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
        case 'Shards':
          result.shards.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Shard)],
            ),
          ) as _i2.BuiltList<Shard>));
        case 'LastEvaluatedShardId':
          result.lastEvaluatedShardId = (serializers.deserialize(
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
    StreamDescription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final StreamDescription(
      :streamArn,
      :streamLabel,
      :streamStatus,
      :streamViewType,
      :creationRequestDateTime,
      :tableName,
      :keySchema,
      :shards,
      :lastEvaluatedShardId
    ) = object;
    if (streamArn != null) {
      result$
        ..add('StreamArn')
        ..add(serializers.serialize(
          streamArn,
          specifiedType: const FullType(String),
        ));
    }
    if (streamLabel != null) {
      result$
        ..add('StreamLabel')
        ..add(serializers.serialize(
          streamLabel,
          specifiedType: const FullType(String),
        ));
    }
    if (streamStatus != null) {
      result$
        ..add('StreamStatus')
        ..add(serializers.serialize(
          streamStatus,
          specifiedType: const FullType(StreamStatus),
        ));
    }
    if (streamViewType != null) {
      result$
        ..add('StreamViewType')
        ..add(serializers.serialize(
          streamViewType,
          specifiedType: const FullType(StreamViewType),
        ));
    }
    if (creationRequestDateTime != null) {
      result$
        ..add('CreationRequestDateTime')
        ..add(serializers.serialize(
          creationRequestDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (tableName != null) {
      result$
        ..add('TableName')
        ..add(serializers.serialize(
          tableName,
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
    if (shards != null) {
      result$
        ..add('Shards')
        ..add(serializers.serialize(
          shards,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Shard)],
          ),
        ));
    }
    if (lastEvaluatedShardId != null) {
      result$
        ..add('LastEvaluatedShardId')
        ..add(serializers.serialize(
          lastEvaluatedShardId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
