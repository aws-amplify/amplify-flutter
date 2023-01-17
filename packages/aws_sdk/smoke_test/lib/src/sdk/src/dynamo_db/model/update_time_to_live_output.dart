// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.update_time_to_live_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/time_to_live_specification.dart'
    as _i2;

part 'update_time_to_live_output.g.dart';

abstract class UpdateTimeToLiveOutput
    with _i1.AWSEquatable<UpdateTimeToLiveOutput>
    implements Built<UpdateTimeToLiveOutput, UpdateTimeToLiveOutputBuilder> {
  factory UpdateTimeToLiveOutput(
      {_i2.TimeToLiveSpecification? timeToLiveSpecification}) {
    return _$UpdateTimeToLiveOutput._(
        timeToLiveSpecification: timeToLiveSpecification);
  }

  factory UpdateTimeToLiveOutput.build(
          [void Function(UpdateTimeToLiveOutputBuilder) updates]) =
      _$UpdateTimeToLiveOutput;

  const UpdateTimeToLiveOutput._();

  /// Constructs a [UpdateTimeToLiveOutput] from a [payload] and [response].
  factory UpdateTimeToLiveOutput.fromResponse(
    UpdateTimeToLiveOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    UpdateTimeToLiveOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateTimeToLiveOutputBuilder b) {}

  /// Represents the output of an `UpdateTimeToLive` operation.
  _i2.TimeToLiveSpecification? get timeToLiveSpecification;
  @override
  List<Object?> get props => [timeToLiveSpecification];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateTimeToLiveOutput');
    helper.add(
      'timeToLiveSpecification',
      timeToLiveSpecification,
    );
    return helper.toString();
  }
}

class UpdateTimeToLiveOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<UpdateTimeToLiveOutput> {
  const UpdateTimeToLiveOutputAwsJson10Serializer()
      : super('UpdateTimeToLiveOutput');

  @override
  Iterable<Type> get types => const [
        UpdateTimeToLiveOutput,
        _$UpdateTimeToLiveOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  UpdateTimeToLiveOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTimeToLiveOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'TimeToLiveSpecification':
          if (value != null) {
            result.timeToLiveSpecification.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.TimeToLiveSpecification),
            ) as _i2.TimeToLiveSpecification));
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
    final payload = (object as UpdateTimeToLiveOutput);
    final result = <Object?>[];
    if (payload.timeToLiveSpecification != null) {
      result
        ..add('TimeToLiveSpecification')
        ..add(serializers.serialize(
          payload.timeToLiveSpecification!,
          specifiedType: const FullType(_i2.TimeToLiveSpecification),
        ));
    }
    return result;
  }
}
