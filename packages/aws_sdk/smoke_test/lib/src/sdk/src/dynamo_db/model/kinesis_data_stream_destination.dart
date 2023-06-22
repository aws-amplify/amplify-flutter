// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    String? streamArn,
    _i2.DestinationStatus? destinationStatus,
    String? destinationStatusDescription,
  }) {
    return _$KinesisDataStreamDestination._(
      streamArn: streamArn,
      destinationStatus: destinationStatus,
      destinationStatusDescription: destinationStatusDescription,
    );
  }

  /// Describes a Kinesis data stream destination.
  factory KinesisDataStreamDestination.build(
          [void Function(KinesisDataStreamDestinationBuilder) updates]) =
      _$KinesisDataStreamDestination;

  const KinesisDataStreamDestination._();

  static const List<_i3.SmithySerializer<KinesisDataStreamDestination>>
      serializers = [KinesisDataStreamDestinationAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(KinesisDataStreamDestinationBuilder b) {}

  /// The ARN for a specific Kinesis data stream.
  String? get streamArn;

  /// The current status of replication.
  _i2.DestinationStatus? get destinationStatus;

  /// The human-readable string that corresponds to the replica status.
  String? get destinationStatusDescription;
  @override
  List<Object?> get props => [
        streamArn,
        destinationStatus,
        destinationStatusDescription,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('KinesisDataStreamDestination')
      ..add(
        'streamArn',
        streamArn,
      )
      ..add(
        'destinationStatus',
        destinationStatus,
      )
      ..add(
        'destinationStatusDescription',
        destinationStatusDescription,
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
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'DestinationStatusDescription':
          result.destinationStatusDescription = (serializers.deserialize(
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
    KinesisDataStreamDestination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final KinesisDataStreamDestination(
      :streamArn,
      :destinationStatus,
      :destinationStatusDescription
    ) = object;
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
    if (destinationStatusDescription != null) {
      result$
        ..add('DestinationStatusDescription')
        ..add(serializers.serialize(
          destinationStatusDescription,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
