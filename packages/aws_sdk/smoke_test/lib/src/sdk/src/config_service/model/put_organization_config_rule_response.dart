// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.put_organization_config_rule_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'put_organization_config_rule_response.g.dart';

abstract class PutOrganizationConfigRuleResponse
    with
        _i1.AWSEquatable<PutOrganizationConfigRuleResponse>
    implements
        Built<PutOrganizationConfigRuleResponse,
            PutOrganizationConfigRuleResponseBuilder> {
  factory PutOrganizationConfigRuleResponse(
      {String? organizationConfigRuleArn}) {
    return _$PutOrganizationConfigRuleResponse._(
        organizationConfigRuleArn: organizationConfigRuleArn);
  }

  factory PutOrganizationConfigRuleResponse.build(
          [void Function(PutOrganizationConfigRuleResponseBuilder) updates]) =
      _$PutOrganizationConfigRuleResponse;

  const PutOrganizationConfigRuleResponse._();

  /// Constructs a [PutOrganizationConfigRuleResponse] from a [payload] and [response].
  factory PutOrganizationConfigRuleResponse.fromResponse(
    PutOrganizationConfigRuleResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<PutOrganizationConfigRuleResponse>>
      serializers = [PutOrganizationConfigRuleResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutOrganizationConfigRuleResponseBuilder b) {}

  /// The Amazon Resource Name (ARN) of an organization Config rule.
  String? get organizationConfigRuleArn;
  @override
  List<Object?> get props => [organizationConfigRuleArn];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutOrganizationConfigRuleResponse')
          ..add(
            'organizationConfigRuleArn',
            organizationConfigRuleArn,
          );
    return helper.toString();
  }
}

class PutOrganizationConfigRuleResponseAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<PutOrganizationConfigRuleResponse> {
  const PutOrganizationConfigRuleResponseAwsJson11Serializer()
      : super('PutOrganizationConfigRuleResponse');

  @override
  Iterable<Type> get types => const [
        PutOrganizationConfigRuleResponse,
        _$PutOrganizationConfigRuleResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutOrganizationConfigRuleResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutOrganizationConfigRuleResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OrganizationConfigRuleArn':
          result.organizationConfigRuleArn = (serializers.deserialize(
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
    PutOrganizationConfigRuleResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutOrganizationConfigRuleResponse(:organizationConfigRuleArn) =
        object;
    if (organizationConfigRuleArn != null) {
      result$
        ..add('OrganizationConfigRuleArn')
        ..add(serializers.serialize(
          organizationConfigRuleArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
