// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.sts.model.federated_user; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'federated_user.g.dart';

/// Identifiers for the federated user that is associated with the credentials.
abstract class FederatedUser
    with _i1.AWSEquatable<FederatedUser>
    implements Built<FederatedUser, FederatedUserBuilder> {
  /// Identifiers for the federated user that is associated with the credentials.
  factory FederatedUser({
    required String federatedUserId,
    required String arn,
  }) {
    return _$FederatedUser._(
      federatedUserId: federatedUserId,
      arn: arn,
    );
  }

  /// Identifiers for the federated user that is associated with the credentials.
  factory FederatedUser.build([void Function(FederatedUserBuilder) updates]) =
      _$FederatedUser;

  const FederatedUser._();

  static const List<_i2.SmithySerializer<FederatedUser>> serializers = [
    FederatedUserAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FederatedUserBuilder b) {}

  /// The string that identifies the federated user associated with the credentials, similar to the unique ID of an IAM user.
  String get federatedUserId;

  /// The ARN that specifies the federated user that is associated with the credentials. For more information about ARNs and how to use them in policies, see [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html) in the _IAM User Guide_.
  String get arn;
  @override
  List<Object?> get props => [
        federatedUserId,
        arn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FederatedUser')
      ..add(
        'federatedUserId',
        federatedUserId,
      )
      ..add(
        'arn',
        arn,
      );
    return helper.toString();
  }
}

class FederatedUserAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<FederatedUser> {
  const FederatedUserAwsQuerySerializer() : super('FederatedUser');

  @override
  Iterable<Type> get types => const [
        FederatedUser,
        _$FederatedUser,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  FederatedUser deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FederatedUserBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'FederatedUserId':
          result.federatedUserId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Arn':
          result.arn = (serializers.deserialize(
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
    FederatedUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FederatedUserResponse',
        _i2.XmlNamespace('https://sts.amazonaws.com/doc/2011-06-15/'),
      )
    ];
    final FederatedUser(:federatedUserId, :arn) = object;
    result$
      ..add(const _i2.XmlElementName('FederatedUserId'))
      ..add(serializers.serialize(
        federatedUserId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('Arn'))
      ..add(serializers.serialize(
        arn,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
