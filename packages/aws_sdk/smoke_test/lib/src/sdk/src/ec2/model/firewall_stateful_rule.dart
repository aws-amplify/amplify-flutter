// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.firewall_stateful_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart';

part 'firewall_stateful_rule.g.dart';

/// Describes a stateful rule.
abstract class FirewallStatefulRule
    with _i1.AWSEquatable<FirewallStatefulRule>
    implements Built<FirewallStatefulRule, FirewallStatefulRuleBuilder> {
  /// Describes a stateful rule.
  factory FirewallStatefulRule({
    String? ruleGroupArn,
    List<String>? sources,
    List<String>? destinations,
    List<PortRange>? sourcePorts,
    List<PortRange>? destinationPorts,
    String? protocol,
    String? ruleAction,
    String? direction,
  }) {
    return _$FirewallStatefulRule._(
      ruleGroupArn: ruleGroupArn,
      sources: sources == null ? null : _i2.BuiltList(sources),
      destinations: destinations == null ? null : _i2.BuiltList(destinations),
      sourcePorts: sourcePorts == null ? null : _i2.BuiltList(sourcePorts),
      destinationPorts:
          destinationPorts == null ? null : _i2.BuiltList(destinationPorts),
      protocol: protocol,
      ruleAction: ruleAction,
      direction: direction,
    );
  }

  /// Describes a stateful rule.
  factory FirewallStatefulRule.build(
          [void Function(FirewallStatefulRuleBuilder) updates]) =
      _$FirewallStatefulRule;

  const FirewallStatefulRule._();

  static const List<_i3.SmithySerializer<FirewallStatefulRule>> serializers = [
    FirewallStatefulRuleEc2QuerySerializer()
  ];

  /// The ARN of the stateful rule group.
  String? get ruleGroupArn;

  /// The source IP addresses, in CIDR notation.
  _i2.BuiltList<String>? get sources;

  /// The destination IP addresses, in CIDR notation.
  _i2.BuiltList<String>? get destinations;

  /// The source ports.
  _i2.BuiltList<PortRange>? get sourcePorts;

  /// The destination ports.
  _i2.BuiltList<PortRange>? get destinationPorts;

  /// The protocol.
  String? get protocol;

  /// The rule action. The possible values are `pass`, `drop`, and `alert`.
  String? get ruleAction;

  /// The direction. The possible values are `FORWARD` and `ANY`.
  String? get direction;
  @override
  List<Object?> get props => [
        ruleGroupArn,
        sources,
        destinations,
        sourcePorts,
        destinationPorts,
        protocol,
        ruleAction,
        direction,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FirewallStatefulRule')
      ..add(
        'ruleGroupArn',
        ruleGroupArn,
      )
      ..add(
        'sources',
        sources,
      )
      ..add(
        'destinations',
        destinations,
      )
      ..add(
        'sourcePorts',
        sourcePorts,
      )
      ..add(
        'destinationPorts',
        destinationPorts,
      )
      ..add(
        'protocol',
        protocol,
      )
      ..add(
        'ruleAction',
        ruleAction,
      )
      ..add(
        'direction',
        direction,
      );
    return helper.toString();
  }
}

class FirewallStatefulRuleEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<FirewallStatefulRule> {
  const FirewallStatefulRuleEc2QuerySerializer()
      : super('FirewallStatefulRule');

  @override
  Iterable<Type> get types => const [
        FirewallStatefulRule,
        _$FirewallStatefulRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FirewallStatefulRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FirewallStatefulRuleBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ruleGroupArn':
          result.ruleGroupArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sourceSet':
          result.sources.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'destinationSet':
          result.destinations.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'sourcePortSet':
          result.sourcePorts.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PortRange)],
            ),
          ) as _i2.BuiltList<PortRange>));
        case 'destinationPortSet':
          result.destinationPorts.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PortRange)],
            ),
          ) as _i2.BuiltList<PortRange>));
        case 'protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ruleAction':
          result.ruleAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'direction':
          result.direction = (serializers.deserialize(
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
    FirewallStatefulRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'FirewallStatefulRuleResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FirewallStatefulRule(
      :ruleGroupArn,
      :sources,
      :destinations,
      :sourcePorts,
      :destinationPorts,
      :protocol,
      :ruleAction,
      :direction
    ) = object;
    if (ruleGroupArn != null) {
      result$
        ..add(const _i3.XmlElementName('RuleGroupArn'))
        ..add(serializers.serialize(
          ruleGroupArn,
          specifiedType: const FullType(String),
        ));
    }
    if (sources != null) {
      result$
        ..add(const _i3.XmlElementName('SourceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          sources,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (destinations != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          destinations,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (sourcePorts != null) {
      result$
        ..add(const _i3.XmlElementName('SourcePortSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          sourcePorts,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PortRange)],
          ),
        ));
    }
    if (destinationPorts != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationPortSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          destinationPorts,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PortRange)],
          ),
        ));
    }
    if (protocol != null) {
      result$
        ..add(const _i3.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType: const FullType(String),
        ));
    }
    if (ruleAction != null) {
      result$
        ..add(const _i3.XmlElementName('RuleAction'))
        ..add(serializers.serialize(
          ruleAction,
          specifiedType: const FullType(String),
        ));
    }
    if (direction != null) {
      result$
        ..add(const _i3.XmlElementName('Direction'))
        ..add(serializers.serialize(
          direction,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
