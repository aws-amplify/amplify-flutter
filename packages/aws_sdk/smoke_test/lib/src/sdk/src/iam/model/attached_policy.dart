// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.attached_policy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'attached_policy.g.dart';

/// Contains information about an attached policy.
///
/// An attached policy is a managed policy that has been attached to a user, group, or role. This data type is used as a response element in the ListAttachedGroupPolicies, ListAttachedRolePolicies, ListAttachedUserPolicies, and GetAccountAuthorizationDetails operations.
///
/// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
abstract class AttachedPolicy
    with _i1.AWSEquatable<AttachedPolicy>
    implements Built<AttachedPolicy, AttachedPolicyBuilder> {
  /// Contains information about an attached policy.
  ///
  /// An attached policy is a managed policy that has been attached to a user, group, or role. This data type is used as a response element in the ListAttachedGroupPolicies, ListAttachedRolePolicies, ListAttachedUserPolicies, and GetAccountAuthorizationDetails operations.
  ///
  /// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  factory AttachedPolicy({
    String? policyName,
    String? policyArn,
  }) {
    return _$AttachedPolicy._(
      policyName: policyName,
      policyArn: policyArn,
    );
  }

  /// Contains information about an attached policy.
  ///
  /// An attached policy is a managed policy that has been attached to a user, group, or role. This data type is used as a response element in the ListAttachedGroupPolicies, ListAttachedRolePolicies, ListAttachedUserPolicies, and GetAccountAuthorizationDetails operations.
  ///
  /// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  factory AttachedPolicy.build([void Function(AttachedPolicyBuilder) updates]) =
      _$AttachedPolicy;

  const AttachedPolicy._();

  static const List<_i2.SmithySerializer> serializers = [
    AttachedPolicyAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AttachedPolicyBuilder b) {}

  /// The friendly name of the attached policy.
  String? get policyName;

  /// The Amazon Resource Name (ARN). ARNs are unique identifiers for Amazon Web Services resources.
  ///
  /// For more information about ARNs, go to [Amazon Resource Names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) in the _Amazon Web Services General Reference_.
  String? get policyArn;
  @override
  List<Object?> get props => [
        policyName,
        policyArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AttachedPolicy');
    helper.add(
      'policyName',
      policyName,
    );
    helper.add(
      'policyArn',
      policyArn,
    );
    return helper.toString();
  }
}

class AttachedPolicyAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<AttachedPolicy> {
  const AttachedPolicyAwsQuerySerializer() : super('AttachedPolicy');

  @override
  Iterable<Type> get types => const [
        AttachedPolicy,
        _$AttachedPolicy,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  AttachedPolicy deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AttachedPolicyBuilder();
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
        case 'PolicyArn':
          if (value != null) {
            result.policyArn = (serializers.deserialize(
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
    final payload = (object as AttachedPolicy);
    final result = <Object?>[
      const _i2.XmlElementName(
        'AttachedPolicyResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    if (payload.policyName != null) {
      result
        ..add(const _i2.XmlElementName('PolicyName'))
        ..add(serializers.serialize(
          payload.policyName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.policyArn != null) {
      result
        ..add(const _i2.XmlElementName('PolicyArn'))
        ..add(serializers.serialize(
          payload.policyArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
