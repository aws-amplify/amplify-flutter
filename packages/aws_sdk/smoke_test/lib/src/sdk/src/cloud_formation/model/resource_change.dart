// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.resource_change; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_action.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/module_info.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/replacement.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_attribute.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_change_detail.dart';

part 'resource_change.g.dart';

/// The `ResourceChange` structure describes the resource and the action that CloudFormation will perform on it if you execute this change set.
abstract class ResourceChange
    with _i1.AWSEquatable<ResourceChange>
    implements Built<ResourceChange, ResourceChangeBuilder> {
  /// The `ResourceChange` structure describes the resource and the action that CloudFormation will perform on it if you execute this change set.
  factory ResourceChange({
    ChangeAction? action,
    String? logicalResourceId,
    String? physicalResourceId,
    String? resourceType,
    Replacement? replacement,
    List<ResourceAttribute>? scope,
    List<ResourceChangeDetail>? details,
    String? changeSetId,
    ModuleInfo? moduleInfo,
  }) {
    return _$ResourceChange._(
      action: action,
      logicalResourceId: logicalResourceId,
      physicalResourceId: physicalResourceId,
      resourceType: resourceType,
      replacement: replacement,
      scope: scope == null ? null : _i2.BuiltList(scope),
      details: details == null ? null : _i2.BuiltList(details),
      changeSetId: changeSetId,
      moduleInfo: moduleInfo,
    );
  }

  /// The `ResourceChange` structure describes the resource and the action that CloudFormation will perform on it if you execute this change set.
  factory ResourceChange.build([void Function(ResourceChangeBuilder) updates]) =
      _$ResourceChange;

  const ResourceChange._();

  static const List<_i3.SmithySerializer<ResourceChange>> serializers = [
    ResourceChangeAwsQuerySerializer()
  ];

  /// The action that CloudFormation takes on the resource, such as `Add` (adds a new resource), `Modify` (changes a resource), `Remove` (deletes a resource), `Import` (imports a resource), or `Dynamic` (exact action for the resource can't be determined).
  ChangeAction? get action;

  /// The resource's logical ID, which is defined in the stack's template.
  String? get logicalResourceId;

  /// The resource's physical ID (resource name). Resources that you are adding don't have physical IDs because they haven't been created.
  String? get physicalResourceId;

  /// The type of CloudFormation resource, such as `AWS::S3::Bucket`.
  String? get resourceType;

  /// For the `Modify` action, indicates whether CloudFormation will replace the resource by creating a new one and deleting the old one. This value depends on the value of the `RequiresRecreation` property in the `ResourceTargetDefinition` structure. For example, if the `RequiresRecreation` field is `Always` and the `Evaluation` field is `Static`, `Replacement` is `True`. If the `RequiresRecreation` field is `Always` and the `Evaluation` field is `Dynamic`, `Replacement` is `Conditionally`.
  ///
  /// If you have multiple changes with different `RequiresRecreation` values, the `Replacement` value depends on the change with the most impact. A `RequiresRecreation` value of `Always` has the most impact, followed by `Conditionally`, and then `Never`.
  Replacement? get replacement;

  /// For the `Modify` action, indicates which resource attribute is triggering this update, such as a change in the resource attribute's `Metadata`, `Properties`, or `Tags`.
  _i2.BuiltList<ResourceAttribute>? get scope;

  /// For the `Modify` action, a list of `ResourceChangeDetail` structures that describes the changes that CloudFormation will make to the resource.
  _i2.BuiltList<ResourceChangeDetail>? get details;

  /// The change set ID of the nested change set.
  String? get changeSetId;

  /// Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
  ModuleInfo? get moduleInfo;
  @override
  List<Object?> get props => [
        action,
        logicalResourceId,
        physicalResourceId,
        resourceType,
        replacement,
        scope,
        details,
        changeSetId,
        moduleInfo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ResourceChange')
      ..add(
        'action',
        action,
      )
      ..add(
        'logicalResourceId',
        logicalResourceId,
      )
      ..add(
        'physicalResourceId',
        physicalResourceId,
      )
      ..add(
        'resourceType',
        resourceType,
      )
      ..add(
        'replacement',
        replacement,
      )
      ..add(
        'scope',
        scope,
      )
      ..add(
        'details',
        details,
      )
      ..add(
        'changeSetId',
        changeSetId,
      )
      ..add(
        'moduleInfo',
        moduleInfo,
      );
    return helper.toString();
  }
}

class ResourceChangeAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ResourceChange> {
  const ResourceChangeAwsQuerySerializer() : super('ResourceChange');

  @override
  Iterable<Type> get types => const [
        ResourceChange,
        _$ResourceChange,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ResourceChange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceChangeBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Action':
          result.action = (serializers.deserialize(
            value,
            specifiedType: const FullType(ChangeAction),
          ) as ChangeAction);
        case 'LogicalResourceId':
          result.logicalResourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PhysicalResourceId':
          result.physicalResourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Replacement':
          result.replacement = (serializers.deserialize(
            value,
            specifiedType: const FullType(Replacement),
          ) as Replacement);
        case 'Scope':
          result.scope.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ResourceAttribute)],
            ),
          ) as _i2.BuiltList<ResourceAttribute>));
        case 'Details':
          result.details.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ResourceChangeDetail)],
            ),
          ) as _i2.BuiltList<ResourceChangeDetail>));
        case 'ChangeSetId':
          result.changeSetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ModuleInfo':
          result.moduleInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(ModuleInfo),
          ) as ModuleInfo));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ResourceChange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ResourceChangeResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ResourceChange(
      :action,
      :logicalResourceId,
      :physicalResourceId,
      :resourceType,
      :replacement,
      :scope,
      :details,
      :changeSetId,
      :moduleInfo
    ) = object;
    if (action != null) {
      result$
        ..add(const _i3.XmlElementName('Action'))
        ..add(serializers.serialize(
          action,
          specifiedType: const FullType.nullable(ChangeAction),
        ));
    }
    if (logicalResourceId != null) {
      result$
        ..add(const _i3.XmlElementName('LogicalResourceId'))
        ..add(serializers.serialize(
          logicalResourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (physicalResourceId != null) {
      result$
        ..add(const _i3.XmlElementName('PhysicalResourceId'))
        ..add(serializers.serialize(
          physicalResourceId,
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
    if (replacement != null) {
      result$
        ..add(const _i3.XmlElementName('Replacement'))
        ..add(serializers.serialize(
          replacement,
          specifiedType: const FullType.nullable(Replacement),
        ));
    }
    if (scope != null) {
      result$
        ..add(const _i3.XmlElementName('Scope'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          scope,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ResourceAttribute)],
          ),
        ));
    }
    if (details != null) {
      result$
        ..add(const _i3.XmlElementName('Details'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          details,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ResourceChangeDetail)],
          ),
        ));
    }
    if (changeSetId != null) {
      result$
        ..add(const _i3.XmlElementName('ChangeSetId'))
        ..add(serializers.serialize(
          changeSetId,
          specifiedType: const FullType(String),
        ));
    }
    if (moduleInfo != null) {
      result$
        ..add(const _i3.XmlElementName('ModuleInfo'))
        ..add(serializers.serialize(
          moduleInfo,
          specifiedType: const FullType(ModuleInfo),
        ));
    }
    return result$;
  }
}
