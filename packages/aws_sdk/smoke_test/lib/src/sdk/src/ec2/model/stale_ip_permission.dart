// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.stale_ip_permission; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/user_id_group_pair.dart';

part 'stale_ip_permission.g.dart';

/// Describes a stale rule in a security group.
abstract class StaleIpPermission
    with _i1.AWSEquatable<StaleIpPermission>
    implements Built<StaleIpPermission, StaleIpPermissionBuilder> {
  /// Describes a stale rule in a security group.
  factory StaleIpPermission({
    int? fromPort,
    String? ipProtocol,
    List<String>? ipRanges,
    List<String>? prefixListIds,
    int? toPort,
    List<UserIdGroupPair>? userIdGroupPairs,
  }) {
    fromPort ??= 0;
    toPort ??= 0;
    return _$StaleIpPermission._(
      fromPort: fromPort,
      ipProtocol: ipProtocol,
      ipRanges: ipRanges == null ? null : _i2.BuiltList(ipRanges),
      prefixListIds:
          prefixListIds == null ? null : _i2.BuiltList(prefixListIds),
      toPort: toPort,
      userIdGroupPairs:
          userIdGroupPairs == null ? null : _i2.BuiltList(userIdGroupPairs),
    );
  }

  /// Describes a stale rule in a security group.
  factory StaleIpPermission.build(
      [void Function(StaleIpPermissionBuilder) updates]) = _$StaleIpPermission;

  const StaleIpPermission._();

  static const List<_i3.SmithySerializer<StaleIpPermission>> serializers = [
    StaleIpPermissionEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StaleIpPermissionBuilder b) {
    b
      ..fromPort = 0
      ..toPort = 0;
  }

  /// The start of the port range for the TCP and UDP protocols, or an ICMP type number. A value of -1 indicates all ICMP types.
  int get fromPort;

  /// The IP protocol name (for `tcp`, `udp`, and `icmp`) or number (see [Protocol Numbers)](http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml).
  String? get ipProtocol;

  /// The IP ranges. Not applicable for stale security group rules.
  _i2.BuiltList<String>? get ipRanges;

  /// The prefix list IDs. Not applicable for stale security group rules.
  _i2.BuiltList<String>? get prefixListIds;

  /// The end of the port range for the TCP and UDP protocols, or an ICMP type number. A value of `-1` indicates all ICMP types.
  int get toPort;

  /// The security group pairs. Returns the ID of the referenced security group and VPC, and the ID and status of the VPC peering connection.
  _i2.BuiltList<UserIdGroupPair>? get userIdGroupPairs;
  @override
  List<Object?> get props => [
        fromPort,
        ipProtocol,
        ipRanges,
        prefixListIds,
        toPort,
        userIdGroupPairs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StaleIpPermission')
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

class StaleIpPermissionEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<StaleIpPermission> {
  const StaleIpPermissionEc2QuerySerializer() : super('StaleIpPermission');

  @override
  Iterable<Type> get types => const [
        StaleIpPermission,
        _$StaleIpPermission,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StaleIpPermission deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StaleIpPermissionBuilder();
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
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'prefixListIds':
          result.prefixListIds.replace((const _i3.XmlBuiltListSerializer(
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
    StaleIpPermission object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'StaleIpPermissionResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final StaleIpPermission(
      :fromPort,
      :ipProtocol,
      :ipRanges,
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(UserIdGroupPair)],
          ),
        ));
    }
    return result$;
  }
}
