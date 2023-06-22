// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.group_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/iam/model/attached_policy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/policy_detail.dart' as _i2;

part 'group_detail.g.dart';

/// Contains information about an IAM group, including all of the group's policies.
///
/// This data type is used as a response element in the GetAccountAuthorizationDetails operation.
abstract class GroupDetail
    with _i1.AWSEquatable<GroupDetail>
    implements Built<GroupDetail, GroupDetailBuilder> {
  /// Contains information about an IAM group, including all of the group's policies.
  ///
  /// This data type is used as a response element in the GetAccountAuthorizationDetails operation.
  factory GroupDetail({
    String? path,
    String? groupName,
    String? groupId,
    String? arn,
    DateTime? createDate,
    List<_i2.PolicyDetail>? groupPolicyList,
    List<_i3.AttachedPolicy>? attachedManagedPolicies,
  }) {
    return _$GroupDetail._(
      path: path,
      groupName: groupName,
      groupId: groupId,
      arn: arn,
      createDate: createDate,
      groupPolicyList:
          groupPolicyList == null ? null : _i4.BuiltList(groupPolicyList),
      attachedManagedPolicies: attachedManagedPolicies == null
          ? null
          : _i4.BuiltList(attachedManagedPolicies),
    );
  }

  /// Contains information about an IAM group, including all of the group's policies.
  ///
  /// This data type is used as a response element in the GetAccountAuthorizationDetails operation.
  factory GroupDetail.build([void Function(GroupDetailBuilder) updates]) =
      _$GroupDetail;

  const GroupDetail._();

  static const List<_i5.SmithySerializer<GroupDetail>> serializers = [
    GroupDetailAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GroupDetailBuilder b) {}

  /// The path to the group. For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String? get path;

  /// The friendly name that identifies the group.
  String? get groupName;

  /// The stable and unique string identifying the group. For more information about IDs, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String? get groupId;

  /// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.
  ///
  /// For more information about ARNs, go to [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String? get arn;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the group was created.
  DateTime? get createDate;

  /// A list of the inline policies embedded in the group.
  _i4.BuiltList<_i2.PolicyDetail>? get groupPolicyList;

  /// A list of the managed policies attached to the group.
  _i4.BuiltList<_i3.AttachedPolicy>? get attachedManagedPolicies;
  @override
  List<Object?> get props => [
        path,
        groupName,
        groupId,
        arn,
        createDate,
        groupPolicyList,
        attachedManagedPolicies,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GroupDetail')
      ..add(
        'path',
        path,
      )
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'groupId',
        groupId,
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
        'groupPolicyList',
        groupPolicyList,
      )
      ..add(
        'attachedManagedPolicies',
        attachedManagedPolicies,
      );
    return helper.toString();
  }
}

class GroupDetailAwsQuerySerializer
    extends _i5.StructuredSmithySerializer<GroupDetail> {
  const GroupDetailAwsQuerySerializer() : super('GroupDetail');

  @override
  Iterable<Type> get types => const [
        GroupDetail,
        _$GroupDetail,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GroupDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupDetailBuilder();
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
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'GroupId':
          result.groupId = (serializers.deserialize(
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
        case 'GroupPolicyList':
          result.groupPolicyList.replace((const _i5.XmlBuiltListSerializer(
                  indexer: _i5.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i2.PolicyDetail)],
            ),
          ) as _i4.BuiltList<_i2.PolicyDetail>));
        case 'AttachedManagedPolicies':
          result.attachedManagedPolicies.replace(
              (const _i5.XmlBuiltListSerializer(
                      indexer: _i5.XmlIndexer.awsQueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.AttachedPolicy)],
            ),
          ) as _i4.BuiltList<_i3.AttachedPolicy>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GroupDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i5.XmlElementName(
        'GroupDetailResponse',
        _i5.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GroupDetail(
      :path,
      :groupName,
      :groupId,
      :arn,
      :createDate,
      :groupPolicyList,
      :attachedManagedPolicies
    ) = object;
    if (path != null) {
      result$
        ..add(const _i5.XmlElementName('Path'))
        ..add(serializers.serialize(
          path,
          specifiedType: const FullType(String),
        ));
    }
    if (groupName != null) {
      result$
        ..add(const _i5.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (groupId != null) {
      result$
        ..add(const _i5.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
          specifiedType: const FullType(String),
        ));
    }
    if (arn != null) {
      result$
        ..add(const _i5.XmlElementName('Arn'))
        ..add(serializers.serialize(
          arn,
          specifiedType: const FullType(String),
        ));
    }
    if (createDate != null) {
      result$
        ..add(const _i5.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          createDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (groupPolicyList != null) {
      result$
        ..add(const _i5.XmlElementName('GroupPolicyList'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          groupPolicyList,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i2.PolicyDetail)],
          ),
        ));
    }
    if (attachedManagedPolicies != null) {
      result$
        ..add(const _i5.XmlElementName('AttachedManagedPolicies'))
        ..add(const _i5.XmlBuiltListSerializer(
                indexer: _i5.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          attachedManagedPolicies,
          specifiedType: const FullType.nullable(
            _i4.BuiltList,
            [FullType(_i3.AttachedPolicy)],
          ),
        ));
    }
    return result$;
  }
}
