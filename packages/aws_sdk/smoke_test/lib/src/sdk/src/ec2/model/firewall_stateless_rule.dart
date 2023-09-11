// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.firewall_stateless_rule; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart';

part 'firewall_stateless_rule.g.dart';

/// Describes a stateless rule.
abstract class FirewallStatelessRule
    with _i1.AWSEquatable<FirewallStatelessRule>
    implements Built<FirewallStatelessRule, FirewallStatelessRuleBuilder> {
  /// Describes a stateless rule.
  factory FirewallStatelessRule({
    String? ruleGroupArn,
    List<String>? sources,
    List<String>? destinations,
    List<PortRange>? sourcePorts,
    List<PortRange>? destinationPorts,
    List<int>? protocols,
    String? ruleAction,
    int? priority,
  }) {
    priority ??= 0;
    return _$FirewallStatelessRule._(
      ruleGroupArn: ruleGroupArn,
      sources: sources == null ? null : _i2.BuiltList(sources),
      destinations: destinations == null ? null : _i2.BuiltList(destinations),
      sourcePorts: sourcePorts == null ? null : _i2.BuiltList(sourcePorts),
      destinationPorts:
          destinationPorts == null ? null : _i2.BuiltList(destinationPorts),
      protocols: protocols == null ? null : _i2.BuiltList(protocols),
      ruleAction: ruleAction,
      priority: priority,
    );
  }

  /// Describes a stateless rule.
  factory FirewallStatelessRule.build(
          [void Function(FirewallStatelessRuleBuilder) updates]) =
      _$FirewallStatelessRule;

  const FirewallStatelessRule._();

  static const List<_i3.SmithySerializer<FirewallStatelessRule>> serializers = [
    FirewallStatelessRuleEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FirewallStatelessRuleBuilder b) {
    b.priority = 0;
  }

  /// The ARN of the stateless rule group.
  String? get ruleGroupArn;

  /// The source IP addresses, in CIDR notation.
  _i2.BuiltList<String>? get sources;

  /// The destination IP addresses, in CIDR notation.
  _i2.BuiltList<String>? get destinations;

  /// The source ports.
  _i2.BuiltList<PortRange>? get sourcePorts;

  /// The destination ports.
  _i2.BuiltList<PortRange>? get destinationPorts;

  /// The protocols.
  _i2.BuiltList<int>? get protocols;

  /// The rule action. The possible values are `pass`, `drop`, and `forward\_to\_site`.
  String? get ruleAction;

  /// The rule priority.
  int get priority;
  @override
  List<Object?> get props => [
        ruleGroupArn,
        sources,
        destinations,
        sourcePorts,
        destinationPorts,
        protocols,
        ruleAction,
        priority,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FirewallStatelessRule')
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
        'protocols',
        protocols,
      )
      ..add(
        'ruleAction',
        ruleAction,
      )
      ..add(
        'priority',
        priority,
      );
    return helper.toString();
  }
}

class FirewallStatelessRuleEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<FirewallStatelessRule> {
  const FirewallStatelessRuleEc2QuerySerializer()
      : super('FirewallStatelessRule');

  @override
  Iterable<Type> get types => const [
        FirewallStatelessRule,
        _$FirewallStatelessRule,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FirewallStatelessRule deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FirewallStatelessRuleBuilder();
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
        case 'protocolSet':
          result.protocols.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(int)],
            ),
          ) as _i2.BuiltList<int>));
        case 'ruleAction':
          result.ruleAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'priority':
          result.priority = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FirewallStatelessRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'FirewallStatelessRuleResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FirewallStatelessRule(
      :ruleGroupArn,
      :sources,
      :destinations,
      :sourcePorts,
      :destinationPorts,
      :protocols,
      :ruleAction,
      :priority
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
          specifiedType: const FullType(
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
          specifiedType: const FullType(
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
          specifiedType: const FullType(
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(PortRange)],
          ),
        ));
    }
    if (protocols != null) {
      result$
        ..add(const _i3.XmlElementName('ProtocolSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          protocols,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(int)],
          ),
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
    result$
      ..add(const _i3.XmlElementName('Priority'))
      ..add(serializers.serialize(
        priority,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
