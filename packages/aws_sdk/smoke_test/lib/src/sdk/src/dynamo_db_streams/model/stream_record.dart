// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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

  static const List<_i6.SmithySerializer<StreamRecord>> serializers = [
    StreamRecordAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StreamRecordBuilder b) {}

  /// The approximate date and time when the stream record was created, in [UNIX epoch time](http://www.epochconverter.com/) format and rounded down to the closest second.
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
    final helper = newBuiltValueToStringHelper('StreamRecord')
      ..add(
        'approximateCreationDateTime',
        approximateCreationDateTime,
      )
      ..add(
        'keys',
        keys,
      )
      ..add(
        'newImage',
        newImage,
      )
      ..add(
        'oldImage',
        oldImage,
      )
      ..add(
        'sequenceNumber',
        sequenceNumber,
      )
      ..add(
        'sizeBytes',
        sizeBytes,
      )
      ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ApproximateCreationDateTime':
          result.approximateCreationDateTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'Keys':
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
        case 'NewImage':
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
        case 'OldImage':
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
        case 'SequenceNumber':
          result.sequenceNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SizeBytes':
          result.sizeBytes = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Int64),
          ) as _i3.Int64);
        case 'StreamViewType':
          result.streamViewType = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.StreamViewType),
          ) as _i4.StreamViewType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StreamRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final StreamRecord(
      :approximateCreationDateTime,
      :keys,
      :newImage,
      :oldImage,
      :sequenceNumber,
      :sizeBytes,
      :streamViewType
    ) = object;
    if (approximateCreationDateTime != null) {
      result$
        ..add('ApproximateCreationDateTime')
        ..add(serializers.serialize(
          approximateCreationDateTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (keys != null) {
      result$
        ..add('Keys')
        ..add(serializers.serialize(
          keys,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(_i2.AttributeValue),
            ],
          ),
        ));
    }
    if (newImage != null) {
      result$
        ..add('NewImage')
        ..add(serializers.serialize(
          newImage,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(_i2.AttributeValue),
            ],
          ),
        ));
    }
    if (oldImage != null) {
      result$
        ..add('OldImage')
        ..add(serializers.serialize(
          oldImage,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(String),
              FullType(_i2.AttributeValue),
            ],
          ),
        ));
    }
    if (sequenceNumber != null) {
      result$
        ..add('SequenceNumber')
        ..add(serializers.serialize(
          sequenceNumber,
          specifiedType: const FullType(String),
        ));
    }
    if (sizeBytes != null) {
      result$
        ..add('SizeBytes')
        ..add(serializers.serialize(
          sizeBytes,
          specifiedType: const FullType(_i3.Int64),
        ));
    }
    if (streamViewType != null) {
      result$
        ..add('StreamViewType')
        ..add(serializers.serialize(
          streamViewType,
          specifiedType: const FullType(_i4.StreamViewType),
        ));
    }
    return result$;
  }
}
