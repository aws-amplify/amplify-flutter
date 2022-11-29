// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.describe_kinesis_streaming_destination_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/kinesis_data_stream_destination.dart'
    as _i2;

part 'describe_kinesis_streaming_destination_output.g.dart';

abstract class DescribeKinesisStreamingDestinationOutput
    with
        _i1.AWSEquatable<DescribeKinesisStreamingDestinationOutput>
    implements
        Built<DescribeKinesisStreamingDestinationOutput,
            DescribeKinesisStreamingDestinationOutputBuilder> {
  factory DescribeKinesisStreamingDestinationOutput({
    List<_i2.KinesisDataStreamDestination>? kinesisDataStreamDestinations,
    String? tableName,
  }) {
    return _$DescribeKinesisStreamingDestinationOutput._(
      kinesisDataStreamDestinations: kinesisDataStreamDestinations == null
          ? null
          : _i3.BuiltList(kinesisDataStreamDestinations),
      tableName: tableName,
    );
  }

  factory DescribeKinesisStreamingDestinationOutput.build(
      [void Function(DescribeKinesisStreamingDestinationOutputBuilder)
          updates]) = _$DescribeKinesisStreamingDestinationOutput;

  const DescribeKinesisStreamingDestinationOutput._();

  /// Constructs a [DescribeKinesisStreamingDestinationOutput] from a [payload] and [response].
  factory DescribeKinesisStreamingDestinationOutput.fromResponse(
    DescribeKinesisStreamingDestinationOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeKinesisStreamingDestinationOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeKinesisStreamingDestinationOutputBuilder b) {}

  /// The list of replica structures for the table being described.
  _i3.BuiltList<_i2.KinesisDataStreamDestination>?
      get kinesisDataStreamDestinations;

  /// The name of the table being described.
  String? get tableName;
  @override
  List<Object?> get props => [
        kinesisDataStreamDestinations,
        tableName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeKinesisStreamingDestinationOutput');
    helper.add(
      'kinesisDataStreamDestinations',
      kinesisDataStreamDestinations,
    );
    helper.add(
      'tableName',
      tableName,
    );
    return helper.toString();
  }
}

class DescribeKinesisStreamingDestinationOutputAwsJson10Serializer extends _i4
    .StructuredSmithySerializer<DescribeKinesisStreamingDestinationOutput> {
  const DescribeKinesisStreamingDestinationOutputAwsJson10Serializer()
      : super('DescribeKinesisStreamingDestinationOutput');

  @override
  Iterable<Type> get types => const [
        DescribeKinesisStreamingDestinationOutput,
        _$DescribeKinesisStreamingDestinationOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeKinesisStreamingDestinationOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeKinesisStreamingDestinationOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'KinesisDataStreamDestinations':
          if (value != null) {
            result.kinesisDataStreamDestinations
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.KinesisDataStreamDestination)],
              ),
            ) as _i3.BuiltList<_i2.KinesisDataStreamDestination>));
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
    final payload = (object as DescribeKinesisStreamingDestinationOutput);
    final result = <Object?>[];
    if (payload.kinesisDataStreamDestinations != null) {
      result
        ..add('KinesisDataStreamDestinations')
        ..add(serializers.serialize(
          payload.kinesisDataStreamDestinations!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.KinesisDataStreamDestination)],
          ),
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
