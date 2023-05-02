// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.stack_resource_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/module_info.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_information_summary.dart'
    as _i3;

part 'stack_resource_summary.g.dart';

/// Contains high-level information about the specified stack resource.
abstract class StackResourceSummary
    with _i1.AWSEquatable<StackResourceSummary>
    implements Built<StackResourceSummary, StackResourceSummaryBuilder> {
  /// Contains high-level information about the specified stack resource.
  factory StackResourceSummary({
    required String logicalResourceId,
    String? physicalResourceId,
    required String resourceType,
    required DateTime lastUpdatedTimestamp,
    required _i2.ResourceStatus resourceStatus,
    String? resourceStatusReason,
    _i3.StackResourceDriftInformationSummary? driftInformation,
    _i4.ModuleInfo? moduleInfo,
  }) {
    return _$StackResourceSummary._(
      logicalResourceId: logicalResourceId,
      physicalResourceId: physicalResourceId,
      resourceType: resourceType,
      lastUpdatedTimestamp: lastUpdatedTimestamp,
      resourceStatus: resourceStatus,
      resourceStatusReason: resourceStatusReason,
      driftInformation: driftInformation,
      moduleInfo: moduleInfo,
    );
  }

  /// Contains high-level information about the specified stack resource.
  factory StackResourceSummary.build(
          [void Function(StackResourceSummaryBuilder) updates]) =
      _$StackResourceSummary;

  const StackResourceSummary._();

  static const List<_i5.SmithySerializer> serializers = [
    StackResourceSummaryAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackResourceSummaryBuilder b) {}

  /// The logical name of the resource specified in the template.
  String get logicalResourceId;

  /// The name or unique identifier that corresponds to a physical instance ID of the resource.
  String? get physicalResourceId;

  /// Type of resource. (For more information, go to [Amazon Web Services Resource Types Reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html) in the CloudFormation User Guide.)
  String get resourceType;

  /// Time the status was updated.
  DateTime get lastUpdatedTimestamp;

  /// Current status of the resource.
  _i2.ResourceStatus get resourceStatus;

  /// Success/failure message associated with the resource.
  String? get resourceStatusReason;

  /// Information about whether the resource's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  _i3.StackResourceDriftInformationSummary? get driftInformation;

  /// Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
  _i4.ModuleInfo? get moduleInfo;
  @override
  List<Object?> get props => [
        logicalResourceId,
        physicalResourceId,
        resourceType,
        lastUpdatedTimestamp,
        resourceStatus,
        resourceStatusReason,
        driftInformation,
        moduleInfo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackResourceSummary');
    helper.add(
      'logicalResourceId',
      logicalResourceId,
    );
    helper.add(
      'physicalResourceId',
      physicalResourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'lastUpdatedTimestamp',
      lastUpdatedTimestamp,
    );
    helper.add(
      'resourceStatus',
      resourceStatus,
    );
    helper.add(
      'resourceStatusReason',
      resourceStatusReason,
    );
    helper.add(
      'driftInformation',
      driftInformation,
    );
    helper.add(
      'moduleInfo',
      moduleInfo,
    );
    return helper.toString();
  }
}

class StackResourceSummaryAwsQuerySerializer
    extends _i5.StructuredSmithySerializer<StackResourceSummary> {
  const StackResourceSummaryAwsQuerySerializer()
      : super('StackResourceSummary');

  @override
  Iterable<Type> get types => const [
        StackResourceSummary,
        _$StackResourceSummary,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackResourceSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackResourceSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'LogicalResourceId':
          result.logicalResourceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PhysicalResourceId':
          if (value != null) {
            result.physicalResourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'LastUpdatedTimestamp':
          result.lastUpdatedTimestamp = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
        case 'ResourceStatus':
          result.resourceStatus = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ResourceStatus),
          ) as _i2.ResourceStatus);
          break;
        case 'ResourceStatusReason':
          if (value != null) {
            result.resourceStatusReason = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DriftInformation':
          if (value != null) {
            result.driftInformation.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.StackResourceDriftInformationSummary),
            ) as _i3.StackResourceDriftInformationSummary));
          }
          break;
        case 'ModuleInfo':
          if (value != null) {
            result.moduleInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ModuleInfo),
            ) as _i4.ModuleInfo));
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
    final payload = (object as StackResourceSummary);
    final result = <Object?>[
      const _i5.XmlElementName(
        'StackResourceSummaryResponse',
        _i5.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    result
      ..add(const _i5.XmlElementName('LogicalResourceId'))
      ..add(serializers.serialize(
        payload.logicalResourceId,
        specifiedType: const FullType(String),
      ));
    if (payload.physicalResourceId != null) {
      result
        ..add(const _i5.XmlElementName('PhysicalResourceId'))
        ..add(serializers.serialize(
          payload.physicalResourceId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i5.XmlElementName('ResourceType'))
      ..add(serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i5.XmlElementName('LastUpdatedTimestamp'))
      ..add(serializers.serialize(
        payload.lastUpdatedTimestamp,
        specifiedType: const FullType.nullable(DateTime),
      ));
    result
      ..add(const _i5.XmlElementName('ResourceStatus'))
      ..add(serializers.serialize(
        payload.resourceStatus,
        specifiedType: const FullType.nullable(_i2.ResourceStatus),
      ));
    if (payload.resourceStatusReason != null) {
      result
        ..add(const _i5.XmlElementName('ResourceStatusReason'))
        ..add(serializers.serialize(
          payload.resourceStatusReason!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.driftInformation != null) {
      result
        ..add(const _i5.XmlElementName('DriftInformation'))
        ..add(serializers.serialize(
          payload.driftInformation!,
          specifiedType:
              const FullType(_i3.StackResourceDriftInformationSummary),
        ));
    }
    if (payload.moduleInfo != null) {
      result
        ..add(const _i5.XmlElementName('ModuleInfo'))
        ..add(serializers.serialize(
          payload.moduleInfo!,
          specifiedType: const FullType(_i4.ModuleInfo),
        ));
    }
    return result;
  }
}
