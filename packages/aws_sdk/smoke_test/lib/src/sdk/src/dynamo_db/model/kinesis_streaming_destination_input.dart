// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.kinesis_streaming_destination_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'kinesis_streaming_destination_input.g.dart';

abstract class KinesisStreamingDestinationInput
    with
        _i1.HttpInput<KinesisStreamingDestinationInput>,
        _i2.AWSEquatable<KinesisStreamingDestinationInput>
    implements
        Built<KinesisStreamingDestinationInput,
            KinesisStreamingDestinationInputBuilder> {
  factory KinesisStreamingDestinationInput({
    required String tableName,
    required String streamArn,
  }) {
    return _$KinesisStreamingDestinationInput._(
      tableName: tableName,
      streamArn: streamArn,
    );
  }

  factory KinesisStreamingDestinationInput.build(
          [void Function(KinesisStreamingDestinationInputBuilder) updates]) =
      _$KinesisStreamingDestinationInput;

  const KinesisStreamingDestinationInput._();

  factory KinesisStreamingDestinationInput.fromRequest(
    KinesisStreamingDestinationInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    KinesisStreamingDestinationInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(KinesisStreamingDestinationInputBuilder b) {}

  /// The name of the DynamoDB table.
  String get tableName;

  /// The ARN for a Kinesis data stream.
  String get streamArn;
  @override
  KinesisStreamingDestinationInput getPayload() => this;
  @override
  List<Object?> get props => [
        tableName,
        streamArn,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('KinesisStreamingDestinationInput');
    helper.add(
      'tableName',
      tableName,
    );
    helper.add(
      'streamArn',
      streamArn,
    );
    return helper.toString();
  }
}

class KinesisStreamingDestinationInputAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<KinesisStreamingDestinationInput> {
  const KinesisStreamingDestinationInputAwsJson10Serializer()
      : super('KinesisStreamingDestinationInput');

  @override
  Iterable<Type> get types => const [
        KinesisStreamingDestinationInput,
        _$KinesisStreamingDestinationInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  KinesisStreamingDestinationInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KinesisStreamingDestinationInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'TableName':
          result.tableName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'StreamArn':
          result.streamArn = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as KinesisStreamingDestinationInput);
    final result = <Object?>[
      'TableName',
      serializers.serialize(
        payload.tableName,
        specifiedType: const FullType(String),
      ),
      'StreamArn',
      serializers.serialize(
        payload.streamArn,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
