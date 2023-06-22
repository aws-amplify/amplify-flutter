// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.policy_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'policy_detail.g.dart';

/// Contains information about an IAM policy, including the policy document.
///
/// This data type is used as a response element in the GetAccountAuthorizationDetails operation.
abstract class PolicyDetail
    with _i1.AWSEquatable<PolicyDetail>
    implements Built<PolicyDetail, PolicyDetailBuilder> {
  /// Contains information about an IAM policy, including the policy document.
  ///
  /// This data type is used as a response element in the GetAccountAuthorizationDetails operation.
  factory PolicyDetail({
    String? policyName,
    String? policyDocument,
  }) {
    return _$PolicyDetail._(
      policyName: policyName,
      policyDocument: policyDocument,
    );
  }

  /// Contains information about an IAM policy, including the policy document.
  ///
  /// This data type is used as a response element in the GetAccountAuthorizationDetails operation.
  factory PolicyDetail.build([void Function(PolicyDetailBuilder) updates]) =
      _$PolicyDetail;

  const PolicyDetail._();

  static const List<_i2.SmithySerializer<PolicyDetail>> serializers = [
    PolicyDetailAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PolicyDetailBuilder b) {}

  /// The name of the policy.
  String? get policyName;

  /// The policy document.
  String? get policyDocument;
  @override
  List<Object?> get props => [
        policyName,
        policyDocument,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PolicyDetail')
      ..add(
        'policyName',
        policyName,
      )
      ..add(
        'policyDocument',
        policyDocument,
      );
    return helper.toString();
  }
}

class PolicyDetailAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<PolicyDetail> {
  const PolicyDetailAwsQuerySerializer() : super('PolicyDetail');

  @override
  Iterable<Type> get types => const [
        PolicyDetail,
        _$PolicyDetail,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  PolicyDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PolicyDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PolicyName':
          result.policyName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyDocument':
          result.policyDocument = (serializers.deserialize(
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
    PolicyDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PolicyDetailResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final PolicyDetail(:policyName, :policyDocument) = object;
    if (policyName != null) {
      result$
        ..add(const _i2.XmlElementName('PolicyName'))
        ..add(serializers.serialize(
          policyName,
          specifiedType: const FullType(String),
        ));
    }
    if (policyDocument != null) {
      result$
        ..add(const _i2.XmlElementName('PolicyDocument'))
        ..add(serializers.serialize(
          policyDocument,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
