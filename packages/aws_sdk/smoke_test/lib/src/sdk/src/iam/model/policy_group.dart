// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.policy_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'policy_group.g.dart';

/// Contains information about a group that a managed policy is attached to.
///
/// This data type is used as a response element in the ListEntitiesForPolicy operation.
///
/// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
abstract class PolicyGroup
    with _i1.AWSEquatable<PolicyGroup>
    implements Built<PolicyGroup, PolicyGroupBuilder> {
  /// Contains information about a group that a managed policy is attached to.
  ///
  /// This data type is used as a response element in the ListEntitiesForPolicy operation.
  ///
  /// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  factory PolicyGroup({
    String? groupName,
    String? groupId,
  }) {
    return _$PolicyGroup._(
      groupName: groupName,
      groupId: groupId,
    );
  }

  /// Contains information about a group that a managed policy is attached to.
  ///
  /// This data type is used as a response element in the ListEntitiesForPolicy operation.
  ///
  /// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  factory PolicyGroup.build([void Function(PolicyGroupBuilder) updates]) =
      _$PolicyGroup;

  const PolicyGroup._();

  static const List<_i2.SmithySerializer<PolicyGroup>> serializers = [
    PolicyGroupAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PolicyGroupBuilder b) {}

  /// The name (friendly name, not ARN) identifying the group.
  String? get groupName;

  /// The stable and unique string identifying the group. For more information about IDs, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html) in the _IAM User Guide_.
  String? get groupId;
  @override
  List<Object?> get props => [
        groupName,
        groupId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PolicyGroup')
      ..add(
        'groupName',
        groupName,
      )
      ..add(
        'groupId',
        groupId,
      );
    return helper.toString();
  }
}

class PolicyGroupAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<PolicyGroup> {
  const PolicyGroupAwsQuerySerializer() : super('PolicyGroup');

  @override
  Iterable<Type> get types => const [
        PolicyGroup,
        _$PolicyGroup,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PolicyGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PolicyGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PolicyGroupResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final PolicyGroup(:groupName, :groupId) = object;
    if (groupName != null) {
      result$
        ..add(const _i2.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    if (groupId != null) {
      result$
        ..add(const _i2.XmlElementName('GroupId'))
        ..add(serializers.serialize(
          groupId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
