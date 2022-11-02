// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.kinesis_streaming_destination_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/destination_status.dart'
    as _i2;

part 'kinesis_streaming_destination_output.g.dart';

abstract class KinesisStreamingDestinationOutput
    with
        _i1.AWSEquatable<KinesisStreamingDestinationOutput>
    implements
        Built<KinesisStreamingDestinationOutput,
            KinesisStreamingDestinationOutputBuilder> {
  factory KinesisStreamingDestinationOutput({
    _i2.DestinationStatus? destinationStatus,
    String? streamArn,
    String? tableName,
  }) {
    return _$KinesisStreamingDestinationOutput._(
      destinationStatus: destinationStatus,
      streamArn: streamArn,
      tableName: tableName,
    );
  }

  factory KinesisStreamingDestinationOutput.build(
          [void Function(KinesisStreamingDestinationOutputBuilder) updates]) =
      _$KinesisStreamingDestinationOutput;

  const KinesisStreamingDestinationOutput._();

  /// Constructs a [KinesisStreamingDestinationOutput] from a [payload] and [response].
  factory KinesisStreamingDestinationOutput.fromResponse(
    KinesisStreamingDestinationOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    KinesisStreamingDestinationOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(KinesisStreamingDestinationOutputBuilder b) {}

  /// The current status of the replication.
  _i2.DestinationStatus? get destinationStatus;

  /// The ARN for the specific Kinesis data stream.
  String? get streamArn;

  /// The name of the table being modified.
  String? get tableName;
  @override
  List<Object?> get props => [
        destinationStatus,
        streamArn,
        tableName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('KinesisStreamingDestinationOutput');
    helper.add(
      'destinationStatus',
      destinationStatus,
    );
    helper.add(
      'streamArn',
      streamArn,
    );
    helper.add(
      'tableName',
      tableName,
    );
    return helper.toString();
  }
}

class KinesisStreamingDestinationOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<KinesisStreamingDestinationOutput> {
  const KinesisStreamingDestinationOutputAwsJson10Serializer()
      : super('KinesisStreamingDestinationOutput');

  @override
  Iterable<Type> get types => const [
        KinesisStreamingDestinationOutput,
        _$KinesisStreamingDestinationOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  KinesisStreamingDestinationOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KinesisStreamingDestinationOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'DestinationStatus':
          if (value != null) {
            result.destinationStatus = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.DestinationStatus),
            ) as _i2.DestinationStatus);
          }
          break;
        case 'StreamArn':
          if (value != null) {
            result.streamArn = (serializers.deserialize(
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
    final payload = (object as KinesisStreamingDestinationOutput);
    final result = <Object?>[];
    if (payload.destinationStatus != null) {
      result
        ..add('DestinationStatus')
        ..add(serializers.serialize(
          payload.destinationStatus!,
          specifiedType: const FullType(_i2.DestinationStatus),
        ));
    }
    if (payload.streamArn != null) {
      result
        ..add('StreamArn')
        ..add(serializers.serialize(
          payload.streamArn!,
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
