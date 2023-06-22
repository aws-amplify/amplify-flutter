// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.get_user_policy_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_user_policy_response.g.dart';

/// Contains the response to a successful GetUserPolicy request.
abstract class GetUserPolicyResponse
    with _i1.AWSEquatable<GetUserPolicyResponse>
    implements Built<GetUserPolicyResponse, GetUserPolicyResponseBuilder> {
  /// Contains the response to a successful GetUserPolicy request.
  factory GetUserPolicyResponse({
    required String userName,
    required String policyName,
    required String policyDocument,
  }) {
    return _$GetUserPolicyResponse._(
      userName: userName,
      policyName: policyName,
      policyDocument: policyDocument,
    );
  }

  /// Contains the response to a successful GetUserPolicy request.
  factory GetUserPolicyResponse.build(
          [void Function(GetUserPolicyResponseBuilder) updates]) =
      _$GetUserPolicyResponse;

  const GetUserPolicyResponse._();

  /// Constructs a [GetUserPolicyResponse] from a [payload] and [response].
  factory GetUserPolicyResponse.fromResponse(
    GetUserPolicyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetUserPolicyResponse>> serializers = [
    GetUserPolicyResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetUserPolicyResponseBuilder b) {}

  /// The user the policy is associated with.
  String get userName;

  /// The name of the policy.
  String get policyName;

  /// The policy document.
  ///
  /// IAM stores policies in JSON format. However, resources that were created using CloudFormation templates can be formatted in YAML. CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
  String get policyDocument;
  @override
  List<Object?> get props => [
        userName,
        policyName,
        policyDocument,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetUserPolicyResponse')
      ..add(
        'userName',
        userName,
      )
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

class GetUserPolicyResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<GetUserPolicyResponse> {
  const GetUserPolicyResponseAwsQuerySerializer()
      : super('GetUserPolicyResponse');

  @override
  Iterable<Type> get types => const [
        GetUserPolicyResponse,
        _$GetUserPolicyResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetUserPolicyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetUserPolicyResponseBuilder();
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
    GetUserPolicyResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetUserPolicyResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final GetUserPolicyResponse(:userName, :policyName, :policyDocument) =
        object;
    result$
      ..add(const _i2.XmlElementName('UserName'))
      ..add(serializers.serialize(
        userName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('PolicyName'))
      ..add(serializers.serialize(
        policyName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('PolicyDocument'))
      ..add(serializers.serialize(
        policyDocument,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
