// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.rollback_trigger; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'rollback_trigger.g.dart';

/// A rollback trigger CloudFormation monitors during creation and updating of stacks. If any of the alarms you specify goes to ALARM state during the stack operation or within the specified monitoring period afterwards, CloudFormation rolls back the entire stack operation.
abstract class RollbackTrigger
    with _i1.AWSEquatable<RollbackTrigger>
    implements Built<RollbackTrigger, RollbackTriggerBuilder> {
  /// A rollback trigger CloudFormation monitors during creation and updating of stacks. If any of the alarms you specify goes to ALARM state during the stack operation or within the specified monitoring period afterwards, CloudFormation rolls back the entire stack operation.
  factory RollbackTrigger({
    required String arn,
    required String type,
  }) {
    return _$RollbackTrigger._(
      arn: arn,
      type: type,
    );
  }

  /// A rollback trigger CloudFormation monitors during creation and updating of stacks. If any of the alarms you specify goes to ALARM state during the stack operation or within the specified monitoring period afterwards, CloudFormation rolls back the entire stack operation.
  factory RollbackTrigger.build(
      [void Function(RollbackTriggerBuilder) updates]) = _$RollbackTrigger;

  const RollbackTrigger._();

  static const List<_i2.SmithySerializer<RollbackTrigger>> serializers = [
    RollbackTriggerAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RollbackTriggerBuilder b) {}

  /// The Amazon Resource Name (ARN) of the rollback trigger.
  ///
  /// If a specified trigger is missing, the entire stack operation fails and is rolled back.
  String get arn;

  /// The resource type of the rollback trigger. Specify either [AWS::CloudWatch::Alarm](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html) or [AWS::CloudWatch::CompositeAlarm](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-compositealarm.html) resource types.
  String get type;
  @override
  List<Object?> get props => [
        arn,
        type,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RollbackTrigger')
      ..add(
        'arn',
        arn,
      )
      ..add(
        'type',
        type,
      );
    return helper.toString();
  }
}

class RollbackTriggerAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<RollbackTrigger> {
  const RollbackTriggerAwsQuerySerializer() : super('RollbackTrigger');

  @override
  Iterable<Type> get types => const [
        RollbackTrigger,
        _$RollbackTrigger,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RollbackTrigger deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RollbackTriggerBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Type':
          result.type = (serializers.deserialize(
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
    RollbackTrigger object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RollbackTriggerResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final RollbackTrigger(:arn, :type) = object;
    result$
      ..add(const _i2.XmlElementName('Arn'))
      ..add(serializers.serialize(
        arn,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('Type'))
      ..add(serializers.serialize(
        type,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
