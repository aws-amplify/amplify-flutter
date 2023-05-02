// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.policy_granting_service_access; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/iam/model/policy_owner_entity_type.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/policy_type.dart' as _i2;

part 'policy_granting_service_access.g.dart';

/// Contains details about the permissions policies that are attached to the specified identity (user, group, or role).
///
/// This data type is an element of the ListPoliciesGrantingServiceAccessEntry object.
abstract class PolicyGrantingServiceAccess
    with _i1.AWSEquatable<PolicyGrantingServiceAccess>
    implements
        Built<PolicyGrantingServiceAccess, PolicyGrantingServiceAccessBuilder> {
  /// Contains details about the permissions policies that are attached to the specified identity (user, group, or role).
  ///
  /// This data type is an element of the ListPoliciesGrantingServiceAccessEntry object.
  factory PolicyGrantingServiceAccess({
    required String policyName,
    required _i2.PolicyType policyType,
    String? policyArn,
    _i3.PolicyOwnerEntityType? entityType,
    String? entityName,
  }) {
    return _$PolicyGrantingServiceAccess._(
      policyName: policyName,
      policyType: policyType,
      policyArn: policyArn,
      entityType: entityType,
      entityName: entityName,
    );
  }

  /// Contains details about the permissions policies that are attached to the specified identity (user, group, or role).
  ///
  /// This data type is an element of the ListPoliciesGrantingServiceAccessEntry object.
  factory PolicyGrantingServiceAccess.build(
          [void Function(PolicyGrantingServiceAccessBuilder) updates]) =
      _$PolicyGrantingServiceAccess;

  const PolicyGrantingServiceAccess._();

  static const List<_i4.SmithySerializer> serializers = [
    PolicyGrantingServiceAccessAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PolicyGrantingServiceAccessBuilder b) {}

  /// The policy name.
  String get policyName;

  /// The policy type. For more information about these policy types, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html) in the _IAM User Guide_.
  _i2.PolicyType get policyType;

  /// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.
  ///
  /// For more information about ARNs, go to [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String? get policyArn;

  /// The type of entity (user or role) that used the policy to access the service to which the inline policy is attached.
  ///
  /// This field is null for managed policies. For more information about these policy types, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html) in the _IAM User Guide_.
  _i3.PolicyOwnerEntityType? get entityType;

  /// The name of the entity (user or role) to which the inline policy is attached.
  ///
  /// This field is null for managed policies. For more information about these policy types, see [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html) in the _IAM User Guide_.
  String? get entityName;
  @override
  List<Object?> get props => [
        policyName,
        policyType,
        policyArn,
        entityType,
        entityName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PolicyGrantingServiceAccess');
    helper.add(
      'policyName',
      policyName,
    );
    helper.add(
      'policyType',
      policyType,
    );
    helper.add(
      'policyArn',
      policyArn,
    );
    helper.add(
      'entityType',
      entityType,
    );
    helper.add(
      'entityName',
      entityName,
    );
    return helper.toString();
  }
}

class PolicyGrantingServiceAccessAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<PolicyGrantingServiceAccess> {
  const PolicyGrantingServiceAccessAwsQuerySerializer()
      : super('PolicyGrantingServiceAccess');

  @override
  Iterable<Type> get types => const [
        PolicyGrantingServiceAccess,
        _$PolicyGrantingServiceAccess,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PolicyGrantingServiceAccess deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyGrantingServiceAccessBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'PolicyName':
          result.policyName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PolicyType':
          result.policyType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.PolicyType),
          ) as _i2.PolicyType);
          break;
        case 'PolicyArn':
          if (value != null) {
            result.policyArn = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'EntityType':
          if (value != null) {
            result.entityType = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.PolicyOwnerEntityType),
            ) as _i3.PolicyOwnerEntityType);
          }
          break;
        case 'EntityName':
          if (value != null) {
            result.entityName = (serializers.deserialize(
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
    final payload = (object as PolicyGrantingServiceAccess);
    final result = <Object?>[
      const _i4.XmlElementName(
        'PolicyGrantingServiceAccessResponse',
        _i4.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i4.XmlElementName('PolicyName'))
      ..add(serializers.serialize(
        payload.policyName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i4.XmlElementName('PolicyType'))
      ..add(serializers.serialize(
        payload.policyType,
        specifiedType: const FullType.nullable(_i2.PolicyType),
      ));
    if (payload.policyArn != null) {
      result
        ..add(const _i4.XmlElementName('PolicyArn'))
        ..add(serializers.serialize(
          payload.policyArn!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.entityType != null) {
      result
        ..add(const _i4.XmlElementName('EntityType'))
        ..add(serializers.serialize(
          payload.entityType!,
          specifiedType: const FullType.nullable(_i3.PolicyOwnerEntityType),
        ));
    }
    if (payload.entityName != null) {
      result
        ..add(const _i4.XmlElementName('EntityName'))
        ..add(serializers.serialize(
          payload.entityName!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
