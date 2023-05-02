// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.stack_summary; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_information_summary.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_status.dart'
    as _i2;

part 'stack_summary.g.dart';

/// The StackSummary Data Type
abstract class StackSummary
    with _i1.AWSEquatable<StackSummary>
    implements Built<StackSummary, StackSummaryBuilder> {
  /// The StackSummary Data Type
  factory StackSummary({
    String? stackId,
    required String stackName,
    String? templateDescription,
    required DateTime creationTime,
    DateTime? lastUpdatedTime,
    DateTime? deletionTime,
    required _i2.StackStatus stackStatus,
    String? stackStatusReason,
    String? parentId,
    String? rootId,
    _i3.StackDriftInformationSummary? driftInformation,
  }) {
    return _$StackSummary._(
      stackId: stackId,
      stackName: stackName,
      templateDescription: templateDescription,
      creationTime: creationTime,
      lastUpdatedTime: lastUpdatedTime,
      deletionTime: deletionTime,
      stackStatus: stackStatus,
      stackStatusReason: stackStatusReason,
      parentId: parentId,
      rootId: rootId,
      driftInformation: driftInformation,
    );
  }

  /// The StackSummary Data Type
  factory StackSummary.build([void Function(StackSummaryBuilder) updates]) =
      _$StackSummary;

  const StackSummary._();

  static const List<_i4.SmithySerializer> serializers = [
    StackSummaryAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackSummaryBuilder b) {}

  /// Unique stack identifier.
  String? get stackId;

  /// The name associated with the stack.
  String get stackName;

  /// The template description of the template used to create the stack.
  String? get templateDescription;

  /// The time the stack was created.
  DateTime get creationTime;

  /// The time the stack was last updated. This field will only be returned if the stack has been updated at least once.
  DateTime? get lastUpdatedTime;

  /// The time the stack was deleted.
  DateTime? get deletionTime;

  /// The current status of the stack.
  _i2.StackStatus get stackStatus;

  /// Success/Failure message associated with the stack status.
  String? get stackStatusReason;

  /// For nested stacks--stacks created as resources for another stack--the stack ID of the direct parent of this stack. For the first level of nested stacks, the root stack is also the parent stack.
  ///
  /// For more information, see [Working with Nested Stacks](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html) in the _CloudFormation User Guide_.
  String? get parentId;

  /// For nested stacks--stacks created as resources for another stack--the stack ID of the top-level stack to which the nested stack ultimately belongs.
  ///
  /// For more information, see [Working with Nested Stacks](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html) in the _CloudFormation User Guide_.
  String? get rootId;

  /// Summarizes information about whether a stack's actual configuration differs, or has _drifted_, from it's expected configuration, as defined in the stack template and any values specified as template parameters. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  _i3.StackDriftInformationSummary? get driftInformation;
  @override
  List<Object?> get props => [
        stackId,
        stackName,
        templateDescription,
        creationTime,
        lastUpdatedTime,
        deletionTime,
        stackStatus,
        stackStatusReason,
        parentId,
        rootId,
        driftInformation,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackSummary');
    helper.add(
      'stackId',
      stackId,
    );
    helper.add(
      'stackName',
      stackName,
    );
    helper.add(
      'templateDescription',
      templateDescription,
    );
    helper.add(
      'creationTime',
      creationTime,
    );
    helper.add(
      'lastUpdatedTime',
      lastUpdatedTime,
    );
    helper.add(
      'deletionTime',
      deletionTime,
    );
    helper.add(
      'stackStatus',
      stackStatus,
    );
    helper.add(
      'stackStatusReason',
      stackStatusReason,
    );
    helper.add(
      'parentId',
      parentId,
    );
    helper.add(
      'rootId',
      rootId,
    );
    helper.add(
      'driftInformation',
      driftInformation,
    );
    return helper.toString();
  }
}

class StackSummaryAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<StackSummary> {
  const StackSummaryAwsQuerySerializer() : super('StackSummary');

  @override
  Iterable<Type> get types => const [
        StackSummary,
        _$StackSummary,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackSummary deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackSummaryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackId':
          if (value != null) {
            result.stackId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'TemplateDescription':
          if (value != null) {
            result.templateDescription = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CreationTime':
          result.creationTime = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
        case 'LastUpdatedTime':
          if (value != null) {
            result.lastUpdatedTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'DeletionTime':
          if (value != null) {
            result.deletionTime = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'StackStatus':
          result.stackStatus = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.StackStatus),
          ) as _i2.StackStatus);
          break;
        case 'StackStatusReason':
          if (value != null) {
            result.stackStatusReason = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ParentId':
          if (value != null) {
            result.parentId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'RootId':
          if (value != null) {
            result.rootId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DriftInformation':
          if (value != null) {
            result.driftInformation.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.StackDriftInformationSummary),
            ) as _i3.StackDriftInformationSummary));
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
    final payload = (object as StackSummary);
    final result = <Object?>[
      const _i4.XmlElementName(
        'StackSummaryResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.stackId != null) {
      result
        ..add(const _i4.XmlElementName('StackId'))
        ..add(serializers.serialize(
          payload.stackId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i4.XmlElementName('StackName'))
      ..add(serializers.serialize(
        payload.stackName,
        specifiedType: const FullType(String),
      ));
    if (payload.templateDescription != null) {
      result
        ..add(const _i4.XmlElementName('TemplateDescription'))
        ..add(serializers.serialize(
          payload.templateDescription!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i4.XmlElementName('CreationTime'))
      ..add(serializers.serialize(
        payload.creationTime,
        specifiedType: const FullType.nullable(DateTime),
      ));
    if (payload.lastUpdatedTime != null) {
      result
        ..add(const _i4.XmlElementName('LastUpdatedTime'))
        ..add(serializers.serialize(
          payload.lastUpdatedTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.deletionTime != null) {
      result
        ..add(const _i4.XmlElementName('DeletionTime'))
        ..add(serializers.serialize(
          payload.deletionTime!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result
      ..add(const _i4.XmlElementName('StackStatus'))
      ..add(serializers.serialize(
        payload.stackStatus,
        specifiedType: const FullType.nullable(_i2.StackStatus),
      ));
    if (payload.stackStatusReason != null) {
      result
        ..add(const _i4.XmlElementName('StackStatusReason'))
        ..add(serializers.serialize(
          payload.stackStatusReason!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.parentId != null) {
      result
        ..add(const _i4.XmlElementName('ParentId'))
        ..add(serializers.serialize(
          payload.parentId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.rootId != null) {
      result
        ..add(const _i4.XmlElementName('RootId'))
        ..add(serializers.serialize(
          payload.rootId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.driftInformation != null) {
      result
        ..add(const _i4.XmlElementName('DriftInformation'))
        ..add(serializers.serialize(
          payload.driftInformation!,
          specifiedType: const FullType(_i3.StackDriftInformationSummary),
        ));
    }
    return result;
  }
}
