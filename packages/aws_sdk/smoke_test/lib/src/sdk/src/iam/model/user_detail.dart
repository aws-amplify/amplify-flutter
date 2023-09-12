// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.user_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/attached_permissions_boundary.dart';
import 'package:smoke_test/src/sdk/src/iam/model/attached_policy.dart';
import 'package:smoke_test/src/sdk/src/iam/model/policy_detail.dart';
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart';

part 'user_detail.g.dart';

/// Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.
///
/// This data type is used as a response element in the GetAccountAuthorizationDetails operation.
abstract class UserDetail
    with _i1.AWSEquatable<UserDetail>
    implements Built<UserDetail, UserDetailBuilder> {
  /// Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.
  ///
  /// This data type is used as a response element in the GetAccountAuthorizationDetails operation.
  factory UserDetail({
    String? path,
    String? userName,
    String? userId,
    String? arn,
    DateTime? createDate,
    List<PolicyDetail>? userPolicyList,
    List<String>? groupList,
    List<AttachedPolicy>? attachedManagedPolicies,
    AttachedPermissionsBoundary? permissionsBoundary,
    List<Tag>? tags,
  }) {
    return _$UserDetail._(
      path: path,
      userName: userName,
      userId: userId,
      arn: arn,
      createDate: createDate,
      userPolicyList:
          userPolicyList == null ? null : _i2.BuiltList(userPolicyList),
      groupList: groupList == null ? null : _i2.BuiltList(groupList),
      attachedManagedPolicies: attachedManagedPolicies == null
          ? null
          : _i2.BuiltList(attachedManagedPolicies),
      permissionsBoundary: permissionsBoundary,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.
  ///
  /// This data type is used as a response element in the GetAccountAuthorizationDetails operation.
  factory UserDetail.build([void Function(UserDetailBuilder) updates]) =
      _$UserDetail;

  const UserDetail._();

  static const List<_i3.SmithySerializer<UserDetail>> serializers = [
    UserDetailAwsQuerySerializer()
  ];

  /// The path to the user. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String? get path;

  /// The friendly name identifying the user.
  String? get userName;

  /// The stable and unique string identifying the user. For more information about IDs, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String? get userId;

  /// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.
  ///
  /// For more information about ARNs, go to [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String? get arn;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the user was created.
  DateTime? get createDate;

  /// A list of the inline policies embedded in the user.
  _i2.BuiltList<PolicyDetail>? get userPolicyList;

  /// A list of IAM groups that the user is in.
  _i2.BuiltList<String>? get groupList;

  /// A list of the managed policies attached to the user.
  _i2.BuiltList<AttachedPolicy>? get attachedManagedPolicies;

  /// The ARN of the policy used to set the permissions boundary for the user.
  ///
  /// For more information about permissions boundaries, see [Permissions boundaries for IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_.
  AttachedPermissionsBoundary? get permissionsBoundary;

  /// A list of tags that are associated with the user. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        path,
        userName,
        userId,
        arn,
        createDate,
        userPolicyList,
        groupList,
        attachedManagedPolicies,
        permissionsBoundary,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UserDetail')
      ..add(
        'path',
        path,
      )
      ..add(
        'userName',
        userName,
      )
      ..add(
        'userId',
        userId,
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
        'userPolicyList',
        userPolicyList,
      )
      ..add(
        'groupList',
        groupList,
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
      );
    return helper.toString();
  }
}

class UserDetailAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<UserDetail> {
  const UserDetailAwsQuerySerializer() : super('UserDetail');

  @override
  Iterable<Type> get types => const [
        UserDetail,
        _$UserDetail,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UserDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserDetailBuilder();
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
        case 'Path':
          result.path = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UserName':
          result.userName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UserId':
          result.userId = (serializers.deserialize(
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
        case 'UserPolicyList':
          result.userPolicyList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PolicyDetail)],
            ),
          ) as _i2.BuiltList<PolicyDetail>));
        case 'GroupList':
          result.groupList.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'AttachedManagedPolicies':
          result.attachedManagedPolicies.replace(
              (const _i3.XmlBuiltListSerializer(
                      indexer: _i3.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AttachedPolicy)],
            ),
          ) as _i2.BuiltList<AttachedPolicy>));
        case 'PermissionsBoundary':
          result.permissionsBoundary.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttachedPermissionsBoundary),
          ) as AttachedPermissionsBoundary));
        case 'Tags':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    UserDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'UserDetailResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final UserDetail(
      :path,
      :userName,
      :userId,
      :arn,
      :createDate,
      :userPolicyList,
      :groupList,
      :attachedManagedPolicies,
      :permissionsBoundary,
      :tags
    ) = object;
    if (path != null) {
      result$
        ..add(const _i3.XmlElementName('Path'))
        ..add(serializers.serialize(
          path,
          specifiedType: const FullType(String),
        ));
    }
    if (userName != null) {
      result$
        ..add(const _i3.XmlElementName('UserName'))
        ..add(serializers.serialize(
          userName,
          specifiedType: const FullType(String),
        ));
    }
    if (userId != null) {
      result$
        ..add(const _i3.XmlElementName('UserId'))
        ..add(serializers.serialize(
          userId,
          specifiedType: const FullType(String),
        ));
    }
    if (arn != null) {
      result$
        ..add(const _i3.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (createDate != null) {
      result$
        ..add(const _i3.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          createDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (userPolicyList != null) {
      result$
        ..add(const _i3.XmlElementName('UserPolicyList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          userPolicyList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(PolicyDetail)],
          ),
        ));
    }
    if (groupList != null) {
      result$
        ..add(const _i3.XmlElementName('GroupList'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          groupList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (attachedManagedPolicies != null) {
      result$
        ..add(const _i3.XmlElementName('AttachedManagedPolicies'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          attachedManagedPolicies,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AttachedPolicy)],
          ),
        ));
    }
    if (permissionsBoundary != null) {
      result$
        ..add(const _i3.XmlElementName('PermissionsBoundary'))
        ..add(serializers.serialize(
          permissionsBoundary,
          specifiedType: const FullType(AttachedPermissionsBoundary),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('Tags'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
