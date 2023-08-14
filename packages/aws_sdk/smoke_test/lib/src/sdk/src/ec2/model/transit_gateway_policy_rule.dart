// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_policy_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_rule_meta_data.dart';

part 'transit_gateway_policy_rule.g.dart';

/// Describes a rule associated with a transit gateway policy.
abstract class TransitGatewayPolicyRule
    with _i1.AWSEquatable<TransitGatewayPolicyRule>
    implements
        Built<TransitGatewayPolicyRule, TransitGatewayPolicyRuleBuilder> {
  /// Describes a rule associated with a transit gateway policy.
  factory TransitGatewayPolicyRule({
    String? sourceCidrBlock,
    String? sourcePortRange,
    String? destinationCidrBlock,
    String? destinationPortRange,
    String? protocol,
    TransitGatewayPolicyRuleMetaData? metaData,
  }) {
    return _$TransitGatewayPolicyRule._(
      sourceCidrBlock: sourceCidrBlock,
      sourcePortRange: sourcePortRange,
      destinationCidrBlock: destinationCidrBlock,
      destinationPortRange: destinationPortRange,
      protocol: protocol,
      metaData: metaData,
    );
  }

  /// Describes a rule associated with a transit gateway policy.
  factory TransitGatewayPolicyRule.build(
          [void Function(TransitGatewayPolicyRuleBuilder) updates]) =
      _$TransitGatewayPolicyRule;

  const TransitGatewayPolicyRule._();

  static const List<_i2.SmithySerializer<TransitGatewayPolicyRule>>
      serializers = [TransitGatewayPolicyRuleEc2QuerySerializer()];

  /// The source CIDR block for the transit gateway policy rule.
  String? get sourceCidrBlock;

  /// The port range for the transit gateway policy rule. Currently this is set to * (all).
  String? get sourcePortRange;

  /// The destination CIDR block for the transit gateway policy rule.
  String? get destinationCidrBlock;

  /// The port range for the transit gateway policy rule. Currently this is set to * (all).
  String? get destinationPortRange;

  /// The protocol used by the transit gateway policy rule.
  String? get protocol;

  /// The meta data tags used for the transit gateway policy rule.
  TransitGatewayPolicyRuleMetaData? get metaData;
  @override
  List<Object?> get props => [
        sourceCidrBlock,
        sourcePortRange,
        destinationCidrBlock,
        destinationPortRange,
        protocol,
        metaData,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayPolicyRule')
      ..add(
        'sourceCidrBlock',
        sourceCidrBlock,
      )
      ..add(
        'sourcePortRange',
        sourcePortRange,
      )
      ..add(
        'destinationCidrBlock',
        destinationCidrBlock,
      )
      ..add(
        'destinationPortRange',
        destinationPortRange,
      )
      ..add(
        'protocol',
        protocol,
      )
      ..add(
        'metaData',
        metaData,
      );
    return helper.toString();
  }
}

class TransitGatewayPolicyRuleEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TransitGatewayPolicyRule> {
  const TransitGatewayPolicyRuleEc2QuerySerializer()
      : super('TransitGatewayPolicyRule');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPolicyRule,
        _$TransitGatewayPolicyRule,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPolicyRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPolicyRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'sourceCidrBlock':
          result.sourceCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sourcePortRange':
          result.sourcePortRange = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destinationCidrBlock':
          result.destinationCidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destinationPortRange':
          result.destinationPortRange = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'metaData':
          result.metaData.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayPolicyRuleMetaData),
          ) as TransitGatewayPolicyRuleMetaData));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    TransitGatewayPolicyRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayPolicyRuleResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayPolicyRule(
      :sourceCidrBlock,
      :sourcePortRange,
      :destinationCidrBlock,
      :destinationPortRange,
      :protocol,
      :metaData
    ) = object;
    if (sourceCidrBlock != null) {
      result$
        ..add(const _i2.XmlElementName('SourceCidrBlock'))
        ..add(serializers.serialize(
          sourceCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (sourcePortRange != null) {
      result$
        ..add(const _i2.XmlElementName('SourcePortRange'))
        ..add(serializers.serialize(
          sourcePortRange,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationCidrBlock != null) {
      result$
        ..add(const _i2.XmlElementName('DestinationCidrBlock'))
        ..add(serializers.serialize(
          destinationCidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (destinationPortRange != null) {
      result$
        ..add(const _i2.XmlElementName('DestinationPortRange'))
        ..add(serializers.serialize(
          destinationPortRange,
          specifiedType: const FullType(String),
        ));
    }
    if (protocol != null) {
      result$
        ..add(const _i2.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType: const FullType(String),
        ));
    }
    if (metaData != null) {
      result$
        ..add(const _i2.XmlElementName('MetaData'))
        ..add(serializers.serialize(
          metaData,
          specifiedType: const FullType(TransitGatewayPolicyRuleMetaData),
        ));
    }
    return result$;
  }
}
