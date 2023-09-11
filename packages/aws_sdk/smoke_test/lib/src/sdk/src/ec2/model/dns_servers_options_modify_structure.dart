// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.dns_servers_options_modify_structure; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'dns_servers_options_modify_structure.g.dart';

/// Information about the DNS server to be used.
abstract class DnsServersOptionsModifyStructure
    with
        _i1.AWSEquatable<DnsServersOptionsModifyStructure>
    implements
        Built<DnsServersOptionsModifyStructure,
            DnsServersOptionsModifyStructureBuilder> {
  /// Information about the DNS server to be used.
  factory DnsServersOptionsModifyStructure({
    List<String>? customDnsServers,
    bool? enabled,
  }) {
    enabled ??= false;
    return _$DnsServersOptionsModifyStructure._(
      customDnsServers:
          customDnsServers == null ? null : _i2.BuiltList(customDnsServers),
      enabled: enabled,
    );
  }

  /// Information about the DNS server to be used.
  factory DnsServersOptionsModifyStructure.build(
          [void Function(DnsServersOptionsModifyStructureBuilder) updates]) =
      _$DnsServersOptionsModifyStructure;

  const DnsServersOptionsModifyStructure._();

  static const List<_i3.SmithySerializer<DnsServersOptionsModifyStructure>>
      serializers = [DnsServersOptionsModifyStructureEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DnsServersOptionsModifyStructureBuilder b) {
    b.enabled = false;
  }

  /// The IPv4 address range, in CIDR notation, of the DNS servers to be used. You can specify up to two DNS servers. Ensure that the DNS servers can be reached by the clients. The specified values overwrite the existing values.
  _i2.BuiltList<String>? get customDnsServers;

  /// Indicates whether DNS servers should be used. Specify `False` to delete the existing DNS servers.
  bool get enabled;
  @override
  List<Object?> get props => [
        customDnsServers,
        enabled,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DnsServersOptionsModifyStructure')
          ..add(
            'customDnsServers',
            customDnsServers,
          )
          ..add(
            'enabled',
            enabled,
          );
    return helper.toString();
  }
}

class DnsServersOptionsModifyStructureEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DnsServersOptionsModifyStructure> {
  const DnsServersOptionsModifyStructureEc2QuerySerializer()
      : super('DnsServersOptionsModifyStructure');

  @override
  Iterable<Type> get types => const [
        DnsServersOptionsModifyStructure,
        _$DnsServersOptionsModifyStructure,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DnsServersOptionsModifyStructure deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DnsServersOptionsModifyStructureBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CustomDnsServers':
          result.customDnsServers.replace((const _i3.XmlBuiltListSerializer(
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
        case 'Enabled':
          result.enabled = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DnsServersOptionsModifyStructure object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DnsServersOptionsModifyStructureResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DnsServersOptionsModifyStructure(:customDnsServers, :enabled) =
        object;
    if (customDnsServers != null) {
      result$
        ..add(const _i3.XmlElementName('CustomDnsServers'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          customDnsServers,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Enabled'))
      ..add(serializers.serialize(
        enabled,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
