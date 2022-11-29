// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.kinesis_data_stream_destination; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/destination_status.dart'
    as _i2;

part 'kinesis_data_stream_destination.g.dart';

/// Describes a Kinesis data stream destination.
abstract class KinesisDataStreamDestination
    with
        _i1.AWSEquatable<KinesisDataStreamDestination>
    implements
        Built<KinesisDataStreamDestination,
            KinesisDataStreamDestinationBuilder> {
  /// Describes a Kinesis data stream destination.
  factory KinesisDataStreamDestination({
    _i2.DestinationStatus? destinationStatus,
    String? destinationStatusDescription,
    String? streamArn,
  }) {
    return _$KinesisDataStreamDestination._(
      destinationStatus: destinationStatus,
      destinationStatusDescription: destinationStatusDescription,
      streamArn: streamArn,
    );
  }

  /// Describes a Kinesis data stream destination.
  factory KinesisDataStreamDestination.build(
          [void Function(KinesisDataStreamDestinationBuilder) updates]) =
      _$KinesisDataStreamDestination;

  const KinesisDataStreamDestination._();

  static const List<_i3.SmithySerializer> serializers = [
    KinesisDataStreamDestinationAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(KinesisDataStreamDestinationBuilder b) {}

  /// The current status of replication.
  _i2.DestinationStatus? get destinationStatus;

  /// The human-readable string that corresponds to the replica status.
  String? get destinationStatusDescription;

  /// The ARN for a specific Kinesis data stream.
  String? get streamArn;
  @override
  List<Object?> get props => [
        destinationStatus,
        destinationStatusDescription,
        streamArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('KinesisDataStreamDestination');
    helper.add(
      'destinationStatus',
      destinationStatus,
    );
    helper.add(
      'destinationStatusDescription',
      destinationStatusDescription,
    );
    helper.add(
      'streamArn',
      streamArn,
    );
    return helper.toString();
  }
}

class KinesisDataStreamDestinationAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<KinesisDataStreamDestination> {
  const KinesisDataStreamDestinationAwsJson10Serializer()
      : super('KinesisDataStreamDestination');

  @override
  Iterable<Type> get types => const [
        KinesisDataStreamDestination,
        _$KinesisDataStreamDestination,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  KinesisDataStreamDestination deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KinesisDataStreamDestinationBuilder();
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
        case 'DestinationStatusDescription':
          if (value != null) {
            result.destinationStatusDescription = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as KinesisDataStreamDestination);
    final result = <Object?>[];
    if (payload.destinationStatus != null) {
      result
        ..add('DestinationStatus')
        ..add(serializers.serialize(
          payload.destinationStatus!,
          specifiedType: const FullType(_i2.DestinationStatus),
        ));
    }
    if (payload.destinationStatusDescription != null) {
      result
        ..add('DestinationStatusDescription')
        ..add(serializers.serialize(
          payload.destinationStatusDescription!,
          specifiedType: const FullType(String),
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
    return result;
  }
}
