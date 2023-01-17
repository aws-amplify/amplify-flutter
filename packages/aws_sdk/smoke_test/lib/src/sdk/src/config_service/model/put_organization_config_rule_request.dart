// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.put_organization_config_rule_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_custom_policy_rule_metadata.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_custom_rule_metadata.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/organization_managed_rule_metadata.dart'
    as _i5;

part 'put_organization_config_rule_request.g.dart';

abstract class PutOrganizationConfigRuleRequest
    with
        _i1.HttpInput<PutOrganizationConfigRuleRequest>,
        _i2.AWSEquatable<PutOrganizationConfigRuleRequest>
    implements
        Built<PutOrganizationConfigRuleRequest,
            PutOrganizationConfigRuleRequestBuilder> {
  factory PutOrganizationConfigRuleRequest({
    List<String>? excludedAccounts,
    required String organizationConfigRuleName,
    _i3.OrganizationCustomPolicyRuleMetadata?
        organizationCustomPolicyRuleMetadata,
    _i4.OrganizationCustomRuleMetadata? organizationCustomRuleMetadata,
    _i5.OrganizationManagedRuleMetadata? organizationManagedRuleMetadata,
  }) {
    return _$PutOrganizationConfigRuleRequest._(
      excludedAccounts:
          excludedAccounts == null ? null : _i6.BuiltList(excludedAccounts),
      organizationConfigRuleName: organizationConfigRuleName,
      organizationCustomPolicyRuleMetadata:
          organizationCustomPolicyRuleMetadata,
      organizationCustomRuleMetadata: organizationCustomRuleMetadata,
      organizationManagedRuleMetadata: organizationManagedRuleMetadata,
    );
  }

  factory PutOrganizationConfigRuleRequest.build(
          [void Function(PutOrganizationConfigRuleRequestBuilder) updates]) =
      _$PutOrganizationConfigRuleRequest;

  const PutOrganizationConfigRuleRequest._();

  factory PutOrganizationConfigRuleRequest.fromRequest(
    PutOrganizationConfigRuleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    PutOrganizationConfigRuleRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutOrganizationConfigRuleRequestBuilder b) {}

  /// A comma-separated list of accounts that you want to exclude from an organization Config rule.
  _i6.BuiltList<String>? get excludedAccounts;

  /// The name that you assign to an organization Config rule.
  String get organizationConfigRuleName;

  /// An `OrganizationCustomPolicyRuleMetadata` object. This object specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have debug logging enabled, and other custom rule metadata, such as resource type, resource ID of Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.
  _i3.OrganizationCustomPolicyRuleMetadata?
      get organizationCustomPolicyRuleMetadata;

  /// An `OrganizationCustomRuleMetadata` object. This object specifies organization custom rule metadata such as resource type, resource ID of Amazon Web Services resource, Lambda function ARN, and organization trigger types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.
  _i4.OrganizationCustomRuleMetadata? get organizationCustomRuleMetadata;

  /// An `OrganizationManagedRuleMetadata` object. This object specifies organization managed rule metadata such as resource type and ID of Amazon Web Services resource along with the rule identifier. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.
  _i5.OrganizationManagedRuleMetadata? get organizationManagedRuleMetadata;
  @override
  PutOrganizationConfigRuleRequest getPayload() => this;
  @override
  List<Object?> get props => [
        excludedAccounts,
        organizationConfigRuleName,
        organizationCustomPolicyRuleMetadata,
        organizationCustomRuleMetadata,
        organizationManagedRuleMetadata,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutOrganizationConfigRuleRequest');
    helper.add(
      'excludedAccounts',
      excludedAccounts,
    );
    helper.add(
      'organizationConfigRuleName',
      organizationConfigRuleName,
    );
    helper.add(
      'organizationCustomPolicyRuleMetadata',
      organizationCustomPolicyRuleMetadata,
    );
    helper.add(
      'organizationCustomRuleMetadata',
      organizationCustomRuleMetadata,
    );
    helper.add(
      'organizationManagedRuleMetadata',
      organizationManagedRuleMetadata,
    );
    return helper.toString();
  }
}

class PutOrganizationConfigRuleRequestAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<PutOrganizationConfigRuleRequest> {
  const PutOrganizationConfigRuleRequestAwsJson11Serializer()
      : super('PutOrganizationConfigRuleRequest');

  @override
  Iterable<Type> get types => const [
        PutOrganizationConfigRuleRequest,
        _$PutOrganizationConfigRuleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutOrganizationConfigRuleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutOrganizationConfigRuleRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ExcludedAccounts':
          if (value != null) {
            result.excludedAccounts.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'OrganizationConfigRuleName':
          result.organizationConfigRuleName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'OrganizationCustomPolicyRuleMetadata':
          if (value != null) {
            result.organizationCustomPolicyRuleMetadata
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i3.OrganizationCustomPolicyRuleMetadata),
            ) as _i3.OrganizationCustomPolicyRuleMetadata));
          }
          break;
        case 'OrganizationCustomRuleMetadata':
          if (value != null) {
            result.organizationCustomRuleMetadata
                .replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.OrganizationCustomRuleMetadata),
            ) as _i4.OrganizationCustomRuleMetadata));
          }
          break;
        case 'OrganizationManagedRuleMetadata':
          if (value != null) {
            result.organizationManagedRuleMetadata
                .replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i5.OrganizationManagedRuleMetadata),
            ) as _i5.OrganizationManagedRuleMetadata));
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
    final payload = (object as PutOrganizationConfigRuleRequest);
    final result = <Object?>[
      'OrganizationConfigRuleName',
      serializers.serialize(
        payload.organizationConfigRuleName,
        specifiedType: const FullType(String),
      ),
    ];
    if (payload.excludedAccounts != null) {
      result
        ..add('ExcludedAccounts')
        ..add(serializers.serialize(
          payload.excludedAccounts!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.organizationCustomPolicyRuleMetadata != null) {
      result
        ..add('OrganizationCustomPolicyRuleMetadata')
        ..add(serializers.serialize(
          payload.organizationCustomPolicyRuleMetadata!,
          specifiedType:
              const FullType(_i3.OrganizationCustomPolicyRuleMetadata),
        ));
    }
    if (payload.organizationCustomRuleMetadata != null) {
      result
        ..add('OrganizationCustomRuleMetadata')
        ..add(serializers.serialize(
          payload.organizationCustomRuleMetadata!,
          specifiedType: const FullType(_i4.OrganizationCustomRuleMetadata),
        ));
    }
    if (payload.organizationManagedRuleMetadata != null) {
      result
        ..add('OrganizationManagedRuleMetadata')
        ..add(serializers.serialize(
          payload.organizationManagedRuleMetadata!,
          specifiedType: const FullType(_i5.OrganizationManagedRuleMetadata),
        ));
    }
    return result;
  }
}
