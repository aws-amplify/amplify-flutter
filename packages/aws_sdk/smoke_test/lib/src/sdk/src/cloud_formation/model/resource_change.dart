// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.resource_change; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/change_action.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/module_info.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/replacement.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_attribute.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_change_detail.dart'
    as _i5;

part 'resource_change.g.dart';

/// The `ResourceChange` structure describes the resource and the action that CloudFormation will perform on it if you execute this change set.
abstract class ResourceChange
    with _i1.AWSEquatable<ResourceChange>
    implements Built<ResourceChange, ResourceChangeBuilder> {
  /// The `ResourceChange` structure describes the resource and the action that CloudFormation will perform on it if you execute this change set.
  factory ResourceChange({
    _i2.ChangeAction? action,
    String? logicalResourceId,
    String? physicalResourceId,
    String? resourceType,
    _i3.Replacement? replacement,
    List<_i4.ResourceAttribute>? scope,
    List<_i5.ResourceChangeDetail>? details,
    String? changeSetId,
    _i6.ModuleInfo? moduleInfo,
  }) {
    return _$ResourceChange._(
      action: action,
      logicalResourceId: logicalResourceId,
      physicalResourceId: physicalResourceId,
      resourceType: resourceType,
      replacement: replacement,
      scope: scope == null ? null : _i7.BuiltList(scope),
      details: details == null ? null : _i7.BuiltList(details),
      changeSetId: changeSetId,
      moduleInfo: moduleInfo,
    );
  }

  /// The `ResourceChange` structure describes the resource and the action that CloudFormation will perform on it if you execute this change set.
  factory ResourceChange.build([void Function(ResourceChangeBuilder) updates]) =
      _$ResourceChange;

  const ResourceChange._();

  static const List<_i8.SmithySerializer<ResourceChange>> serializers = [
    ResourceChangeAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ResourceChangeBuilder b) {}

  /// The action that CloudFormation takes on the resource, such as `Add` (adds a new resource), `Modify` (changes a resource), `Remove` (deletes a resource), `Import` (imports a resource), or `Dynamic` (exact action for the resource can't be determined).
  _i2.ChangeAction? get action;

  /// The resource's logical ID, which is defined in the stack's template.
  String? get logicalResourceId;

  /// The resource's physical ID (resource name). Resources that you are adding don't have physical IDs because they haven't been created.
  String? get physicalResourceId;

  /// The type of CloudFormation resource, such as `AWS::S3::Bucket`.
  String? get resourceType;

  /// For the `Modify` action, indicates whether CloudFormation will replace the resource by creating a new one and deleting the old one. This value depends on the value of the `RequiresRecreation` property in the `ResourceTargetDefinition` structure. For example, if the `RequiresRecreation` field is `Always` and the `Evaluation` field is `Static`, `Replacement` is `True`. If the `RequiresRecreation` field is `Always` and the `Evaluation` field is `Dynamic`, `Replacement` is `Conditionally`.
  ///
  /// If you have multiple changes with different `RequiresRecreation` values, the `Replacement` value depends on the change with the most impact. A `RequiresRecreation` value of `Always` has the most impact, followed by `Conditionally`, and then `Never`.
  _i3.Replacement? get replacement;

  /// For the `Modify` action, indicates which resource attribute is triggering this update, such as a change in the resource attribute's `Metadata`, `Properties`, or `Tags`.
  _i7.BuiltList<_i4.ResourceAttribute>? get scope;

  /// For the `Modify` action, a list of `ResourceChangeDetail` structures that describes the changes that CloudFormation will make to the resource.
  _i7.BuiltList<_i5.ResourceChangeDetail>? get details;

  /// The change set ID of the nested change set.
  String? get changeSetId;

  /// Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
  _i6.ModuleInfo? get moduleInfo;
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
    extends _i8.StructuredSmithySerializer<ResourceChange> {
  const ResourceChangeAwsQuerySerializer() : super('ResourceChange');

  @override
  Iterable<Type> get types => const [
        ResourceChange,
        _$ResourceChange,
      ];
  @override
  Iterable<_i8.ShapeId> get supportedProtocols => const [
        _i8.ShapeId(
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
            specifiedType: const FullType(_i2.ChangeAction),
          ) as _i2.ChangeAction);
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
            specifiedType: const FullType(_i3.Replacement),
          ) as _i3.Replacement);
        case 'Scope':
          result.scope.replace((const _i8.XmlBuiltListSerializer(
                  indexer: _i8.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i4.ResourceAttribute)],
            ),
          ) as _i7.BuiltList<_i4.ResourceAttribute>));
        case 'Details':
          result.details.replace((const _i8.XmlBuiltListSerializer(
                  indexer: _i8.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i7.BuiltList,
              [FullType(_i5.ResourceChangeDetail)],
            ),
          ) as _i7.BuiltList<_i5.ResourceChangeDetail>));
        case 'ChangeSetId':
          result.changeSetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ModuleInfo':
          result.moduleInfo.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.ModuleInfo),
          ) as _i6.ModuleInfo));
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
      const _i8.XmlElementName(
        'ResourceChangeResponse',
        _i8.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
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
        ..add(const _i8.XmlElementName('Action'))
        ..add(serializers.serialize(
          action,
          specifiedType: const FullType.nullable(_i2.ChangeAction),
        ));
    }
    if (logicalResourceId != null) {
      result$
        ..add(const _i8.XmlElementName('LogicalResourceId'))
        ..add(serializers.serialize(
          logicalResourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (physicalResourceId != null) {
      result$
        ..add(const _i8.XmlElementName('PhysicalResourceId'))
        ..add(serializers.serialize(
          physicalResourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceType != null) {
      result$
        ..add(const _i8.XmlElementName('ResourceType'))
        ..add(serializers.serialize(
          resourceType,
          specifiedType: const FullType(String),
        ));
    }
    if (replacement != null) {
      result$
        ..add(const _i8.XmlElementName('Replacement'))
        ..add(serializers.serialize(
          replacement,
          specifiedType: const FullType.nullable(_i3.Replacement),
        ));
    }
    if (scope != null) {
      result$
        ..add(const _i8.XmlElementName('Scope'))
        ..add(const _i8.XmlBuiltListSerializer(
                indexer: _i8.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          scope,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i4.ResourceAttribute)],
          ),
        ));
    }
    if (details != null) {
      result$
        ..add(const _i8.XmlElementName('Details'))
        ..add(const _i8.XmlBuiltListSerializer(
                indexer: _i8.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          details,
          specifiedType: const FullType.nullable(
            _i7.BuiltList,
            [FullType(_i5.ResourceChangeDetail)],
          ),
        ));
    }
    if (changeSetId != null) {
      result$
        ..add(const _i8.XmlElementName('ChangeSetId'))
        ..add(serializers.serialize(
          changeSetId,
          specifiedType: const FullType(String),
        ));
    }
    if (moduleInfo != null) {
      result$
        ..add(const _i8.XmlElementName('ModuleInfo'))
        ..add(serializers.serialize(
          moduleInfo,
          specifiedType: const FullType(_i6.ModuleInfo),
        ));
    }
    return result$;
  }
}
