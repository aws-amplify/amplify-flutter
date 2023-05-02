// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.iam.model.get_group_policy_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_group_policy_response.g.dart';

/// Contains the response to a successful GetGroupPolicy request.
abstract class GetGroupPolicyResponse
    with _i1.AWSEquatable<GetGroupPolicyResponse>
    implements Built<GetGroupPolicyResponse, GetGroupPolicyResponseBuilder> {
  /// Contains the response to a successful GetGroupPolicy request.
  factory GetGroupPolicyResponse({
    required String groupName,
    required String policyName,
    required String policyDocument,
  }) {
    return _$GetGroupPolicyResponse._(
      groupName: groupName,
      policyName: policyName,
      policyDocument: policyDocument,
    );
  }

  /// Contains the response to a successful GetGroupPolicy request.
  factory GetGroupPolicyResponse.build(
          [void Function(GetGroupPolicyResponseBuilder) updates]) =
      _$GetGroupPolicyResponse;

  const GetGroupPolicyResponse._();

  /// Constructs a [GetGroupPolicyResponse] from a [payload] and [response].
  factory GetGroupPolicyResponse.fromResponse(
    GetGroupPolicyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GetGroupPolicyResponseAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetGroupPolicyResponseBuilder b) {}

  /// The group the policy is associated with.
  String get groupName;

  /// The name of the policy.
  String get policyName;

  /// The policy document.
  ///
  /// IAM stores policies in JSON format. However, resources that were created using CloudFormation templates can be formatted in YAML. CloudFormation always converts a YAML policy to JSON format before submitting it to IAM.
  String get policyDocument;
  @override
  List<Object?> get props => [
        groupName,
        policyName,
        policyDocument,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetGroupPolicyResponse');
    helper.add(
      'groupName',
      groupName,
    );
    helper.add(
      'policyName',
      policyName,
    );
    helper.add(
      'policyDocument',
      policyDocument,
    );
    return helper.toString();
  }
}

class GetGroupPolicyResponseAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<GetGroupPolicyResponse> {
  const GetGroupPolicyResponseAwsQuerySerializer()
      : super('GetGroupPolicyResponse');

  @override
  Iterable<Type> get types => const [
        GetGroupPolicyResponse,
        _$GetGroupPolicyResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetGroupPolicyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetGroupPolicyResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'GroupName':
          result.groupName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PolicyName':
          result.policyName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PolicyDocument':
          result.policyDocument = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as GetGroupPolicyResponse);
    final result = <Object?>[
      const _i2.XmlElementName(
        'GetGroupPolicyResponseResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    result
      ..add(const _i2.XmlElementName('GroupName'))
      ..add(serializers.serialize(
        payload.groupName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i2.XmlElementName('PolicyName'))
      ..add(serializers.serialize(
        payload.policyName,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i2.XmlElementName('PolicyDocument'))
      ..add(serializers.serialize(
        payload.policyDocument,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
