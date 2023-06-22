// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.role_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/iam/model/attached_permissions_boundary.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/attached_policy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/instance_profile.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/policy_detail.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/role_last_used.dart' as _i7;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i6;

part 'role_detail.g.dart';

/// Contains information about an IAM role, including all of the role's policies.
///
/// This data type is used as a response element in the GetAccountAuthorizationDetails operation.
abstract class RoleDetail
    with _i1.AWSEquatable<RoleDetail>
    implements Built<RoleDetail, RoleDetailBuilder> {
  /// Contains information about an IAM role, including all of the role's policies.
  ///
  /// This data type is used as a response element in the GetAccountAuthorizationDetails operation.
  factory RoleDetail({
    String? path,
    String? roleName,
    String? roleId,
    String? arn,
    DateTime? createDate,
    String? assumeRolePolicyDocument,
    List<_i2.InstanceProfile>? instanceProfileList,
    List<_i3.PolicyDetail>? rolePolicyList,
    List<_i4.AttachedPolicy>? attachedManagedPolicies,
    _i5.AttachedPermissionsBoundary? permissionsBoundary,
    List<_i6.Tag>? tags,
    _i7.RoleLastUsed? roleLastUsed,
  }) {
    return _$RoleDetail._(
      path: path,
      roleName: roleName,
      roleId: roleId,
      arn: arn,
      createDate: createDate,
      assumeRolePolicyDocument: assumeRolePolicyDocument,
      instanceProfileList: instanceProfileList == null
          ? null
          : _i8.BuiltList(instanceProfileList),
      rolePolicyList:
          rolePolicyList == null ? null : _i8.BuiltList(rolePolicyList),
      attachedManagedPolicies: attachedManagedPolicies == null
          ? null
          : _i8.BuiltList(attachedManagedPolicies),
      permissionsBoundary: permissionsBoundary,
      tags: tags == null ? null : _i8.BuiltList(tags),
      roleLastUsed: roleLastUsed,
    );
  }

  /// Contains information about an IAM role, including all of the role's policies.
  ///
  /// This data type is used as a response element in the GetAccountAuthorizationDetails operation.
  factory RoleDetail.build([void Function(RoleDetailBuilder) updates]) =
      _$RoleDetail;

  const RoleDetail._();

  static const List<_i9.SmithySerializer<RoleDetail>> serializers = [
    RoleDetailAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RoleDetailBuilder b) {}

  /// The path to the role. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String? get path;

  /// The friendly name that identifies the role.
  String? get roleName;

  /// The stable and unique string identifying the role. For more information about IDs, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String? get roleId;

  /// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.
  ///
  /// For more information about ARNs, go to [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String? get arn;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the role was created.
  DateTime? get createDate;

  /// The trust policy that grants permission to assume the role.
  String? get assumeRolePolicyDocument;

  /// A list of instance profiles that contain this role.
  _i8.BuiltList<_i2.InstanceProfile>? get instanceProfileList;

  /// A list of inline policies embedded in the role. These policies are the role's access (permissions) policies.
  _i8.BuiltList<_i3.PolicyDetail>? get rolePolicyList;

  /// A list of managed policies attached to the role. These policies are the role's access (permissions) policies.
  _i8.BuiltList<_i4.AttachedPolicy>? get attachedManagedPolicies;

  /// The ARN of the policy used to set the permissions boundary for the role.
  ///
  /// For more information about permissions boundaries, see [Permissions boundaries for IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_.
  _i5.AttachedPermissionsBoundary? get permissionsBoundary;

  /// A list of tags that are attached to the role. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i8.BuiltList<_i6.Tag>? get tags;

  /// Contains information about the last time that an IAM role was used. This includes the date and time and the Region in which the role was last used. Activity is only reported for the trailing 400 days. This period can be shorter if your Region began supporting these features within the last year. The role might have been used more than 400 days ago. For more information, see [Regions where data is tracked](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period) in the _IAM User Guide_.
  _i7.RoleLastUsed? get roleLastUsed;
  @override
  List<Object?> get props => [
        path,
        roleName,
        roleId,
        arn,
        createDate,
        assumeRolePolicyDocument,
        instanceProfileList,
        rolePolicyList,
        attachedManagedPolicies,
        permissionsBoundary,
        tags,
        roleLastUsed,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RoleDetail')
      ..add(
        'path',
        path,
      )
      ..add(
        'roleName',
        roleName,
      )
      ..add(
        'roleId',
        roleId,
      )
      ..add(
        'arn',
        arn,
      )
      ..add(
        'createDate',
        createDate,
      )
      ..add(
        'assumeRolePolicyDocument',
        assumeRolePolicyDocument,
      )
      ..add(
        'instanceProfileList',
        instanceProfileList,
      )
      ..add(
        'rolePolicyList',
        rolePolicyList,
      )
      ..add(
        'attachedManagedPolicies',
        attachedManagedPolicies,
      )
      ..add(
        'permissionsBoundary',
        permissionsBoundary,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'roleLastUsed',
        roleLastUsed,
      );
    return helper.toString();
  }
}

class RoleDetailAwsQuerySerializer
    extends _i9.StructuredSmithySerializer<RoleDetail> {
  const RoleDetailAwsQuerySerializer() : super('RoleDetail');

  @override
  Iterable<Type> get types => const [
        RoleDetail,
        _$RoleDetail,
      ];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RoleDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RoleDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Path':
          result.path = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RoleName':
          result.roleName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RoleId':
          result.roleId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Arn':
          result.arn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CreateDate':
          result.createDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'AssumeRolePolicyDocument':
          result.assumeRolePolicyDocument = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InstanceProfileList':
          result.instanceProfileList.replace((const _i9.XmlBuiltListSerializer(
                  indexer: _i9.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i2.InstanceProfile)],
            ),
          ) as _i8.BuiltList<_i2.InstanceProfile>));
        case 'RolePolicyList':
          result.rolePolicyList.replace((const _i9.XmlBuiltListSerializer(
                  indexer: _i9.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i3.PolicyDetail)],
            ),
          ) as _i8.BuiltList<_i3.PolicyDetail>));
        case 'AttachedManagedPolicies':
          result.attachedManagedPolicies.replace(
              (const _i9.XmlBuiltListSerializer(
                      indexer: _i9.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i4.AttachedPolicy)],
            ),
          ) as _i8.BuiltList<_i4.AttachedPolicy>));
        case 'PermissionsBoundary':
          result.permissionsBoundary.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.AttachedPermissionsBoundary),
          ) as _i5.AttachedPermissionsBoundary));
        case 'Tags':
          result.tags.replace((const _i9.XmlBuiltListSerializer(
                  indexer: _i9.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i6.Tag)],
            ),
          ) as _i8.BuiltList<_i6.Tag>));
        case 'RoleLastUsed':
          result.roleLastUsed.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.RoleLastUsed),
          ) as _i7.RoleLastUsed));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RoleDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i9.XmlElementName(
        'RoleDetailResponse',
        _i9.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final RoleDetail(
      :path,
      :roleName,
      :roleId,
      :arn,
      :createDate,
      :assumeRolePolicyDocument,
      :instanceProfileList,
      :rolePolicyList,
      :attachedManagedPolicies,
      :permissionsBoundary,
      :tags,
      :roleLastUsed
    ) = object;
    if (path != null) {
      result$
        ..add(const _i9.XmlElementName('Path'))
        ..add(serializers.serialize(
          path,
          specifiedType: const FullType(String),
        ));
    }
    if (roleName != null) {
      result$
        ..add(const _i9.XmlElementName('RoleName'))
        ..add(serializers.serialize(
          roleName,
          specifiedType: const FullType(String),
        ));
    }
    if (roleId != null) {
      result$
        ..add(const _i9.XmlElementName('RoleId'))
        ..add(serializers.serialize(
          roleId,
          specifiedType: const FullType(String),
        ));
    }
    if (arn != null) {
      result$
        ..add(const _i9.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (createDate != null) {
      result$
        ..add(const _i9.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          createDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (assumeRolePolicyDocument != null) {
      result$
        ..add(const _i9.XmlElementName('AssumeRolePolicyDocument'))
        ..add(serializers.serialize(
          assumeRolePolicyDocument,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceProfileList != null) {
      result$
        ..add(const _i9.XmlElementName('InstanceProfileList'))
        ..add(const _i9.XmlBuiltListSerializer(
                indexer: _i9.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          instanceProfileList,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i2.InstanceProfile)],
          ),
        ));
    }
    if (rolePolicyList != null) {
      result$
        ..add(const _i9.XmlElementName('RolePolicyList'))
        ..add(const _i9.XmlBuiltListSerializer(
                indexer: _i9.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          rolePolicyList,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i3.PolicyDetail)],
          ),
        ));
    }
    if (attachedManagedPolicies != null) {
      result$
        ..add(const _i9.XmlElementName('AttachedManagedPolicies'))
        ..add(const _i9.XmlBuiltListSerializer(
                indexer: _i9.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          attachedManagedPolicies,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i4.AttachedPolicy)],
          ),
        ));
    }
    if (permissionsBoundary != null) {
      result$
        ..add(const _i9.XmlElementName('PermissionsBoundary'))
        ..add(serializers.serialize(
          permissionsBoundary,
          specifiedType: const FullType(_i5.AttachedPermissionsBoundary),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i9.XmlElementName('Tags'))
        ..add(const _i9.XmlBuiltListSerializer(
                indexer: _i9.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i6.Tag)],
          ),
        ));
    }
    if (roleLastUsed != null) {
      result$
        ..add(const _i9.XmlElementName('RoleLastUsed'))
        ..add(serializers.serialize(
          roleLastUsed,
          specifiedType: const FullType(_i7.RoleLastUsed),
        ));
    }
    return result$;
  }
}
