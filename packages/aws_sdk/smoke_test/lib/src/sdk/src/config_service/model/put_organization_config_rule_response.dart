// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const List<_i2.SmithySerializer> serializers = [
    PutOrganizationConfigRuleResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutOrganizationConfigRuleResponseBuilder b) {}

  /// The Amazon Resource Name (ARN) of an organization Config rule.
  String? get organizationConfigRuleArn;
  @override
  List<Object?> get props => [organizationConfigRuleArn];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutOrganizationConfigRuleResponse');
    helper.add(
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
      switch (key) {
        case 'OrganizationConfigRuleArn':
          if (value != null) {
            result.organizationConfigRuleArn = (serializers.deserialize(
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
    final payload = (object as PutOrganizationConfigRuleResponse);
    final result = <Object?>[];
    if (payload.organizationConfigRuleArn != null) {
      result
        ..add('OrganizationConfigRuleArn')
        ..add(serializers.serialize(
          payload.organizationConfigRuleArn!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
