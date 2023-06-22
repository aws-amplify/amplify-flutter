// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.change_set_hook_resource_target_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_action.dart'
    as _i2;

part 'change_set_hook_resource_target_details.g.dart';

/// Specifies `RESOURCE` type target details for activated hooks.
abstract class ChangeSetHookResourceTargetDetails
    with
        _i1.AWSEquatable<ChangeSetHookResourceTargetDetails>
    implements
        Built<ChangeSetHookResourceTargetDetails,
            ChangeSetHookResourceTargetDetailsBuilder> {
  /// Specifies `RESOURCE` type target details for activated hooks.
  factory ChangeSetHookResourceTargetDetails({
    String? logicalResourceId,
    String? resourceType,
    _i2.ChangeAction? resourceAction,
  }) {
    return _$ChangeSetHookResourceTargetDetails._(
      logicalResourceId: logicalResourceId,
      resourceType: resourceType,
      resourceAction: resourceAction,
    );
  }

  /// Specifies `RESOURCE` type target details for activated hooks.
  factory ChangeSetHookResourceTargetDetails.build(
          [void Function(ChangeSetHookResourceTargetDetailsBuilder) updates]) =
      _$ChangeSetHookResourceTargetDetails;

  const ChangeSetHookResourceTargetDetails._();

  static const List<_i3.SmithySerializer<ChangeSetHookResourceTargetDetails>>
      serializers = [ChangeSetHookResourceTargetDetailsAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ChangeSetHookResourceTargetDetailsBuilder b) {}

  /// The resource's logical ID, which is defined in the stack's template.
  String? get logicalResourceId;

  /// The type of CloudFormation resource, such as `AWS::S3::Bucket`.
  String? get resourceType;

  /// Specifies the action of the resource.
  _i2.ChangeAction? get resourceAction;
  @override
  List<Object?> get props => [
        logicalResourceId,
        resourceType,
        resourceAction,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ChangeSetHookResourceTargetDetails')
          ..add(
            'logicalResourceId',
            logicalResourceId,
          )
          ..add(
            'resourceType',
            resourceType,
          )
          ..add(
            'resourceAction',
            resourceAction,
          );
    return helper.toString();
  }
}

class ChangeSetHookResourceTargetDetailsAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ChangeSetHookResourceTargetDetails> {
  const ChangeSetHookResourceTargetDetailsAwsQuerySerializer()
      : super('ChangeSetHookResourceTargetDetails');

  @override
  Iterable<Type> get types => const [
        ChangeSetHookResourceTargetDetails,
        _$ChangeSetHookResourceTargetDetails,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ChangeSetHookResourceTargetDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangeSetHookResourceTargetDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LogicalResourceId':
          result.logicalResourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceAction':
          result.resourceAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ChangeAction),
          ) as _i2.ChangeAction);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ChangeSetHookResourceTargetDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ChangeSetHookResourceTargetDetailsResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ChangeSetHookResourceTargetDetails(
      :logicalResourceId,
      :resourceType,
      :resourceAction
    ) = object;
    if (logicalResourceId != null) {
      result$
        ..add(const _i3.XmlElementName('LogicalResourceId'))
        ..add(serializers.serialize(
          logicalResourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceAction != null) {
      result$
        ..add(const _i3.XmlElementName('ResourceAction'))
        ..add(serializers.serialize(
          resourceAction,
          specifiedType: const FullType.nullable(_i2.ChangeAction),
        ));
    }
    return result$;
  }
}
