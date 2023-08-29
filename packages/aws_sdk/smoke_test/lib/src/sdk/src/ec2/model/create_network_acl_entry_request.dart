// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_network_acl_entry_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/icmp_type_code.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/rule_action.dart';

part 'create_network_acl_entry_request.g.dart';

abstract class CreateNetworkAclEntryRequest
    with
        _i1.HttpInput<CreateNetworkAclEntryRequest>,
        _i2.AWSEquatable<CreateNetworkAclEntryRequest>
    implements
        Built<CreateNetworkAclEntryRequest,
            CreateNetworkAclEntryRequestBuilder> {
  factory CreateNetworkAclEntryRequest({
    String? cidrBlock,
    bool? dryRun,
    bool? egress,
    IcmpTypeCode? icmpTypeCode,
    String? ipv6CidrBlock,
    String? networkAclId,
    PortRange? portRange,
    String? protocol,
    RuleAction? ruleAction,
    int? ruleNumber,
  }) {
    dryRun ??= false;
    egress ??= false;
    ruleNumber ??= 0;
    return _$CreateNetworkAclEntryRequest._(
      cidrBlock: cidrBlock,
      dryRun: dryRun,
      egress: egress,
      icmpTypeCode: icmpTypeCode,
      ipv6CidrBlock: ipv6CidrBlock,
      networkAclId: networkAclId,
      portRange: portRange,
      protocol: protocol,
      ruleAction: ruleAction,
      ruleNumber: ruleNumber,
    );
  }

  factory CreateNetworkAclEntryRequest.build(
          [void Function(CreateNetworkAclEntryRequestBuilder) updates]) =
      _$CreateNetworkAclEntryRequest;

  const CreateNetworkAclEntryRequest._();

  factory CreateNetworkAclEntryRequest.fromRequest(
    CreateNetworkAclEntryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateNetworkAclEntryRequest>>
      serializers = [CreateNetworkAclEntryRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNetworkAclEntryRequestBuilder b) {
    b
      ..dryRun = false
      ..egress = false
      ..ruleNumber = 0;
  }

  /// The IPv4 network range to allow or deny, in CIDR notation (for example `172.16.0.0/24`). We modify the specified CIDR block to its canonical form; for example, if you specify `100.68.0.18/18`, we modify it to `100.68.0.0/18`.
  String? get cidrBlock;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet).
  bool get egress;

  /// ICMP protocol: The ICMP or ICMPv6 type and code. Required if specifying protocol 1 (ICMP) or protocol 58 (ICMPv6) with an IPv6 CIDR block.
  IcmpTypeCode? get icmpTypeCode;

  /// The IPv6 network range to allow or deny, in CIDR notation (for example `2001:db8:1234:1a00::/64`).
  String? get ipv6CidrBlock;

  /// The ID of the network ACL.
  String? get networkAclId;

  /// TCP or UDP protocols: The range of ports the rule applies to. Required if specifying protocol 6 (TCP) or 17 (UDP).
  PortRange? get portRange;

  /// The protocol number. A value of "-1" means all protocols. If you specify "-1" or a protocol number other than "6" (TCP), "17" (UDP), or "1" (ICMP), traffic on all ports is allowed, regardless of any ports or ICMP types or codes that you specify. If you specify protocol "58" (ICMPv6) and specify an IPv4 CIDR block, traffic for all ICMP types and codes allowed, regardless of any that you specify. If you specify protocol "58" (ICMPv6) and specify an IPv6 CIDR block, you must specify an ICMP type and code.
  String? get protocol;

  /// Indicates whether to allow or deny the traffic that matches the rule.
  RuleAction? get ruleAction;

  /// The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number.
  ///
  /// Constraints: Positive integer from 1 to 32766. The range 32767 to 65535 is reserved for internal use.
  int get ruleNumber;
  @override
  CreateNetworkAclEntryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        cidrBlock,
        dryRun,
        egress,
        icmpTypeCode,
        ipv6CidrBlock,
        networkAclId,
        portRange,
        protocol,
        ruleAction,
        ruleNumber,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateNetworkAclEntryRequest')
      ..add(
        'cidrBlock',
        cidrBlock,
      )
      ..add(
        'dryRun',
        dryRun,
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
        'networkAclId',
        networkAclId,
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

class CreateNetworkAclEntryRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateNetworkAclEntryRequest> {
  const CreateNetworkAclEntryRequestEc2QuerySerializer()
      : super('CreateNetworkAclEntryRequest');

  @override
  Iterable<Type> get types => const [
        CreateNetworkAclEntryRequest,
        _$CreateNetworkAclEntryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNetworkAclEntryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNetworkAclEntryRequestBuilder();
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
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'egress':
          result.egress = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Icmp':
          result.icmpTypeCode.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IcmpTypeCode),
          ) as IcmpTypeCode));
        case 'ipv6CidrBlock':
          result.ipv6CidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkAclId':
          result.networkAclId = (serializers.deserialize(
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
    CreateNetworkAclEntryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateNetworkAclEntryRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateNetworkAclEntryRequest(
      :cidrBlock,
      :dryRun,
      :egress,
      :icmpTypeCode,
      :ipv6CidrBlock,
      :networkAclId,
      :portRange,
      :protocol,
      :ruleAction,
      :ruleNumber
    ) = object;
    if (cidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          cidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('Egress'))
      ..add(serializers.serialize(
        egress,
        specifiedType: const FullType(bool),
      ));
    if (icmpTypeCode != null) {
      result$
        ..add(const _i1.XmlElementName('Icmp'))
        ..add(serializers.serialize(
          icmpTypeCode,
          specifiedType: const FullType(IcmpTypeCode),
        ));
    }
    if (ipv6CidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv6CidrBlock'))
        ..add(serializers.serialize(
          ipv6CidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (networkAclId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkAclId'))
        ..add(serializers.serialize(
          networkAclId,
          specifiedType: const FullType(String),
        ));
    }
    if (portRange != null) {
      result$
        ..add(const _i1.XmlElementName('PortRange'))
        ..add(serializers.serialize(
          portRange,
          specifiedType: const FullType(PortRange),
        ));
    }
    if (protocol != null) {
      result$
        ..add(const _i1.XmlElementName('Protocol'))
        ..add(serializers.serialize(
          protocol,
          specifiedType: const FullType(String),
        ));
    }
    if (ruleAction != null) {
      result$
        ..add(const _i1.XmlElementName('RuleAction'))
        ..add(serializers.serialize(
          ruleAction,
          specifiedType: const FullType.nullable(RuleAction),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('RuleNumber'))
      ..add(serializers.serialize(
        ruleNumber,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
