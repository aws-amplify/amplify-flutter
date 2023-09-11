// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.network_acl_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/icmp_type_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/rule_action.dart';

part 'network_acl_entry.g.dart';

/// Describes an entry in a network ACL.
abstract class NetworkAclEntry
    with _i1.AWSEquatable<NetworkAclEntry>
    implements Built<NetworkAclEntry, NetworkAclEntryBuilder> {
  /// Describes an entry in a network ACL.
  factory NetworkAclEntry({
    String? cidrBlock,
    bool? egress,
    IcmpTypeCode? icmpTypeCode,
    String? ipv6CidrBlock,
    PortRange? portRange,
    String? protocol,
    RuleAction? ruleAction,
    int? ruleNumber,
  }) {
    egress ??= false;
    ruleNumber ??= 0;
    return _$NetworkAclEntry._(
      cidrBlock: cidrBlock,
      egress: egress,
      icmpTypeCode: icmpTypeCode,
      ipv6CidrBlock: ipv6CidrBlock,
      portRange: portRange,
      protocol: protocol,
      ruleAction: ruleAction,
      ruleNumber: ruleNumber,
    );
  }

  /// Describes an entry in a network ACL.
  factory NetworkAclEntry.build(
      [void Function(NetworkAclEntryBuilder) updates]) = _$NetworkAclEntry;

  const NetworkAclEntry._();

  static const List<_i2.SmithySerializer<NetworkAclEntry>> serializers = [
    NetworkAclEntryEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(NetworkAclEntryBuilder b) {
    b
      ..egress = false
      ..ruleNumber = 0;
  }

  /// The IPv4 network range to allow or deny, in CIDR notation.
  String? get cidrBlock;

  /// Indicates whether the rule is an egress rule (applied to traffic leaving the subnet).
  bool get egress;

  /// ICMP protocol: The ICMP type and code.
  IcmpTypeCode? get icmpTypeCode;

  /// The IPv6 network range to allow or deny, in CIDR notation.
  String? get ipv6CidrBlock;

  /// TCP or UDP protocols: The range of ports the rule applies to.
  PortRange? get portRange;

  /// The protocol number. A value of "-1" means all protocols.
  String? get protocol;

  /// Indicates whether to allow or deny the traffic that matches the rule.
  RuleAction? get ruleAction;

  /// The rule number for the entry. ACL entries are processed in ascending order by rule number.
  int get ruleNumber;
  @override
  List<Object?> get props => [
        cidrBlock,
        egress,
        icmpTypeCode,
        ipv6CidrBlock,
        portRange,
        protocol,
        ruleAction,
        ruleNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NetworkAclEntry')
      ..add(
        'cidrBlock',
        cidrBlock,
      )
      ..add(
        'egress',
        egress,
      )
      ..add(
        'icmpTypeCode',
        icmpTypeCode,
      )
      ..add(
        'ipv6CidrBlock',
        ipv6CidrBlock,
      )
      ..add(
        'portRange',
        portRange,
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
        'ruleNumber',
        ruleNumber,
      );
    return helper.toString();
  }
}

class NetworkAclEntryEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<NetworkAclEntry> {
  const NetworkAclEntryEc2QuerySerializer() : super('NetworkAclEntry');

  @override
  Iterable<Type> get types => const [
        NetworkAclEntry,
        _$NetworkAclEntry,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NetworkAclEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NetworkAclEntryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'cidrBlock':
          result.cidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'egress':
          result.egress = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'icmpTypeCode':
          result.icmpTypeCode.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IcmpTypeCode),
          ) as IcmpTypeCode));
        case 'ipv6CidrBlock':
          result.ipv6CidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'portRange':
          result.portRange.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PortRange),
          ) as PortRange));
        case 'protocol':
          result.protocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ruleAction':
          result.ruleAction = (serializers.deserialize(
            value,
            specifiedType: const FullType(RuleAction),
          ) as RuleAction);
        case 'ruleNumber':
          result.ruleNumber = (serializers.deserialize(
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
    NetworkAclEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'NetworkAclEntryResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NetworkAclEntry(
      :cidrBlock,
      :egress,
      :icmpTypeCode,
      :ipv6CidrBlock,
      :portRange,
      :protocol,
      :ruleAction,
      :ruleNumber
    ) = object;
    if (cidrBlock != null) {
      result$
        ..add(const _i2.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          cidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Egress'))
      ..add(serializers.serialize(
        egress,
        specifiedType: const FullType(bool),
      ));
    if (icmpTypeCode != null) {
      result$
        ..add(const _i2.XmlElementName('IcmpTypeCode'))
        ..add(serializers.serialize(
          icmpTypeCode,
          specifiedType: const FullType(IcmpTypeCode),
        ));
    }
    if (ipv6CidrBlock != null) {
      result$
        ..add(const _i2.XmlElementName('Ipv6CidrBlock'))
        ..add(serializers.serialize(
          ipv6CidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (portRange != null) {
      result$
        ..add(const _i2.XmlElementName('PortRange'))
        ..add(serializers.serialize(
          portRange,
          specifiedType: const FullType(PortRange),
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
    if (ruleAction != null) {
      result$
        ..add(const _i2.XmlElementName('RuleAction'))
        ..add(serializers.serialize(
          ruleAction,
          specifiedType: const FullType(RuleAction),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('RuleNumber'))
      ..add(serializers.serialize(
        ruleNumber,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
