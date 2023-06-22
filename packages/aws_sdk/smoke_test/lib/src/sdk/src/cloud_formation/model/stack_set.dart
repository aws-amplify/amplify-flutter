// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stack_set; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i11;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/auto_deployment.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/managed_execution.dart'
    as _i9;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/permission_models.dart'
    as _i8;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_drift_detection_details.dart'
    as _i6;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_status.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/tag.dart' as _i5;

part 'stack_set.g.dart';

/// A structure that contains information about a stack set. A stack set enables you to provision stacks into Amazon Web Services accounts and across Regions by using a single CloudFormation template. In the stack set, you specify the template to use, in addition to any parameters and capabilities that the template requires.
abstract class StackSet
    with _i1.AWSEquatable<StackSet>
    implements Built<StackSet, StackSetBuilder> {
  /// A structure that contains information about a stack set. A stack set enables you to provision stacks into Amazon Web Services accounts and across Regions by using a single CloudFormation template. In the stack set, you specify the template to use, in addition to any parameters and capabilities that the template requires.
  factory StackSet({
    String? stackSetName,
    String? stackSetId,
    String? description,
    _i2.StackSetStatus? status,
    String? templateBody,
    List<_i3.Parameter>? parameters,
    List<_i4.Capability>? capabilities,
    List<_i5.Tag>? tags,
    String? stackSetArn,
    String? administrationRoleArn,
    String? executionRoleName,
    _i6.StackSetDriftDetectionDetails? stackSetDriftDetectionDetails,
    _i7.AutoDeployment? autoDeployment,
    _i8.PermissionModels? permissionModel,
    List<String>? organizationalUnitIds,
    _i9.ManagedExecution? managedExecution,
    List<String>? regions,
  }) {
    return _$StackSet._(
      stackSetName: stackSetName,
      stackSetId: stackSetId,
      description: description,
      status: status,
      templateBody: templateBody,
      parameters: parameters == null ? null : _i10.BuiltList(parameters),
      capabilities: capabilities == null ? null : _i10.BuiltList(capabilities),
      tags: tags == null ? null : _i10.BuiltList(tags),
      stackSetArn: stackSetArn,
      administrationRoleArn: administrationRoleArn,
      executionRoleName: executionRoleName,
      stackSetDriftDetectionDetails: stackSetDriftDetectionDetails,
      autoDeployment: autoDeployment,
      permissionModel: permissionModel,
      organizationalUnitIds: organizationalUnitIds == null
          ? null
          : _i10.BuiltList(organizationalUnitIds),
      managedExecution: managedExecution,
      regions: regions == null ? null : _i10.BuiltList(regions),
    );
  }

  /// A structure that contains information about a stack set. A stack set enables you to provision stacks into Amazon Web Services accounts and across Regions by using a single CloudFormation template. In the stack set, you specify the template to use, in addition to any parameters and capabilities that the template requires.
  factory StackSet.build([void Function(StackSetBuilder) updates]) = _$StackSet;

  const StackSet._();

  static const List<_i11.SmithySerializer<StackSet>> serializers = [
    StackSetAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackSetBuilder b) {}

  /// The name that's associated with the stack set.
  String? get stackSetName;

  /// The ID of the stack set.
  String? get stackSetId;

  /// A description of the stack set that you specify when the stack set is created or updated.
  String? get description;

  /// The status of the stack set.
  _i2.StackSetStatus? get status;

  /// The structure that contains the body of the template that was used to create or update the stack set.
  String? get templateBody;

  /// A list of input parameters for a stack set.
  _i10.BuiltList<_i3.Parameter>? get parameters;

  /// The capabilities that are allowed in the stack set. Some stack set templates might include resources that can affect permissions in your Amazon Web Services account—for example, by creating new Identity and Access Management (IAM) users. For more information, see [Acknowledging IAM Resources in CloudFormation Templates.](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities)
  _i10.BuiltList<_i4.Capability>? get capabilities;

  /// A list of tags that specify information about the stack set. A maximum number of 50 tags can be specified.
  _i10.BuiltList<_i5.Tag>? get tags;

  /// The Amazon Resource Name (ARN) of the stack set.
  String? get stackSetArn;

  /// The Amazon Resource Name (ARN) of the IAM role used to create or update the stack set.
  ///
  /// Use customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see [Prerequisites: Granting Permissions for Stack Set Operations](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html) in the _CloudFormation User Guide_.
  String? get administrationRoleArn;

  /// The name of the IAM execution role used to create or update the stack set.
  ///
  /// Use customized execution roles to control which stack resources users and groups can include in their stack sets.
  String? get executionRoleName;

  /// Detailed information about the drift status of the stack set.
  ///
  /// For stack sets, contains information about the last _completed_ drift operation performed on the stack set. Information about drift operations currently in progress isn't included.
  _i6.StackSetDriftDetectionDetails? get stackSetDriftDetectionDetails;

  /// \[Service-managed permissions\] Describes whether StackSets automatically deploys to Organizations accounts that are added to a target organization or organizational unit (OU).
  _i7.AutoDeployment? get autoDeployment;

  /// Describes how the IAM roles required for stack set operations are created.
  ///
  /// *   With `self-managed` permissions, you must create the administrator and execution roles required to deploy to target accounts. For more information, see [Grant Self-Managed Stack Set Permissions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html).
  ///
  /// *   With `service-managed` permissions, StackSets automatically creates the IAM roles required to deploy to accounts managed by Organizations. For more information, see [Grant Service-Managed Stack Set Permissions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html).
  _i8.PermissionModels? get permissionModel;

  /// \[Service-managed permissions\] The organization root ID or organizational unit (OU) IDs that you specified for [DeploymentTargets](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html).
  _i10.BuiltList<String>? get organizationalUnitIds;

  /// Describes whether StackSets performs non-conflicting operations concurrently and queues conflicting operations.
  _i9.ManagedExecution? get managedExecution;

  /// Returns a list of all Amazon Web Services Regions the given StackSet has stack instances deployed in. The Amazon Web Services Regions list output is in no particular order.
  _i10.BuiltList<String>? get regions;
  @override
  List<Object?> get props => [
        stackSetName,
        stackSetId,
        description,
        status,
        templateBody,
        parameters,
        capabilities,
        tags,
        stackSetArn,
        administrationRoleArn,
        executionRoleName,
        stackSetDriftDetectionDetails,
        autoDeployment,
        permissionModel,
        organizationalUnitIds,
        managedExecution,
        regions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackSet')
      ..add(
        'stackSetName',
        stackSetName,
      )
      ..add(
        'stackSetId',
        stackSetId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'status',
        status,
      )
      ..add(
        'templateBody',
        templateBody,
      )
      ..add(
        'parameters',
        parameters,
      )
      ..add(
        'capabilities',
        capabilities,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'stackSetArn',
        stackSetArn,
      )
      ..add(
        'administrationRoleArn',
        administrationRoleArn,
      )
      ..add(
        'executionRoleName',
        executionRoleName,
      )
      ..add(
        'stackSetDriftDetectionDetails',
        stackSetDriftDetectionDetails,
      )
      ..add(
        'autoDeployment',
        autoDeployment,
      )
      ..add(
        'permissionModel',
        permissionModel,
      )
      ..add(
        'organizationalUnitIds',
        organizationalUnitIds,
      )
      ..add(
        'managedExecution',
        managedExecution,
      )
      ..add(
        'regions',
        regions,
      );
    return helper.toString();
  }
}

class StackSetAwsQuerySerializer
    extends _i11.StructuredSmithySerializer<StackSet> {
  const StackSetAwsQuerySerializer() : super('StackSet');

  @override
  Iterable<Type> get types => const [
        StackSet,
        _$StackSet,
      ];
  @override
  Iterable<_i11.ShapeId> get supportedProtocols => const [
        _i11.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackSet deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackSetBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackSetName':
          result.stackSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackSetId':
          result.stackSetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StackSetStatus),
          ) as _i2.StackSetStatus);
        case 'TemplateBody':
          result.templateBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Parameters':
          result.parameters.replace((const _i11.XmlBuiltListSerializer(
                  indexer: _i11.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i3.Parameter)],
            ),
          ) as _i10.BuiltList<_i3.Parameter>));
        case 'Capabilities':
          result.capabilities.replace((const _i11.XmlBuiltListSerializer(
                  indexer: _i11.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i4.Capability)],
            ),
          ) as _i10.BuiltList<_i4.Capability>));
        case 'Tags':
          result.tags.replace((const _i11.XmlBuiltListSerializer(
                  indexer: _i11.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(_i5.Tag)],
            ),
          ) as _i10.BuiltList<_i5.Tag>));
        case 'StackSetARN':
          result.stackSetArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AdministrationRoleARN':
          result.administrationRoleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExecutionRoleName':
          result.executionRoleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackSetDriftDetectionDetails':
          result.stackSetDriftDetectionDetails.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.StackSetDriftDetectionDetails),
          ) as _i6.StackSetDriftDetectionDetails));
        case 'AutoDeployment':
          result.autoDeployment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.AutoDeployment),
          ) as _i7.AutoDeployment));
        case 'PermissionModel':
          result.permissionModel = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i8.PermissionModels),
          ) as _i8.PermissionModels);
        case 'OrganizationalUnitIds':
          result.organizationalUnitIds.replace(
              (const _i11.XmlBuiltListSerializer(
                      indexer: _i11.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(String)],
            ),
          ) as _i10.BuiltList<String>));
        case 'ManagedExecution':
          result.managedExecution.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i9.ManagedExecution),
          ) as _i9.ManagedExecution));
        case 'Regions':
          result.regions.replace((const _i11.XmlBuiltListSerializer(
                  indexer: _i11.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i10.BuiltList,
              [FullType(String)],
            ),
          ) as _i10.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StackSet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i11.XmlElementName(
        'StackSetResponse',
        _i11.XmlNamespace(
            'http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StackSet(
      :stackSetName,
      :stackSetId,
      :description,
      :status,
      :templateBody,
      :parameters,
      :capabilities,
      :tags,
      :stackSetArn,
      :administrationRoleArn,
      :executionRoleName,
      :stackSetDriftDetectionDetails,
      :autoDeployment,
      :permissionModel,
      :organizationalUnitIds,
      :managedExecution,
      :regions
    ) = object;
    if (stackSetName != null) {
      result$
        ..add(const _i11.XmlElementName('StackSetName'))
        ..add(serializers.serialize(
          stackSetName,
          specifiedType: const FullType(String),
        ));
    }
    if (stackSetId != null) {
      result$
        ..add(const _i11.XmlElementName('StackSetId'))
        ..add(serializers.serialize(
          stackSetId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i11.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (status != null) {
      result$
        ..add(const _i11.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType.nullable(_i2.StackSetStatus),
        ));
    }
    if (templateBody != null) {
      result$
        ..add(const _i11.XmlElementName('TemplateBody'))
        ..add(serializers.serialize(
          templateBody,
          specifiedType: const FullType(String),
        ));
    }
    if (parameters != null) {
      result$
        ..add(const _i11.XmlElementName('Parameters'))
        ..add(const _i11.XmlBuiltListSerializer(
                indexer: _i11.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          parameters,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i3.Parameter)],
          ),
        ));
    }
    if (capabilities != null) {
      result$
        ..add(const _i11.XmlElementName('Capabilities'))
        ..add(const _i11.XmlBuiltListSerializer(
                indexer: _i11.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          capabilities,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i4.Capability)],
          ),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i11.XmlElementName('Tags'))
        ..add(const _i11.XmlBuiltListSerializer(
                indexer: _i11.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(_i5.Tag)],
          ),
        ));
    }
    if (stackSetArn != null) {
      result$
        ..add(const _i11.XmlElementName('StackSetARN'))
        ..add(serializers.serialize(
          stackSetArn,
          specifiedType: const FullType(String),
        ));
    }
    if (administrationRoleArn != null) {
      result$
        ..add(const _i11.XmlElementName('AdministrationRoleARN'))
        ..add(serializers.serialize(
          administrationRoleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (executionRoleName != null) {
      result$
        ..add(const _i11.XmlElementName('ExecutionRoleName'))
        ..add(serializers.serialize(
          executionRoleName,
          specifiedType: const FullType(String),
        ));
    }
    if (stackSetDriftDetectionDetails != null) {
      result$
        ..add(const _i11.XmlElementName('StackSetDriftDetectionDetails'))
        ..add(serializers.serialize(
          stackSetDriftDetectionDetails,
          specifiedType: const FullType(_i6.StackSetDriftDetectionDetails),
        ));
    }
    if (autoDeployment != null) {
      result$
        ..add(const _i11.XmlElementName('AutoDeployment'))
        ..add(serializers.serialize(
          autoDeployment,
          specifiedType: const FullType(_i7.AutoDeployment),
        ));
    }
    if (permissionModel != null) {
      result$
        ..add(const _i11.XmlElementName('PermissionModel'))
        ..add(serializers.serialize(
          permissionModel,
          specifiedType: const FullType.nullable(_i8.PermissionModels),
        ));
    }
    if (organizationalUnitIds != null) {
      result$
        ..add(const _i11.XmlElementName('OrganizationalUnitIds'))
        ..add(const _i11.XmlBuiltListSerializer(
                indexer: _i11.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          organizationalUnitIds,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (managedExecution != null) {
      result$
        ..add(const _i11.XmlElementName('ManagedExecution'))
        ..add(serializers.serialize(
          managedExecution,
          specifiedType: const FullType(_i9.ManagedExecution),
        ));
    }
    if (regions != null) {
      result$
        ..add(const _i11.XmlElementName('Regions'))
        ..add(const _i11.XmlBuiltListSerializer(
                indexer: _i11.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          regions,
          specifiedType: const FullType.nullable(
            _i10.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
