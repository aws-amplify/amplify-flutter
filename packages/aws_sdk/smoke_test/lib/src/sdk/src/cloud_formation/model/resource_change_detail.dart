// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.resource_change_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_source.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/evaluation_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_target_definition.dart'
    as _i2;

part 'resource_change_detail.g.dart';

/// For a resource with `Modify` as the action, the `ResourceChange` structure describes the changes CloudFormation will make to that resource.
abstract class ResourceChangeDetail
    with _i1.AWSEquatable<ResourceChangeDetail>
    implements Built<ResourceChangeDetail, ResourceChangeDetailBuilder> {
  /// For a resource with `Modify` as the action, the `ResourceChange` structure describes the changes CloudFormation will make to that resource.
  factory ResourceChangeDetail({
    _i2.ResourceTargetDefinition? target,
    _i3.EvaluationType? evaluation,
    _i4.ChangeSource? changeSource,
    String? causingEntity,
  }) {
    return _$ResourceChangeDetail._(
      target: target,
      evaluation: evaluation,
      changeSource: changeSource,
      causingEntity: causingEntity,
    );
  }

  /// For a resource with `Modify` as the action, the `ResourceChange` structure describes the changes CloudFormation will make to that resource.
  factory ResourceChangeDetail.build(
          [void Function(ResourceChangeDetailBuilder) updates]) =
      _$ResourceChangeDetail;

  const ResourceChangeDetail._();

  static const List<_i5.SmithySerializer> serializers = [
    ResourceChangeDetailAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceChangeDetailBuilder b) {}

  /// A `ResourceTargetDefinition` structure that describes the field that CloudFormation will change and whether the resource will be recreated.
  _i2.ResourceTargetDefinition? get target;

  /// Indicates whether CloudFormation can determine the target value, and whether the target value will change before you execute a change set.
  ///
  /// For `Static` evaluations, CloudFormation can determine that the target value will change, and its value. For example, if you directly modify the `InstanceType` property of an EC2 instance, CloudFormation knows that this property value will change, and its value, so this is a `Static` evaluation.
  ///
  /// For `Dynamic` evaluations, can't determine the target value because it depends on the result of an intrinsic function, such as a `Ref` or `Fn::GetAtt` intrinsic function, when the stack is updated. For example, if your template includes a reference to a resource that's conditionally recreated, the value of the reference (the physical ID of the resource) might change, depending on if the resource is recreated. If the resource is recreated, it will have a new physical ID, so all references to that resource will also be updated.
  _i3.EvaluationType? get evaluation;

  /// The group to which the `CausingEntity` value belongs. There are five entity groups:
  ///
  /// *   `ResourceReference` entities are `Ref` intrinsic functions that refer to resources in the template, such as `{ "Ref" : "MyEC2InstanceResource" }`.
  ///
  /// *   `ParameterReference` entities are `Ref` intrinsic functions that get template parameter values, such as `{ "Ref" : "MyPasswordParameter" }`.
  ///
  /// *   `ResourceAttribute` entities are `Fn::GetAtt` intrinsic functions that get resource attribute values, such as `{ "Fn::GetAtt" : \[ "MyEC2InstanceResource", "PublicDnsName" \] }`.
  ///
  /// *   `DirectModification` entities are changes that are made directly to the template.
  ///
  /// *   `Automatic` entities are `AWS::CloudFormation::Stack` resource types, which are also known as nested stacks. If you made no changes to the `AWS::CloudFormation::Stack` resource, CloudFormation sets the `ChangeSource` to `Automatic` because the nested stack's template might have changed. Changes to a nested stack's template aren't visible to CloudFormation until you run an update on the parent stack.
  _i4.ChangeSource? get changeSource;

  /// The identity of the entity that triggered this change. This entity is a member of the group that's specified by the `ChangeSource` field. For example, if you modified the value of the `KeyPairName` parameter, the `CausingEntity` is the name of the parameter (`KeyPairName`).
  ///
  /// If the `ChangeSource` value is `DirectModification`, no value is given for `CausingEntity`.
  String? get causingEntity;
  @override
  List<Object?> get props => [
        target,
        evaluation,
        changeSource,
        causingEntity,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceChangeDetail');
    helper.add(
      'target',
      target,
    );
    helper.add(
      'evaluation',
      evaluation,
    );
    helper.add(
      'changeSource',
      changeSource,
    );
    helper.add(
      'causingEntity',
      causingEntity,
    );
    return helper.toString();
  }
}

class ResourceChangeDetailAwsQuerySerializer
    extends _i5.StructuredSmithySerializer<ResourceChangeDetail> {
  const ResourceChangeDetailAwsQuerySerializer()
      : super('ResourceChangeDetail');

  @override
  Iterable<Type> get types => const [
        ResourceChangeDetail,
        _$ResourceChangeDetail,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ResourceChangeDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceChangeDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Target':
          if (value != null) {
            result.target.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ResourceTargetDefinition),
            ) as _i2.ResourceTargetDefinition));
          }
          break;
        case 'Evaluation':
          if (value != null) {
            result.evaluation = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.EvaluationType),
            ) as _i3.EvaluationType);
          }
          break;
        case 'ChangeSource':
          if (value != null) {
            result.changeSource = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.ChangeSource),
            ) as _i4.ChangeSource);
          }
          break;
        case 'CausingEntity':
          if (value != null) {
            result.causingEntity = (serializers.deserialize(
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
    final payload = (object as ResourceChangeDetail);
    final result = <Object?>[
      const _i5.XmlElementName(
        'ResourceChangeDetailResponse',
        _i5.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.target != null) {
      result
        ..add(const _i5.XmlElementName('Target'))
        ..add(serializers.serialize(
          payload.target!,
          specifiedType: const FullType(_i2.ResourceTargetDefinition),
        ));
    }
    if (payload.evaluation != null) {
      result
        ..add(const _i5.XmlElementName('Evaluation'))
        ..add(serializers.serialize(
          payload.evaluation!,
          specifiedType: const FullType.nullable(_i3.EvaluationType),
        ));
    }
    if (payload.changeSource != null) {
      result
        ..add(const _i5.XmlElementName('ChangeSource'))
        ..add(serializers.serialize(
          payload.changeSource!,
          specifiedType: const FullType.nullable(_i4.ChangeSource),
        ));
    }
    if (payload.causingEntity != null) {
      result
        ..add(const _i5.XmlElementName('CausingEntity'))
        ..add(serializers.serialize(
          payload.causingEntity!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
