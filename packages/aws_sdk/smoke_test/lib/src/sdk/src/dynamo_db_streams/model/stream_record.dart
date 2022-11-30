// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.stream_record; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i3;
import 'package:smithy/smithy.dart' as _i6;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/attribute_value.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_view_type.dart'
    as _i4;

part 'stream_record.g.dart';

/// A description of a single data modification that was performed on an item in a DynamoDB table.
abstract class StreamRecord
    with _i1.AWSEquatable<StreamRecord>
    implements Built<StreamRecord, StreamRecordBuilder> {
  /// A description of a single data modification that was performed on an item in a DynamoDB table.
  factory StreamRecord({
    DateTime? approximateCreationDateTime,
    Map<String, _i2.AttributeValue>? keys,
    Map<String, _i2.AttributeValue>? newImage,
    Map<String, _i2.AttributeValue>? oldImage,
    String? sequenceNumber,
    _i3.Int64? sizeBytes,
    _i4.StreamViewType? streamViewType,
  }) {
    return _$StreamRecord._(
      approximateCreationDateTime: approximateCreationDateTime,
      keys: keys == null ? null : _i5.BuiltMap(keys),
      newImage: newImage == null ? null : _i5.BuiltMap(newImage),
      oldImage: oldImage == null ? null : _i5.BuiltMap(oldImage),
      sequenceNumber: sequenceNumber,
      sizeBytes: sizeBytes,
      streamViewType: streamViewType,
    );
  }

  /// A description of a single data modification that was performed on an item in a DynamoDB table.
  factory StreamRecord.build([void Function(StreamRecordBuilder) updates]) =
      _$StreamRecord;

  const StreamRecord._();

  static const List<_i6.SmithySerializer> serializers = [
    StreamRecordAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StreamRecordBuilder b) {}

  /// The approximate date and time when the stream record was created, in [UNIX epoch time](http://www.epochconverter.com/) format.
  DateTime? get approximateCreationDateTime;

  /// The primary key attribute(s) for the DynamoDB item that was modified.
  _i5.BuiltMap<String, _i2.AttributeValue>? get keys;

  /// The item in the DynamoDB table as it appeared after it was modified.
  _i5.BuiltMap<String, _i2.AttributeValue>? get newImage;

  /// The item in the DynamoDB table as it appeared before it was modified.
  _i5.BuiltMap<String, _i2.AttributeValue>? get oldImage;

  /// The sequence number of the stream record.
  String? get sequenceNumber;

  /// The size of the stream record, in bytes.
  _i3.Int64? get sizeBytes;

  /// The type of data from the modified DynamoDB item that was captured in this stream record:
  ///
  /// *   `KEYS_ONLY` \- only the key attributes of the modified item.
  ///
  /// *   `NEW_IMAGE` \- the entire item, as it appeared after it was modified.
  ///
  /// *   `OLD_IMAGE` \- the entire item, as it appeared before it was modified.
  ///
  /// *   `NEW\_AND\_OLD_IMAGES` \- both the new and the old item images of the item.
  _i4.StreamViewType? get streamViewType;
  @override
  List<Object?> get props => [
        approximateCreationDateTime,
        keys,
        newImage,
        oldImage,
        sequenceNumber,
        sizeBytes,
        streamViewType,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StreamRecord');
    helper.add(
      'approximateCreationDateTime',
      approximateCreationDateTime,
    );
    helper.add(
      'keys',
      keys,
    );
    helper.add(
      'newImage',
      newImage,
    );
    helper.add(
      'oldImage',
      oldImage,
    );
    helper.add(
      'sequenceNumber',
      sequenceNumber,
    );
    helper.add(
      'sizeBytes',
      sizeBytes,
    );
    helper.add(
      'streamViewType',
      streamViewType,
    );
    return helper.toString();
  }
}

class StreamRecordAwsJson10Serializer
    extends _i6.StructuredSmithySerializer<StreamRecord> {
  const StreamRecordAwsJson10Serializer() : super('StreamRecord');

  @override
  Iterable<Type> get types => const [
        StreamRecord,
        _$StreamRecord,
      ];
  @override
  Iterable<_i6.ShapeId> get supportedProtocols => const [
        _i6.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  StreamRecord deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamRecordBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ApproximateCreationDateTime':
          if (value != null) {
            result.approximateCreationDateTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Keys':
          if (value != null) {
            result.keys.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltMap,
                [
                  FullType(String),
                  FullType(_i2.AttributeValue),
                ],
              ),
            ) as _i5.BuiltMap<String, _i2.AttributeValue>));
          }
          break;
        case 'NewImage':
          if (value != null) {
            result.newImage.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltMap,
                [
                  FullType(String),
                  FullType(_i2.AttributeValue),
                ],
              ),
            ) as _i5.BuiltMap<String, _i2.AttributeValue>));
          }
          break;
        case 'OldImage':
          if (value != null) {
            result.oldImage.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i5.BuiltMap,
                [
                  FullType(String),
                  FullType(_i2.AttributeValue),
                ],
              ),
            ) as _i5.BuiltMap<String, _i2.AttributeValue>));
          }
          break;
        case 'SequenceNumber':
          if (value != null) {
            result.sequenceNumber = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'SizeBytes':
          if (value != null) {
            result.sizeBytes = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.Int64),
            ) as _i3.Int64);
          }
          break;
        case 'StreamViewType':
          if (value != null) {
            result.streamViewType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.StreamViewType),
            ) as _i4.StreamViewType);
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
    final payload = (object as StreamRecord);
    final result = <Object?>[];
    if (payload.approximateCreationDateTime != null) {
      result
        ..add('ApproximateCreationDateTime')
        ..add(serializers.serialize(
          payload.approximateCreationDateTime!,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (payload.keys != null) {
      result
        ..add('Keys')
        ..add(serializers.serialize(
          payload.keys!,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(_i2.AttributeValue),
            ],
          ),
        ));
    }
    if (payload.newImage != null) {
      result
        ..add('NewImage')
        ..add(serializers.serialize(
          payload.newImage!,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(_i2.AttributeValue),
            ],
          ),
        ));
    }
    if (payload.oldImage != null) {
      result
        ..add('OldImage')
        ..add(serializers.serialize(
          payload.oldImage!,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(_i2.AttributeValue),
            ],
          ),
        ));
    }
    if (payload.sequenceNumber != null) {
      result
        ..add('SequenceNumber')
        ..add(serializers.serialize(
          payload.sequenceNumber!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.sizeBytes != null) {
      result
        ..add('SizeBytes')
        ..add(serializers.serialize(
          payload.sizeBytes!,
          specifiedType: const FullType(_i3.Int64),
        ));
    }
    if (payload.streamViewType != null) {
      result
        ..add('StreamViewType')
        ..add(serializers.serialize(
          payload.streamViewType!,
          specifiedType: const FullType(_i4.StreamViewType),
        ));
    }
    return result;
  }
}
