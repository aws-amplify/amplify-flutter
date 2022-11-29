// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.config_service.model.get_custom_rule_policy_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_custom_rule_policy_response.g.dart';

abstract class GetCustomRulePolicyResponse
    with _i1.AWSEquatable<GetCustomRulePolicyResponse>
    implements
        Built<GetCustomRulePolicyResponse, GetCustomRulePolicyResponseBuilder> {
  factory GetCustomRulePolicyResponse({String? policyText}) {
    return _$GetCustomRulePolicyResponse._(policyText: policyText);
  }

  factory GetCustomRulePolicyResponse.build(
          [void Function(GetCustomRulePolicyResponseBuilder) updates]) =
      _$GetCustomRulePolicyResponse;

  const GetCustomRulePolicyResponse._();

  /// Constructs a [GetCustomRulePolicyResponse] from a [payload] and [response].
  factory GetCustomRulePolicyResponse.fromResponse(
    GetCustomRulePolicyResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    GetCustomRulePolicyResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetCustomRulePolicyResponseBuilder b) {}

  /// The policy definition containing the logic for your Config Custom Policy rule.
  String? get policyText;
  @override
  List<Object?> get props => [policyText];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetCustomRulePolicyResponse');
    helper.add(
      'policyText',
      policyText,
    );
    return helper.toString();
  }
}

class GetCustomRulePolicyResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<GetCustomRulePolicyResponse> {
  const GetCustomRulePolicyResponseAwsJson11Serializer()
      : super('GetCustomRulePolicyResponse');

  @override
  Iterable<Type> get types => const [
        GetCustomRulePolicyResponse,
        _$GetCustomRulePolicyResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetCustomRulePolicyResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCustomRulePolicyResponseBuilder();
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
    final payload = (object as GetCustomRulePolicyResponse);
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
