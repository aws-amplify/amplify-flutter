// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.policy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/tag.dart' as _i2;

part 'policy.g.dart';

/// Contains information about a managed policy.
///
/// This data type is used as a response element in the CreatePolicy, GetPolicy, and ListPolicies operations.
///
/// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
abstract class Policy
    with _i1.AWSEquatable<Policy>
    implements Built<Policy, PolicyBuilder> {
  /// Contains information about a managed policy.
  ///
  /// This data type is used as a response element in the CreatePolicy, GetPolicy, and ListPolicies operations.
  ///
  /// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  factory Policy({
    String? policyName,
    String? policyId,
    String? arn,
    String? path,
    String? defaultVersionId,
    int? attachmentCount,
    int? permissionsBoundaryUsageCount,
    bool? isAttachable,
    String? description,
    DateTime? createDate,
    DateTime? updateDate,
    List<_i2.Tag>? tags,
  }) {
    return _$Policy._(
      policyName: policyName,
      policyId: policyId,
      arn: arn,
      path: path,
      defaultVersionId: defaultVersionId,
      attachmentCount: attachmentCount,
      permissionsBoundaryUsageCount: permissionsBoundaryUsageCount,
      isAttachable: isAttachable,
      description: description,
      createDate: createDate,
      updateDate: updateDate,
      tags: tags == null ? null : _i3.BuiltList(tags),
    );
  }

  /// Contains information about a managed policy.
  ///
  /// This data type is used as a response element in the CreatePolicy, GetPolicy, and ListPolicies operations.
  ///
  /// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  factory Policy.build([void Function(PolicyBuilder) updates]) = _$Policy;

  const Policy._();

  static const List<_i4.SmithySerializer> serializers = [
    PolicyAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PolicyBuilder b) {}

  /// The friendly name (not ARN) identifying the policy.
  String? get policyName;

  /// The stable and unique string identifying the policy.
  ///
  /// For more information about IDs, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String? get policyId;

  /// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.
  ///
  /// For more information about ARNs, go to [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String? get arn;

  /// The path to the policy.
  ///
  /// For more information about paths, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) in the _IAM User Guide_.
  String? get path;

  /// The identifier for the version of the policy that is set as the default version.
  String? get defaultVersionId;

  /// The number of entities (users, groups, and roles) that the policy is attached to.
  int? get attachmentCount;

  /// The number of entities (users and roles) for which the policy is used to set the permissions boundary.
  ///
  /// For more information about permissions boundaries, see [Permissions boundaries for IAM identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html) in the _IAM User Guide_.
  int? get permissionsBoundaryUsageCount;

  /// Specifies whether the policy can be attached to an IAM user, group, or role.
  bool? get isAttachable;

  /// A friendly description of the policy.
  ///
  /// This element is included in the response to the GetPolicy operation. It is not included in the response to the ListPolicies operation.
  String? get description;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the policy was created.
  DateTime? get createDate;

  /// The date and time, in [ISO 8601 date-time format](http://www.iso.org/iso/iso8601), when the policy was last updated.
  ///
  /// When a policy has only one version, this field contains the date and time when the policy was created. When a policy has more than one version, this field contains the date and time when the most recent policy version was created.
  DateTime? get updateDate;

  /// A list of tags that are attached to the instance profile. For more information about tagging, see [Tagging IAM resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the _IAM User Guide_.
  _i3.BuiltList<_i2.Tag>? get tags;
  @override
  List<Object?> get props => [
        policyName,
        policyId,
        arn,
        path,
        defaultVersionId,
        attachmentCount,
        permissionsBoundaryUsageCount,
        isAttachable,
        description,
        createDate,
        updateDate,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Policy');
    helper.add(
      'policyName',
      policyName,
    );
    helper.add(
      'policyId',
      policyId,
    );
    helper.add(
      'arn',
      arn,
    );
    helper.add(
      'path',
      path,
    );
    helper.add(
      'defaultVersionId',
      defaultVersionId,
    );
    helper.add(
      'attachmentCount',
      attachmentCount,
    );
    helper.add(
      'permissionsBoundaryUsageCount',
      permissionsBoundaryUsageCount,
    );
    helper.add(
      'isAttachable',
      isAttachable,
    );
    helper.add(
      'description',
      description,
    );
    helper.add(
      'createDate',
      createDate,
    );
    helper.add(
      'updateDate',
      updateDate,
    );
    helper.add(
      'tags',
      tags,
    );
    return helper.toString();
  }
}

class PolicyAwsQuerySerializer extends _i4.StructuredSmithySerializer<Policy> {
  const PolicyAwsQuerySerializer() : super('Policy');

  @override
  Iterable<Type> get types => const [
        Policy,
        _$Policy,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Policy deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'PolicyName':
          if (value != null) {
            result.policyName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PolicyId':
          if (value != null) {
            result.policyId = (serializers.deserialize(
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
        case 'Path':
          if (value != null) {
            result.path = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DefaultVersionId':
          if (value != null) {
            result.defaultVersionId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'AttachmentCount':
          if (value != null) {
            result.attachmentCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'PermissionsBoundaryUsageCount':
          if (value != null) {
            result.permissionsBoundaryUsageCount = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'IsAttachable':
          if (value != null) {
            result.isAttachable = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'Description':
          if (value != null) {
            result.description = (serializers.deserialize(
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
        case 'UpdateDate':
          if (value != null) {
            result.updateDate = (serializers.deserialize(
              value,
              specifiedType: const FullType(DateTime),
            ) as DateTime);
          }
          break;
        case 'Tags':
          if (value != null) {
            result.tags.replace((const _i4.XmlBuiltListSerializer(
                    indexer: _i4.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Tag)],
              ),
            ) as _i3.BuiltList<_i2.Tag>));
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
    final payload = (object as Policy);
    final result = <Object?>[
      const _i4.XmlElementName(
        'PolicyResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.policyName != null) {
      result
        ..add(const _i4.XmlElementName('PolicyName'))
        ..add(serializers.serialize(
          payload.policyName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.policyId != null) {
      result
        ..add(const _i4.XmlElementName('PolicyId'))
        ..add(serializers.serialize(
          payload.policyId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.arn != null) {
      result
        ..add(const _i4.XmlElementName('Arn'))
        ..add(serializers.serialize(
          payload.arn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.path != null) {
      result
        ..add(const _i4.XmlElementName('Path'))
        ..add(serializers.serialize(
          payload.path!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.defaultVersionId != null) {
      result
        ..add(const _i4.XmlElementName('DefaultVersionId'))
        ..add(serializers.serialize(
          payload.defaultVersionId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.attachmentCount != null) {
      result
        ..add(const _i4.XmlElementName('AttachmentCount'))
        ..add(serializers.serialize(
          payload.attachmentCount!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.permissionsBoundaryUsageCount != null) {
      result
        ..add(const _i4.XmlElementName('PermissionsBoundaryUsageCount'))
        ..add(serializers.serialize(
          payload.permissionsBoundaryUsageCount!,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (payload.isAttachable != null) {
      result
        ..add(const _i4.XmlElementName('IsAttachable'))
        ..add(serializers.serialize(
          payload.isAttachable!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.description != null) {
      result
        ..add(const _i4.XmlElementName('Description'))
        ..add(serializers.serialize(
          payload.description!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.createDate != null) {
      result
        ..add(const _i4.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          payload.createDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.updateDate != null) {
      result
        ..add(const _i4.XmlElementName('UpdateDate'))
        ..add(serializers.serialize(
          payload.updateDate!,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (payload.tags != null) {
      result
        ..add(const _i4.XmlElementName('Tags'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.tags!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Tag)],
          ),
        ));
    }
    return result;
  }
}
