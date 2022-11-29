// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db_streams.model.stream; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'stream.g.dart';

/// Represents all of the data describing a particular stream.
abstract class Stream
    with _i1.AWSEquatable<Stream>
    implements Built<Stream, StreamBuilder> {
  /// Represents all of the data describing a particular stream.
  factory Stream({
    String? streamArn,
    String? streamLabel,
    String? tableName,
  }) {
    return _$Stream._(
      streamArn: streamArn,
      streamLabel: streamLabel,
      tableName: tableName,
    );
  }

  /// Represents all of the data describing a particular stream.
  factory Stream.build([void Function(StreamBuilder) updates]) = _$Stream;

  const Stream._();

  static const List<_i2.SmithySerializer> serializers = [
    StreamAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StreamBuilder b) {}

  /// The Amazon Resource Name (ARN) for the stream.
  String? get streamArn;

  /// A timestamp, in ISO 8601 format, for this stream.
  ///
  /// Note that `LatestStreamLabel` is not a unique identifier for the stream, because it is possible that a stream from another table might have the same timestamp. However, the combination of the following three elements is guaranteed to be unique:
  ///
  /// *   the AWS customer ID.
  ///
  /// *   the table name
  ///
  /// *   the `StreamLabel`
  String? get streamLabel;

  /// The DynamoDB table with which the stream is associated.
  String? get tableName;
  @override
  List<Object?> get props => [
        streamArn,
        streamLabel,
        tableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Stream');
    helper.add(
      'streamArn',
      streamArn,
    );
    helper.add(
      'streamLabel',
      streamLabel,
    );
    helper.add(
      'tableName',
      tableName,
    );
    return helper.toString();
  }
}

class StreamAwsJson10Serializer extends _i2.StructuredSmithySerializer<Stream> {
  const StreamAwsJson10Serializer() : super('Stream');

  @override
  Iterable<Type> get types => const [
        Stream,
        _$Stream,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  Stream deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'StreamArn':
          if (value != null) {
            result.streamArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StreamLabel':
          if (value != null) {
            result.streamLabel = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'TableName':
          if (value != null) {
            result.tableName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as Stream);
    final result = <Object?>[];
    if (payload.streamArn != null) {
      result
        ..add('StreamArn')
        ..add(serializers.serialize(
          payload.streamArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.streamLabel != null) {
      result
        ..add('StreamLabel')
        ..add(serializers.serialize(
          payload.streamLabel!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.tableName != null) {
      result
        ..add('TableName')
        ..add(serializers.serialize(
          payload.tableName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
