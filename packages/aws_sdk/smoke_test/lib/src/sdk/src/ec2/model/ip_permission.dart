// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ip_permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ip_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_range.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/prefix_list_id.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/user_id_group_pair.dart';

part 'ip_permission.g.dart';

/// Describes a set of permissions for a security group rule.
abstract class IpPermission
    with _i1.AWSEquatable<IpPermission>
    implements Built<IpPermission, IpPermissionBuilder> {
  /// Describes a set of permissions for a security group rule.
  factory IpPermission({
    int? fromPort,
    String? ipProtocol,
    List<IpRange>? ipRanges,
    List<Ipv6Range>? ipv6Ranges,
    List<PrefixListId>? prefixListIds,
    int? toPort,
    List<UserIdGroupPair>? userIdGroupPairs,
  }) {
    fromPort ??= 0;
    toPort ??= 0;
    return _$IpPermission._(
      fromPort: fromPort,
      ipProtocol: ipProtocol,
      ipRanges: ipRanges == null ? null : _i2.BuiltList(ipRanges),
      ipv6Ranges: ipv6Ranges == null ? null : _i2.BuiltList(ipv6Ranges),
      prefixListIds:
          prefixListIds == null ? null : _i2.BuiltList(prefixListIds),
      toPort: toPort,
      userIdGroupPairs:
          userIdGroupPairs == null ? null : _i2.BuiltList(userIdGroupPairs),
    );
  }

  /// Describes a set of permissions for a security group rule.
  factory IpPermission.build([void Function(IpPermissionBuilder) updates]) =
      _$IpPermission;

  const IpPermission._();

  static const List<_i3.SmithySerializer<IpPermission>> serializers = [
    IpPermissionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpPermissionBuilder b) {
    b
      ..fromPort = 0
      ..toPort = 0;
  }

  /// If the protocol is TCP or UDP, this is the start of the port range. If the protocol is ICMP or ICMPv6, this is the type number. A value of -1 indicates all ICMP/ICMPv6 types. If you specify all ICMP/ICMPv6 types, you must specify all ICMP/ICMPv6 codes.
  int get fromPort;

  /// The IP protocol name (`tcp`, `udp`, `icmp`, `icmpv6`) or number (see [Protocol Numbers](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).
  ///
  /// Use `-1` to specify all protocols. When authorizing security group rules, specifying `-1` or a protocol number other than `tcp`, `udp`, `icmp`, or `icmpv6` allows traffic on all ports, regardless of any port range you specify. For `tcp`, `udp`, and `icmp`, you must specify a port range. For `icmpv6`, the port range is optional; if you omit the port range, traffic for all types and codes is allowed.
  String? get ipProtocol;

  /// The IPv4 ranges.
  _i2.BuiltList<IpRange>? get ipRanges;

  /// The IPv6 ranges.
  _i2.BuiltList<Ipv6Range>? get ipv6Ranges;

  /// The prefix list IDs.
  _i2.BuiltList<PrefixListId>? get prefixListIds;

  /// If the protocol is TCP or UDP, this is the end of the port range. If the protocol is ICMP or ICMPv6, this is the code. A value of -1 indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6 types, you must specify all ICMP/ICMPv6 codes.
  int get toPort;

  /// The security group and Amazon Web Services account ID pairs.
  _i2.BuiltList<UserIdGroupPair>? get userIdGroupPairs;
  @override
  List<Object?> get props => [
        fromPort,
        ipProtocol,
        ipRanges,
        ipv6Ranges,
        prefixListIds,
        toPort,
        userIdGroupPairs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpPermission')
      ..add(
        'fromPort',
        fromPort,
      )
      ..add(
        'ipProtocol',
        ipProtocol,
      )
      ..add(
        'ipRanges',
        ipRanges,
      )
      ..add(
        'ipv6Ranges',
        ipv6Ranges,
      )
      ..add(
        'prefixListIds',
        prefixListIds,
      )
      ..add(
        'toPort',
        toPort,
      )
      ..add(
        'userIdGroupPairs',
        userIdGroupPairs,
      );
    return helper.toString();
  }
}

class IpPermissionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<IpPermission> {
  const IpPermissionEc2QuerySerializer() : super('IpPermission');

  @override
  Iterable<Type> get types => const [
        IpPermission,
        _$IpPermission,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpPermission deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpPermissionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fromPort':
          result.fromPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ipProtocol':
          result.ipProtocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipRanges':
          result.ipRanges.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpRange)],
            ),
          ) as _i2.BuiltList<IpRange>));
        case 'ipv6Ranges':
          result.ipv6Ranges.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Ipv6Range)],
            ),
          ) as _i2.BuiltList<Ipv6Range>));
        case 'prefixListIds':
          result.prefixListIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PrefixListId)],
            ),
          ) as _i2.BuiltList<PrefixListId>));
        case 'toPort':
          result.toPort = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'groups':
          result.userIdGroupPairs.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(UserIdGroupPair)],
            ),
          ) as _i2.BuiltList<UserIdGroupPair>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IpPermission object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'IpPermissionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpPermission(
      :fromPort,
      :ipProtocol,
      :ipRanges,
      :ipv6Ranges,
      :prefixListIds,
      :toPort,
      :userIdGroupPairs
    ) = object;
    result$
      ..add(const _i3.XmlElementName('FromPort'))
      ..add(serializers.serialize(
        fromPort,
        specifiedType: const FullType(int),
      ));
    if (ipProtocol != null) {
      result$
        ..add(const _i3.XmlElementName('IpProtocol'))
        ..add(serializers.serialize(
          ipProtocol,
          specifiedType: const FullType(String),
        ));
    }
    if (ipRanges != null) {
      result$
        ..add(const _i3.XmlElementName('IpRanges'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipRanges,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IpRange)],
          ),
        ));
    }
    if (ipv6Ranges != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv6Ranges'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6Ranges,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Ipv6Range)],
          ),
        ));
    }
    if (prefixListIds != null) {
      result$
        ..add(const _i3.XmlElementName('PrefixListIds'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          prefixListIds,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(PrefixListId)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('ToPort'))
      ..add(serializers.serialize(
        toPort,
        specifiedType: const FullType(int),
      ));
    if (userIdGroupPairs != null) {
      result$
        ..add(const _i3.XmlElementName('Groups'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          userIdGroupPairs,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(UserIdGroupPair)],
          ),
        ));
    }
    return result$;
  }
}
