// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db_streams.model.record; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/identity.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/operation_type.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_record.dart'
    as _i3;

part 'record.g.dart';

/// A description of a unique event within a stream.
abstract class Record
    with _i1.AWSEquatable<Record>
    implements Built<Record, RecordBuilder> {
  /// A description of a unique event within a stream.
  factory Record({
    String? eventId,
    _i2.OperationType? eventName,
    String? eventVersion,
    String? eventSource,
    String? awsRegion,
    _i3.StreamRecord? dynamodb,
    _i4.Identity? userIdentity,
  }) {
    return _$Record._(
      eventId: eventId,
      eventName: eventName,
      eventVersion: eventVersion,
      eventSource: eventSource,
      awsRegion: awsRegion,
      dynamodb: dynamodb,
      userIdentity: userIdentity,
    );
  }

  /// A description of a unique event within a stream.
  factory Record.build([void Function(RecordBuilder) updates]) = _$Record;

  const Record._();

  static const List<_i5.SmithySerializer<Record>> serializers = [
    RecordAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecordBuilder b) {}

  /// A globally unique identifier for the event that was recorded in this stream record.
  String? get eventId;

  /// The type of data modification that was performed on the DynamoDB table:
  ///
  /// *   `INSERT` \- a new item was added to the table.
  ///
  /// *   `MODIFY` \- one or more of an existing item's attributes were modified.
  ///
  /// *   `REMOVE` \- the item was deleted from the table
  _i2.OperationType? get eventName;

  /// The version number of the stream record format. This number is updated whenever the structure of `Record` is modified.
  ///
  /// Client applications must not assume that `eventVersion` will remain at a particular value, as this number is subject to change at any time. In general, `eventVersion` will only increase as the low-level DynamoDB Streams API evolves.
  String? get eventVersion;

  /// The Amazon Web Services service from which the stream record originated. For DynamoDB Streams, this is `aws:dynamodb`.
  String? get eventSource;

  /// The region in which the `GetRecords` request was received.
  String? get awsRegion;

  /// The main body of the stream record, containing all of the DynamoDB-specific fields.
  _i3.StreamRecord? get dynamodb;

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
        eventId,
        eventName,
        eventVersion,
        eventSource,
        awsRegion,
        dynamodb,
        userIdentity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Record')
      ..add(
        'eventId',
        eventId,
      )
      ..add(
        'eventName',
        eventName,
      )
      ..add(
        'eventVersion',
        eventVersion,
      )
      ..add(
        'eventSource',
        eventSource,
      )
      ..add(
        'awsRegion',
        awsRegion,
      )
      ..add(
        'dynamodb',
        dynamodb,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'eventID':
          result.eventId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'eventName':
          result.eventName = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.OperationType),
          ) as _i2.OperationType);
        case 'eventVersion':
          result.eventVersion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'eventSource':
          result.eventSource = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'awsRegion':
          result.awsRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dynamodb':
          result.dynamodb.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StreamRecord),
          ) as _i3.StreamRecord));
        case 'userIdentity':
          result.userIdentity.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Identity),
          ) as _i4.Identity));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Record object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final Record(
      :eventId,
      :eventName,
      :eventVersion,
      :eventSource,
      :awsRegion,
      :dynamodb,
      :userIdentity
    ) = object;
    if (eventId != null) {
      result$
        ..add('eventID')
        ..add(serializers.serialize(
          eventId,
          specifiedType: const FullType(String),
        ));
    }
    if (eventName != null) {
      result$
        ..add('eventName')
        ..add(serializers.serialize(
          eventName,
          specifiedType: const FullType(_i2.OperationType),
        ));
    }
    if (eventVersion != null) {
      result$
        ..add('eventVersion')
        ..add(serializers.serialize(
          eventVersion,
          specifiedType: const FullType(String),
        ));
    }
    if (eventSource != null) {
      result$
        ..add('eventSource')
        ..add(serializers.serialize(
          eventSource,
          specifiedType: const FullType(String),
        ));
    }
    if (awsRegion != null) {
      result$
        ..add('awsRegion')
        ..add(serializers.serialize(
          awsRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (dynamodb != null) {
      result$
        ..add('dynamodb')
        ..add(serializers.serialize(
          dynamodb,
          specifiedType: const FullType(_i3.StreamRecord),
        ));
    }
    if (userIdentity != null) {
      result$
        ..add('userIdentity')
        ..add(serializers.serialize(
          userIdentity,
          specifiedType: const FullType(_i4.Identity),
        ));
    }
    return result$;
  }
}
