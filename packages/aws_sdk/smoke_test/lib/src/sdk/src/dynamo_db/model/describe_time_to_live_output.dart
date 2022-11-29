// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.dynamo_db.model.describe_time_to_live_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_to_live_description.dart'
    as _i2;

part 'describe_time_to_live_output.g.dart';

abstract class DescribeTimeToLiveOutput
    with _i1.AWSEquatable<DescribeTimeToLiveOutput>
    implements
        Built<DescribeTimeToLiveOutput, DescribeTimeToLiveOutputBuilder> {
  factory DescribeTimeToLiveOutput(
      {_i2.TimeToLiveDescription? timeToLiveDescription}) {
    return _$DescribeTimeToLiveOutput._(
        timeToLiveDescription: timeToLiveDescription);
  }

  factory DescribeTimeToLiveOutput.build(
          [void Function(DescribeTimeToLiveOutputBuilder) updates]) =
      _$DescribeTimeToLiveOutput;

  const DescribeTimeToLiveOutput._();

  /// Constructs a [DescribeTimeToLiveOutput] from a [payload] and [response].
  factory DescribeTimeToLiveOutput.fromResponse(
    DescribeTimeToLiveOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    DescribeTimeToLiveOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeTimeToLiveOutputBuilder b) {}

  _i2.TimeToLiveDescription? get timeToLiveDescription;
  @override
  List<Object?> get props => [timeToLiveDescription];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeTimeToLiveOutput');
    helper.add(
      'timeToLiveDescription',
      timeToLiveDescription,
    );
    return helper.toString();
  }
}

class DescribeTimeToLiveOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<DescribeTimeToLiveOutput> {
  const DescribeTimeToLiveOutputAwsJson10Serializer()
      : super('DescribeTimeToLiveOutput');

  @override
  Iterable<Type> get types => const [
        DescribeTimeToLiveOutput,
        _$DescribeTimeToLiveOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeTimeToLiveOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeTimeToLiveOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'TimeToLiveDescription':
          if (value != null) {
            result.timeToLiveDescription.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TimeToLiveDescription),
            ) as _i2.TimeToLiveDescription));
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
    final payload = (object as DescribeTimeToLiveOutput);
    final result = <Object?>[];
    if (payload.timeToLiveDescription != null) {
      result
        ..add('TimeToLiveDescription')
        ..add(serializers.serialize(
          payload.timeToLiveDescription!,
          specifiedType: const FullType(_i2.TimeToLiveDescription),
        ));
    }
    return result;
  }
}
