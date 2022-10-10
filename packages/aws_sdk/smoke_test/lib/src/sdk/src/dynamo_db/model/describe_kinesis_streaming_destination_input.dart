// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.describe_kinesis_streaming_destination_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_kinesis_streaming_destination_input.g.dart';

abstract class DescribeKinesisStreamingDestinationInput
    with
        _i1.HttpInput<DescribeKinesisStreamingDestinationInput>,
        _i2.AWSEquatable<DescribeKinesisStreamingDestinationInput>
    implements
        Built<DescribeKinesisStreamingDestinationInput,
            DescribeKinesisStreamingDestinationInputBuilder> {
  factory DescribeKinesisStreamingDestinationInput(
      {required String tableName}) {
    return _$DescribeKinesisStreamingDestinationInput._(tableName: tableName);
  }

  factory DescribeKinesisStreamingDestinationInput.build(
      [void Function(DescribeKinesisStreamingDestinationInputBuilder)
          updates]) = _$DescribeKinesisStreamingDestinationInput;

  const DescribeKinesisStreamingDestinationInput._();

  factory DescribeKinesisStreamingDestinationInput.fromRequest(
    DescribeKinesisStreamingDestinationInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeKinesisStreamingDestinationInputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeKinesisStreamingDestinationInputBuilder b) {}

  /// The name of the table being described.
  String get tableName;
  @override
  DescribeKinesisStreamingDestinationInput getPayload() => this;
  @override
  List<Object?> get props => [tableName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeKinesisStreamingDestinationInput');
    helper.add(
      'tableName',
      tableName,
    );
    return helper.toString();
  }
}

class DescribeKinesisStreamingDestinationInputAwsJson10Serializer extends _i1
    .StructuredSmithySerializer<DescribeKinesisStreamingDestinationInput> {
  const DescribeKinesisStreamingDestinationInputAwsJson10Serializer()
      : super('DescribeKinesisStreamingDestinationInput');

  @override
  Iterable<Type> get types => const [
        DescribeKinesisStreamingDestinationInput,
        _$DescribeKinesisStreamingDestinationInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeKinesisStreamingDestinationInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeKinesisStreamingDestinationInputBuilder();
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
    final payload = (object as DescribeKinesisStreamingDestinationInput);
    final result = <Object?>[
      'TableName',
      serializers.serialize(
        payload.tableName,
        specifiedType: const FullType(String),
      ),
    ];
    return result;
  }
}
