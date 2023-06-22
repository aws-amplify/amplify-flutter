// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.policy_user; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'policy_user.g.dart';

/// Contains information about a user that a managed policy is attached to.
///
/// This data type is used as a response element in the ListEntitiesForPolicy operation.
///
/// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
abstract class PolicyUser
    with _i1.AWSEquatable<PolicyUser>
    implements Built<PolicyUser, PolicyUserBuilder> {
  /// Contains information about a user that a managed policy is attached to.
  ///
  /// This data type is used as a response element in the ListEntitiesForPolicy operation.
  ///
  /// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  factory PolicyUser({
    String? userName,
    String? userId,
  }) {
    return _$PolicyUser._(
      userName: userName,
      userId: userId,
    );
  }

  /// Contains information about a user that a managed policy is attached to.
  ///
  /// This data type is used as a response element in the ListEntitiesForPolicy operation.
  ///
  /// For more information about managed policies, refer to [Managed policies and inline policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html) in the _IAM User Guide_.
  factory PolicyUser.build([void Function(PolicyUserBuilder) updates]) =
      _$PolicyUser;

  const PolicyUser._();

  static const List<_i2.SmithySerializer<PolicyUser>> serializers = [
    PolicyUserAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PolicyUserBuilder b) {}

  /// The name (friendly name, not ARN) identifying the user.
  String? get userName;

  /// The stable and unique string identifying the user. For more information about IDs, see [IAM identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html) in the _IAM User Guide_.
  String? get userId;
  @override
  List<Object?> get props => [
        userName,
        userId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PolicyUser')
      ..add(
        'userName',
        userName,
      )
      ..add(
        'userId',
        userId,
      );
    return helper.toString();
  }
}

class PolicyUserAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<PolicyUser> {
  const PolicyUserAwsQuerySerializer() : super('PolicyUser');

  @override
  Iterable<Type> get types => const [
        PolicyUser,
        _$PolicyUser,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PolicyUser deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyUserBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PolicyUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PolicyUserResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final PolicyUser(:userName, :userId) = object;
    if (userName != null) {
      result$
        ..add(const _i2.XmlElementName('UserName'))
        ..add(serializers.serialize(
          userName,
          specifiedType: const FullType(String),
        ));
    }
    if (userId != null) {
      result$
        ..add(const _i2.XmlElementName('UserId'))
        ..add(serializers.serialize(
          userId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
