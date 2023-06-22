// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db_streams.model.describe_stream_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db_streams/model/stream_description.dart'
    as _i2;

part 'describe_stream_output.g.dart';

/// Represents the output of a `DescribeStream` operation.
abstract class DescribeStreamOutput
    with _i1.AWSEquatable<DescribeStreamOutput>
    implements Built<DescribeStreamOutput, DescribeStreamOutputBuilder> {
  /// Represents the output of a `DescribeStream` operation.
  factory DescribeStreamOutput({_i2.StreamDescription? streamDescription}) {
    return _$DescribeStreamOutput._(streamDescription: streamDescription);
  }

  /// Represents the output of a `DescribeStream` operation.
  factory DescribeStreamOutput.build(
          [void Function(DescribeStreamOutputBuilder) updates]) =
      _$DescribeStreamOutput;

  const DescribeStreamOutput._();

  /// Constructs a [DescribeStreamOutput] from a [payload] and [response].
  factory DescribeStreamOutput.fromResponse(
    DescribeStreamOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeStreamOutput>> serializers = [
    DescribeStreamOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStreamOutputBuilder b) {}

  /// A complete description of the stream, including its creation date and time, the DynamoDB table associated with the stream, the shard IDs within the stream, and the beginning and ending sequence numbers of stream records within the shards.
  _i2.StreamDescription? get streamDescription;
  @override
  List<Object?> get props => [streamDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStreamOutput')
      ..add(
        'streamDescription',
        streamDescription,
      );
    return helper.toString();
  }
}

class DescribeStreamOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<DescribeStreamOutput> {
  const DescribeStreamOutputAwsJson10Serializer()
      : super('DescribeStreamOutput');

  @override
  Iterable<Type> get types => const [
        DescribeStreamOutput,
        _$DescribeStreamOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeStreamOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStreamOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StreamDescription':
          result.streamDescription.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StreamDescription),
          ) as _i2.StreamDescription));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeStreamOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeStreamOutput(:streamDescription) = object;
    if (streamDescription != null) {
      result$
        ..add('StreamDescription')
        ..add(serializers.serialize(
          streamDescription,
          specifiedType: const FullType(_i2.StreamDescription),
        ));
    }
    return result$;
  }
}
