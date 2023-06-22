// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? tableName,
    String? streamArn,
    _i2.DestinationStatus? destinationStatus,
  }) {
    return _$KinesisStreamingDestinationOutput._(
      tableName: tableName,
      streamArn: streamArn,
      destinationStatus: destinationStatus,
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

  static const List<_i3.SmithySerializer<KinesisStreamingDestinationOutput>>
      serializers = [KinesisStreamingDestinationOutputAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(KinesisStreamingDestinationOutputBuilder b) {}

  /// The name of the table being modified.
  String? get tableName;

  /// The ARN for the specific Kinesis data stream.
  String? get streamArn;

  /// The current status of the replication.
  _i2.DestinationStatus? get destinationStatus;
  @override
  List<Object?> get props => [
        tableName,
        streamArn,
        destinationStatus,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('KinesisStreamingDestinationOutput')
          ..add(
            'tableName',
            tableName,
          )
          ..add(
            'streamArn',
            streamArn,
          )
          ..add(
            'destinationStatus',
            destinationStatus,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StreamArn':
          result.streamArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DestinationStatus':
          result.destinationStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.DestinationStatus),
          ) as _i2.DestinationStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    KinesisStreamingDestinationOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final KinesisStreamingDestinationOutput(
      :tableName,
      :streamArn,
      :destinationStatus
    ) = object;
    if (tableName != null) {
      result$
        ..add('TableName')
        ..add(serializers.serialize(
          tableName,
          specifiedType: const FullType(String),
        ));
    }
    if (streamArn != null) {
      result$
        ..add('StreamArn')
        ..add(serializers.serialize(
          streamArn,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationStatus != null) {
      result$
        ..add('DestinationStatus')
        ..add(serializers.serialize(
          destinationStatus,
          specifiedType: const FullType(_i2.DestinationStatus),
        ));
    }
    return result$;
  }
}
