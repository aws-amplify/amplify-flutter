// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.transit_gateway_policy_table_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_rule.dart';

part 'transit_gateway_policy_table_entry.g.dart';

/// Describes a transit gateway policy table entry
abstract class TransitGatewayPolicyTableEntry
    with
        _i1.AWSEquatable<TransitGatewayPolicyTableEntry>
    implements
        Built<TransitGatewayPolicyTableEntry,
            TransitGatewayPolicyTableEntryBuilder> {
  /// Describes a transit gateway policy table entry
  factory TransitGatewayPolicyTableEntry({
    String? policyRuleNumber,
    TransitGatewayPolicyRule? policyRule,
    String? targetRouteTableId,
  }) {
    return _$TransitGatewayPolicyTableEntry._(
      policyRuleNumber: policyRuleNumber,
      policyRule: policyRule,
      targetRouteTableId: targetRouteTableId,
    );
  }

  /// Describes a transit gateway policy table entry
  factory TransitGatewayPolicyTableEntry.build(
          [void Function(TransitGatewayPolicyTableEntryBuilder) updates]) =
      _$TransitGatewayPolicyTableEntry;

  const TransitGatewayPolicyTableEntry._();

  static const List<_i2.SmithySerializer<TransitGatewayPolicyTableEntry>>
      serializers = [TransitGatewayPolicyTableEntryEc2QuerySerializer()];

  /// The rule number for the transit gateway policy table entry.
  String? get policyRuleNumber;

  /// The policy rule associated with the transit gateway policy table.
  TransitGatewayPolicyRule? get policyRule;

  /// The ID of the target route table.
  String? get targetRouteTableId;
  @override
  List<Object?> get props => [
        policyRuleNumber,
        policyRule,
        targetRouteTableId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TransitGatewayPolicyTableEntry')
      ..add(
        'policyRuleNumber',
        policyRuleNumber,
      )
      ..add(
        'policyRule',
        policyRule,
      )
      ..add(
        'targetRouteTableId',
        targetRouteTableId,
      );
    return helper.toString();
  }
}

class TransitGatewayPolicyTableEntryEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<TransitGatewayPolicyTableEntry> {
  const TransitGatewayPolicyTableEntryEc2QuerySerializer()
      : super('TransitGatewayPolicyTableEntry');

  @override
  Iterable<Type> get types => const [
        TransitGatewayPolicyTableEntry,
        _$TransitGatewayPolicyTableEntry,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TransitGatewayPolicyTableEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransitGatewayPolicyTableEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'policyRuleNumber':
          result.policyRuleNumber = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'policyRule':
          result.policyRule.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayPolicyRule),
          ) as TransitGatewayPolicyRule));
        case 'targetRouteTableId':
          result.targetRouteTableId = (serializers.deserialize(
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
    TransitGatewayPolicyTableEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TransitGatewayPolicyTableEntryResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TransitGatewayPolicyTableEntry(
      :policyRuleNumber,
      :policyRule,
      :targetRouteTableId
    ) = object;
    if (policyRuleNumber != null) {
      result$
        ..add(const _i2.XmlElementName('PolicyRuleNumber'))
        ..add(serializers.serialize(
          policyRuleNumber,
          specifiedType: const FullType(String),
        ));
    }
    if (policyRule != null) {
      result$
        ..add(const _i2.XmlElementName('PolicyRule'))
        ..add(serializers.serialize(
          policyRule,
          specifiedType: const FullType(TransitGatewayPolicyRule),
        ));
    }
    if (targetRouteTableId != null) {
      result$
        ..add(const _i2.XmlElementName('TargetRouteTableId'))
        ..add(serializers.serialize(
          targetRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
