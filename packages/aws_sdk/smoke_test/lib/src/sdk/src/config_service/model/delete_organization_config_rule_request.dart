// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.delete_organization_config_rule_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_organization_config_rule_request.g.dart';

abstract class DeleteOrganizationConfigRuleRequest
    with
        _i1.HttpInput<DeleteOrganizationConfigRuleRequest>,
        _i2.AWSEquatable<DeleteOrganizationConfigRuleRequest>
    implements
        Built<DeleteOrganizationConfigRuleRequest,
            DeleteOrganizationConfigRuleRequestBuilder> {
  factory DeleteOrganizationConfigRuleRequest(
      {required String organizationConfigRuleName}) {
    return _$DeleteOrganizationConfigRuleRequest._(
        organizationConfigRuleName: organizationConfigRuleName);
  }

  factory DeleteOrganizationConfigRuleRequest.build(
          [void Function(DeleteOrganizationConfigRuleRequestBuilder) updates]) =
      _$DeleteOrganizationConfigRuleRequest;

  const DeleteOrganizationConfigRuleRequest._();

  factory DeleteOrganizationConfigRuleRequest.fromRequest(
    DeleteOrganizationConfigRuleRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteOrganizationConfigRuleRequest>>
      serializers = [DeleteOrganizationConfigRuleRequestAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteOrganizationConfigRuleRequestBuilder b) {}

  /// The name of organization Config rule that you want to delete.
  String get organizationConfigRuleName;
  @override
  DeleteOrganizationConfigRuleRequest getPayload() => this;
  @override
  List<Object?> get props => [organizationConfigRuleName];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeleteOrganizationConfigRuleRequest')
          ..add(
            'organizationConfigRuleName',
            organizationConfigRuleName,
          );
    return helper.toString();
  }
}

class DeleteOrganizationConfigRuleRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DeleteOrganizationConfigRuleRequest> {
  const DeleteOrganizationConfigRuleRequestAwsJson11Serializer()
      : super('DeleteOrganizationConfigRuleRequest');

  @override
  Iterable<Type> get types => const [
        DeleteOrganizationConfigRuleRequest,
        _$DeleteOrganizationConfigRuleRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DeleteOrganizationConfigRuleRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteOrganizationConfigRuleRequestBuilder();
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
    DeleteOrganizationConfigRuleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DeleteOrganizationConfigRuleRequest(:organizationConfigRuleName) =
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
