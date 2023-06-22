// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.rollback_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_trigger.dart'
    as _i2;

part 'rollback_configuration.g.dart';

/// Structure containing the rollback triggers for CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
///
/// Rollback triggers enable you to have CloudFormation monitor the state of your application during stack creation and updating, and to roll back that operation if the application breaches the threshold of any of the alarms you've specified. For more information, see [Monitor and Roll Back Stack Operations](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-rollback-triggers.html).
abstract class RollbackConfiguration
    with _i1.AWSEquatable<RollbackConfiguration>
    implements Built<RollbackConfiguration, RollbackConfigurationBuilder> {
  /// Structure containing the rollback triggers for CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
  ///
  /// Rollback triggers enable you to have CloudFormation monitor the state of your application during stack creation and updating, and to roll back that operation if the application breaches the threshold of any of the alarms you've specified. For more information, see [Monitor and Roll Back Stack Operations](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-rollback-triggers.html).
  factory RollbackConfiguration({
    List<_i2.RollbackTrigger>? rollbackTriggers,
    int? monitoringTimeInMinutes,
  }) {
    return _$RollbackConfiguration._(
      rollbackTriggers:
          rollbackTriggers == null ? null : _i3.BuiltList(rollbackTriggers),
      monitoringTimeInMinutes: monitoringTimeInMinutes,
    );
  }

  /// Structure containing the rollback triggers for CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
  ///
  /// Rollback triggers enable you to have CloudFormation monitor the state of your application during stack creation and updating, and to roll back that operation if the application breaches the threshold of any of the alarms you've specified. For more information, see [Monitor and Roll Back Stack Operations](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-rollback-triggers.html).
  factory RollbackConfiguration.build(
          [void Function(RollbackConfigurationBuilder) updates]) =
      _$RollbackConfiguration;

  const RollbackConfiguration._();

  static const List<_i4.SmithySerializer<RollbackConfiguration>> serializers = [
    RollbackConfigurationAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RollbackConfigurationBuilder b) {}

  /// The triggers to monitor during stack creation or update actions.
  ///
  /// By default, CloudFormation saves the rollback triggers specified for a stack and applies them to any subsequent update operations for the stack, unless you specify otherwise. If you do specify rollback triggers for this parameter, those triggers replace any list of triggers previously specified for the stack. This means:
  ///
  /// *   To use the rollback triggers previously specified for this stack, if any, don't specify this parameter.
  ///
  /// *   To specify new or updated rollback triggers, you must specify _all_ the triggers that you want used for this stack, even triggers you've specified before (for example, when creating the stack or during a previous stack update). Any triggers that you don't include in the updated list of triggers are no longer applied to the stack.
  ///
  /// *   To remove all currently specified triggers, specify an empty list for this parameter.
  ///
  ///
  /// If a specified trigger is missing, the entire stack operation fails and is rolled back.
  _i3.BuiltList<_i2.RollbackTrigger>? get rollbackTriggers;

  /// The amount of time, in minutes, during which CloudFormation should monitor all the rollback triggers after the stack creation or update operation deploys all necessary resources.
  ///
  /// The default is 0 minutes.
  ///
  /// If you specify a monitoring period but don't specify any rollback triggers, CloudFormation still waits the specified period of time before cleaning up old resources after update operations. You can use this monitoring period to perform any manual stack validation desired, and manually cancel the stack creation or update (using [CancelUpdateStack](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CancelUpdateStack.html), for example) as necessary.
  ///
  /// If you specify 0 for this parameter, CloudFormation still monitors the specified rollback triggers during stack creation and update operations. Then, for update operations, it begins disposing of old resources immediately once the operation completes.
  int? get monitoringTimeInMinutes;
  @override
  List<Object?> get props => [
        rollbackTriggers,
        monitoringTimeInMinutes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RollbackConfiguration')
      ..add(
        'rollbackTriggers',
        rollbackTriggers,
      )
      ..add(
        'monitoringTimeInMinutes',
        monitoringTimeInMinutes,
      );
    return helper.toString();
  }
}

class RollbackConfigurationAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<RollbackConfiguration> {
  const RollbackConfigurationAwsQuerySerializer()
      : super('RollbackConfiguration');

  @override
  Iterable<Type> get types => const [
        RollbackConfiguration,
        _$RollbackConfiguration,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RollbackConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RollbackConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'RollbackTriggers':
          result.rollbackTriggers.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.RollbackTrigger)],
            ),
          ) as _i3.BuiltList<_i2.RollbackTrigger>));
        case 'MonitoringTimeInMinutes':
          result.monitoringTimeInMinutes = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RollbackConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'RollbackConfigurationResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final RollbackConfiguration(:rollbackTriggers, :monitoringTimeInMinutes) =
        object;
    if (rollbackTriggers != null) {
      result$
        ..add(const _i4.XmlElementName('RollbackTriggers'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          rollbackTriggers,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.RollbackTrigger)],
          ),
        ));
    }
    if (monitoringTimeInMinutes != null) {
      result$
        ..add(const _i4.XmlElementName('MonitoringTimeInMinutes'))
        ..add(serializers.serialize(
          monitoringTimeInMinutes,
          specifiedType: const FullType.nullable(int),
        ));
    }
    return result$;
  }
}
