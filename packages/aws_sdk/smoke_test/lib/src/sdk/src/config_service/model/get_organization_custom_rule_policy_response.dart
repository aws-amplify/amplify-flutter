// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.get_organization_custom_rule_policy_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_organization_custom_rule_policy_response.g.dart';

abstract class GetOrganizationCustomRulePolicyResponse
    with
        _i1.AWSEquatable<GetOrganizationCustomRulePolicyResponse>
    implements
        Built<GetOrganizationCustomRulePolicyResponse,
            GetOrganizationCustomRulePolicyResponseBuilder> {
  factory GetOrganizationCustomRulePolicyResponse({String? policyText}) {
    return _$GetOrganizationCustomRulePolicyResponse._(policyText: policyText);
  }

  factory GetOrganizationCustomRulePolicyResponse.build(
      [void Function(GetOrganizationCustomRulePolicyResponseBuilder)
          updates]) = _$GetOrganizationCustomRulePolicyResponse;

  const GetOrganizationCustomRulePolicyResponse._();

  /// Constructs a [GetOrganizationCustomRulePolicyResponse] from a [payload] and [response].
  factory GetOrganizationCustomRulePolicyResponse.fromResponse(
    GetOrganizationCustomRulePolicyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GetOrganizationCustomRulePolicyResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetOrganizationCustomRulePolicyResponseBuilder b) {}

  /// The policy definition containing the logic for your organization Config Custom Policy rule.
  String? get policyText;
  @override
  List<Object?> get props => [policyText];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetOrganizationCustomRulePolicyResponse');
    helper.add(
      'policyText',
      policyText,
    );
    return helper.toString();
  }
}

class GetOrganizationCustomRulePolicyResponseAwsJson11Serializer extends _i2
    .StructuredSmithySerializer<GetOrganizationCustomRulePolicyResponse> {
  const GetOrganizationCustomRulePolicyResponseAwsJson11Serializer()
      : super('GetOrganizationCustomRulePolicyResponse');

  @override
  Iterable<Type> get types => const [
        GetOrganizationCustomRulePolicyResponse,
        _$GetOrganizationCustomRulePolicyResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetOrganizationCustomRulePolicyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOrganizationCustomRulePolicyResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'PolicyText':
          if (value != null) {
            result.policyText = (serializers.deserialize(
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
    final payload = (object as GetOrganizationCustomRulePolicyResponse);
    final result = <Object?>[];
    if (payload.policyText != null) {
      result
        ..add('PolicyText')
        ..add(serializers.serialize(
          payload.policyText!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
