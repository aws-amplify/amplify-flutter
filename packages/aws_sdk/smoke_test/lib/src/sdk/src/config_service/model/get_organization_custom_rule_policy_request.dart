// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.get_organization_custom_rule_policy_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_organization_custom_rule_policy_request.g.dart';

abstract class GetOrganizationCustomRulePolicyRequest
    with
        _i1.HttpInput<GetOrganizationCustomRulePolicyRequest>,
        _i2.AWSEquatable<GetOrganizationCustomRulePolicyRequest>
    implements
        Built<GetOrganizationCustomRulePolicyRequest,
            GetOrganizationCustomRulePolicyRequestBuilder> {
  factory GetOrganizationCustomRulePolicyRequest(
      {required String organizationConfigRuleName}) {
    return _$GetOrganizationCustomRulePolicyRequest._(
        organizationConfigRuleName: organizationConfigRuleName);
  }

  factory GetOrganizationCustomRulePolicyRequest.build(
      [void Function(GetOrganizationCustomRulePolicyRequestBuilder)
          updates]) = _$GetOrganizationCustomRulePolicyRequest;

  const GetOrganizationCustomRulePolicyRequest._();

  factory GetOrganizationCustomRulePolicyRequest.fromRequest(
    GetOrganizationCustomRulePolicyRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GetOrganizationCustomRulePolicyRequest>>
      serializers = [
    GetOrganizationCustomRulePolicyRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetOrganizationCustomRulePolicyRequestBuilder b) {}

  /// The name of your organization Config Custom Policy rule.
  String get organizationConfigRuleName;
  @override
  GetOrganizationCustomRulePolicyRequest getPayload() => this;
  @override
  List<Object?> get props => [organizationConfigRuleName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetOrganizationCustomRulePolicyRequest')
          ..add(
            'organizationConfigRuleName',
            organizationConfigRuleName,
          );
    return helper.toString();
  }
}

class GetOrganizationCustomRulePolicyRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<GetOrganizationCustomRulePolicyRequest> {
  const GetOrganizationCustomRulePolicyRequestAwsJson11Serializer()
      : super('GetOrganizationCustomRulePolicyRequest');

  @override
  Iterable<Type> get types => const [
        GetOrganizationCustomRulePolicyRequest,
        _$GetOrganizationCustomRulePolicyRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  GetOrganizationCustomRulePolicyRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetOrganizationCustomRulePolicyRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OrganizationConfigRuleName':
          result.organizationConfigRuleName = (serializers.deserialize(
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
    GetOrganizationCustomRulePolicyRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final GetOrganizationCustomRulePolicyRequest(:organizationConfigRuleName) =
        object;
    result$.addAll([
      'OrganizationConfigRuleName',
      serializers.serialize(
        organizationConfigRuleName,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
