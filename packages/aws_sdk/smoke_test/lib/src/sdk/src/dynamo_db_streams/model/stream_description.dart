// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db_streams.model.stream_description; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/key_schema_element.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/shard.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_view_type.dart'
    as _i3;

part 'stream_description.g.dart';

/// Represents all of the data describing a particular stream.
abstract class StreamDescription
    with _i1.AWSEquatable<StreamDescription>
    implements Built<StreamDescription, StreamDescriptionBuilder> {
  /// Represents all of the data describing a particular stream.
  factory StreamDescription({
    String? streamArn,
    String? streamLabel,
    _i2.StreamStatus? streamStatus,
    _i3.StreamViewType? streamViewType,
    DateTime? creationRequestDateTime,
    String? tableName,
    List<_i4.KeySchemaElement>? keySchema,
    List<_i5.Shard>? shards,
    String? lastEvaluatedShardId,
  }) {
    return _$StreamDescription._(
      streamArn: streamArn,
      streamLabel: streamLabel,
      streamStatus: streamStatus,
      streamViewType: streamViewType,
      creationRequestDateTime: creationRequestDateTime,
      tableName: tableName,
      keySchema: keySchema == null ? null : _i6.BuiltList(keySchema),
      shards: shards == null ? null : _i6.BuiltList(shards),
      lastEvaluatedShardId: lastEvaluatedShardId,
    );
  }

  /// Represents all of the data describing a particular stream.
  factory StreamDescription.build(
      [void Function(StreamDescriptionBuilder) updates]) = _$StreamDescription;

  const StreamDescription._();

  static const List<_i7.SmithySerializer<StreamDescription>> serializers = [
    StreamDescriptionAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StreamDescriptionBuilder b) {}

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
  _i2.StreamStatus? get streamStatus;

  /// Indicates the format of the records within this stream:
  ///
  /// *   `KEYS_ONLY` \- only the key attributes of items that were modified in the DynamoDB table.
  ///
  /// *   `NEW_IMAGE` \- entire items from the table, as they appeared after they were modified.
  ///
  /// *   `OLD_IMAGE` \- entire items from the table, as they appeared before they were modified.
  ///
  /// *   `NEW\_AND\_OLD_IMAGES` \- both the new and the old images of the items from the table.
  _i3.StreamViewType? get streamViewType;

  /// The date and time when the request to create this stream was issued.
  DateTime? get creationRequestDateTime;

  /// The DynamoDB table with which the stream is associated.
  String? get tableName;

  /// The key attribute(s) of the stream's DynamoDB table.
  _i6.BuiltList<_i4.KeySchemaElement>? get keySchema;

  /// The shards that comprise the stream.
  _i6.BuiltList<_i5.Shard>? get shards;

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
    extends _i7.StructuredSmithySerializer<StreamDescription> {
  const StreamDescriptionAwsJson10Serializer() : super('StreamDescription');

  @override
  Iterable<Type> get types => const [
        StreamDescription,
        _$StreamDescription,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
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
            specifiedType: const FullType(_i2.StreamStatus),
          ) as _i2.StreamStatus);
        case 'StreamViewType':
          result.streamViewType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StreamViewType),
          ) as _i3.StreamViewType);
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
              _i6.BuiltList,
              [FullType(_i4.KeySchemaElement)],
            ),
          ) as _i6.BuiltList<_i4.KeySchemaElement>));
        case 'Shards':
          result.shards.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(_i5.Shard)],
            ),
          ) as _i6.BuiltList<_i5.Shard>));
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
          specifiedType: const FullType(_i2.StreamStatus),
        ));
    }
    if (streamViewType != null) {
      result$
        ..add('StreamViewType')
        ..add(serializers.serialize(
          streamViewType,
          specifiedType: const FullType(_i3.StreamViewType),
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
            _i6.BuiltList,
            [FullType(_i4.KeySchemaElement)],
          ),
        ));
    }
    if (shards != null) {
      result$
        ..add('Shards')
        ..add(serializers.serialize(
          shards,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i5.Shard)],
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
