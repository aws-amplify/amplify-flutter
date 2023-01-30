// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.record; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/identity.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/operation_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_record.dart'
    as _i2;

part 'record.g.dart';

/// A description of a unique event within a stream.
abstract class Record
    with _i1.AWSEquatable<Record>
    implements Built<Record, RecordBuilder> {
  /// A description of a unique event within a stream.
  factory Record({
    String? awsRegion,
    _i2.StreamRecord? dynamodb,
    String? eventId,
    _i3.OperationType? eventName,
    String? eventSource,
    String? eventVersion,
    _i4.Identity? userIdentity,
  }) {
    return _$Record._(
      awsRegion: awsRegion,
      dynamodb: dynamodb,
      eventId: eventId,
      eventName: eventName,
      eventSource: eventSource,
      eventVersion: eventVersion,
      userIdentity: userIdentity,
    );
  }

  /// A description of a unique event within a stream.
  factory Record.build([void Function(RecordBuilder) updates]) = _$Record;

  const Record._();

  static const List<_i5.SmithySerializer> serializers = [
    RecordAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecordBuilder b) {}

  /// The region in which the `GetRecords` request was received.
  String? get awsRegion;

  /// The main body of the stream record, containing all of the DynamoDB-specific fields.
  _i2.StreamRecord? get dynamodb;

  /// A globally unique identifier for the event that was recorded in this stream record.
  String? get eventId;

  /// The type of data modification that was performed on the DynamoDB table:
  ///
  /// *   `INSERT` \- a new item was added to the table.
  ///
  /// *   `MODIFY` \- one or more of an existing item's attributes were modified.
  ///
  /// *   `REMOVE` \- the item was deleted from the table
  _i3.OperationType? get eventName;

  /// The AWS service from which the stream record originated. For DynamoDB Streams, this is `aws:dynamodb`.
  String? get eventSource;

  /// The version number of the stream record format. This number is updated whenever the structure of `Record` is modified.
  ///
  /// Client applications must not assume that `eventVersion` will remain at a particular value, as this number is subject to change at any time. In general, `eventVersion` will only increase as the low-level DynamoDB Streams API evolves.
  String? get eventVersion;

  /// Items that are deleted by the Time to Live process after expiration have the following fields:
  ///
  /// *   Records\[\].userIdentity.type
  ///
  ///     "Service"
  ///
  /// *   Records\[\].userIdentity.principalId
  ///
  ///     "dynamodb.amazonaws.com"
  _i4.Identity? get userIdentity;
  @override
  List<Object?> get props => [
        awsRegion,
        dynamodb,
        eventId,
        eventName,
        eventSource,
        eventVersion,
        userIdentity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Record');
    helper.add(
      'awsRegion',
      awsRegion,
    );
    helper.add(
      'dynamodb',
      dynamodb,
    );
    helper.add(
      'eventId',
      eventId,
    );
    helper.add(
      'eventName',
      eventName,
    );
    helper.add(
      'eventSource',
      eventSource,
    );
    helper.add(
      'eventVersion',
      eventVersion,
    );
    helper.add(
      'userIdentity',
      userIdentity,
    );
    return helper.toString();
  }
}

class RecordAwsJson10Serializer extends _i5.StructuredSmithySerializer<Record> {
  const RecordAwsJson10Serializer() : super('Record');

  @override
  Iterable<Type> get types => const [
        Record,
        _$Record,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  Record deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecordBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'awsRegion':
          if (value != null) {
            result.awsRegion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'dynamodb':
          if (value != null) {
            result.dynamodb.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.StreamRecord),
            ) as _i2.StreamRecord));
          }
          break;
        case 'eventID':
          if (value != null) {
            result.eventId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'eventName':
          if (value != null) {
            result.eventName = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.OperationType),
            ) as _i3.OperationType);
          }
          break;
        case 'eventSource':
          if (value != null) {
            result.eventSource = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'eventVersion':
          if (value != null) {
            result.eventVersion = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'userIdentity':
          if (value != null) {
            result.userIdentity.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Identity),
            ) as _i4.Identity));
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
    final payload = (object as Record);
    final result = <Object?>[];
    if (payload.awsRegion != null) {
      result
        ..add('awsRegion')
        ..add(serializers.serialize(
          payload.awsRegion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.dynamodb != null) {
      result
        ..add('dynamodb')
        ..add(serializers.serialize(
          payload.dynamodb!,
          specifiedType: const FullType(_i2.StreamRecord),
        ));
    }
    if (payload.eventId != null) {
      result
        ..add('eventID')
        ..add(serializers.serialize(
          payload.eventId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.eventName != null) {
      result
        ..add('eventName')
        ..add(serializers.serialize(
          payload.eventName!,
          specifiedType: const FullType(_i3.OperationType),
        ));
    }
    if (payload.eventSource != null) {
      result
        ..add('eventSource')
        ..add(serializers.serialize(
          payload.eventSource!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.eventVersion != null) {
      result
        ..add('eventVersion')
        ..add(serializers.serialize(
          payload.eventVersion!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userIdentity != null) {
      result
        ..add('userIdentity')
        ..add(serializers.serialize(
          payload.userIdentity!,
          specifiedType: const FullType(_i4.Identity),
        ));
    }
    return result;
  }
}
