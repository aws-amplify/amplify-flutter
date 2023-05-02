// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.user_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/iam/model/attached_permissions_boundary.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/attached_policy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/policy_detail.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i5;

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
    List<_i2.PolicyDetail>? userPolicyList,
    List<String>? groupList,
    List<_i3.AttachedPolicy>? attachedManagedPolicies,
    _i4.AttachedPermissionsBoundary? permissionsBoundary,
    List<_i5.Tag>? tags,
  }) {
    return _$UserDetail._(
      path: path,
      userName: userName,
      userId: userId,
      arn: arn,
      createDate: createDate,
      userPolicyList:
          userPolicyList == null ? null : _i6.BuiltList(userPolicyList),
      groupList: groupList == null ? null : _i6.BuiltList(groupList),
      attachedManagedPolicies: attachedManagedPolicies == null
          ? null
          : _i6.BuiltList(attachedManagedPolicies),
      permissionsBoundary: permissionsBoundary,
      tags: tags == null ? null : _i6.BuiltList(tags),
    );
  }

  /// Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.
  ///
  /// This data type is used as a response element in the GetAccountAuthorizationDetails operation.
  factory UserDetail.build([void Function(UserDetailBuilder) updates]) =
      _$UserDetail;

  const UserDetail._();

  static const List<_i7.SmithySerializer> serializers = [
    UserDetailAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UserDetailBuilder b) {}

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
  _i6.BuiltList<_i2.PolicyDetail>? get userPolicyList;

  /// A list of IAM groups that the user is in.
  _i6.BuiltList<String>? get groupList;

  /// A list of the managed policies attached to the user.
  _i6.BuiltList<_i3.AttachedPolicy>? get attachedManagedPolicies;

  /// The ARN of the policy used to set the permissions boundary for the user.
  ///
  /// For more information about permissions boundaries, see [Permissions boundaries for IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_.
  _i4.AttachedPermissionsBoundary? get permissionsBoundary;

  /// A list of tags that are associated with the user. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i6.BuiltList<_i5.Tag>? get tags;
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
    final helper = newBuiltValueToStringHelper('UserDetail');
    helper.add(
      'path',
      path,
    );
    helper.add(
      'userName',
      userName,
    );
    helper.add(
      'userId',
      userId,
    );
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'createDate',
      createDate,
    );
    helper.add(
      'userPolicyList',
      userPolicyList,
    );
    helper.add(
      'groupList',
      groupList,
    );
    helper.add(
      'attachedManagedPolicies',
      attachedManagedPolicies,
    );
    helper.add(
      'permissionsBoundary',
      permissionsBoundary,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class UserDetailAwsQuerySerializer
    extends _i7.StructuredSmithySerializer<UserDetail> {
  const UserDetailAwsQuerySerializer() : super('UserDetail');

  @override
  Iterable<Type> get types => const [
        UserDetail,
        _$UserDetail,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
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
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Path':
          if (value != null) {
            result.path = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'UserName':
          if (value != null) {
            result.userName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'UserId':
          if (value != null) {
            result.userId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Arn':
          if (value != null) {
            result.arn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'CreateDate':
          if (value != null) {
            result.createDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'UserPolicyList':
          if (value != null) {
            result.userPolicyList.replace((const _i7.XmlBuiltListSerializer(
                    indexer: _i7.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i2.PolicyDetail)],
              ),
            ) as _i6.BuiltList<_i2.PolicyDetail>));
          }
          break;
        case 'GroupList':
          if (value != null) {
            result.groupList.replace((const _i7.XmlBuiltListSerializer(
                    indexer: _i7.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'AttachedManagedPolicies':
          if (value != null) {
            result.attachedManagedPolicies.replace(
                (const _i7.XmlBuiltListSerializer(
                        indexer: _i7.XmlIndexer.awsQueryList)
                    .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.AttachedPolicy)],
              ),
            ) as _i6.BuiltList<_i3.AttachedPolicy>));
          }
          break;
        case 'PermissionsBoundary':
          if (value != null) {
            result.permissionsBoundary.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AttachedPermissionsBoundary),
            ) as _i4.AttachedPermissionsBoundary));
          }
          break;
        case 'Tags':
          if (value != null) {
            result.tags.replace((const _i7.XmlBuiltListSerializer(
                    indexer: _i7.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.Tag)],
              ),
            ) as _i6.BuiltList<_i5.Tag>));
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
    final payload = (object as UserDetail);
    final result = <Object?>[
      const _i7.XmlElementName(
        'UserDetailResponse',
        _i7.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.path != null) {
      result
        ..add(const _i7.XmlElementName('Path'))
        ..add(serializers.serialize(
          payload.path!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userName != null) {
      result
        ..add(const _i7.XmlElementName('UserName'))
        ..add(serializers.serialize(
          payload.userName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.userId != null) {
      result
        ..add(const _i7.XmlElementName('UserId'))
        ..add(serializers.serialize(
          payload.userId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.arn != null) {
      result
        ..add(const _i7.XmlElementName('Arn'))
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.createDate != null) {
      result
        ..add(const _i7.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          payload.createDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.userPolicyList != null) {
      result
        ..add(const _i7.XmlElementName('UserPolicyList'))
        ..add(const _i7.XmlBuiltListSerializer(
                indexer: _i7.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.userPolicyList!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i2.PolicyDetail)],
          ),
        ));
    }
    if (payload.groupList != null) {
      result
        ..add(const _i7.XmlElementName('GroupList'))
        ..add(const _i7.XmlBuiltListSerializer(
                indexer: _i7.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.groupList!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.attachedManagedPolicies != null) {
      result
        ..add(const _i7.XmlElementName('AttachedManagedPolicies'))
        ..add(const _i7.XmlBuiltListSerializer(
                indexer: _i7.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.attachedManagedPolicies!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.AttachedPolicy)],
          ),
        ));
    }
    if (payload.permissionsBoundary != null) {
      result
        ..add(const _i7.XmlElementName('PermissionsBoundary'))
        ..add(serializers.serialize(
          payload.permissionsBoundary!,
          specifiedType: const FullType(_i4.AttachedPermissionsBoundary),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i7.XmlElementName('Tags'))
        ..add(const _i7.XmlBuiltListSerializer(
                indexer: _i7.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i5.Tag)],
          ),
        ));
    }
    return result;
  }
}
