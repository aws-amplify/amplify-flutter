// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.packet_header_statement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/protocol.dart';

part 'packet_header_statement.g.dart';

/// Describes a packet header statement.
abstract class PacketHeaderStatement
    with _i1.AWSEquatable<PacketHeaderStatement>
    implements Built<PacketHeaderStatement, PacketHeaderStatementBuilder> {
  /// Describes a packet header statement.
  factory PacketHeaderStatement({
    List<String>? sourceAddresses,
    List<String>? destinationAddresses,
    List<String>? sourcePorts,
    List<String>? destinationPorts,
    List<String>? sourcePrefixLists,
    List<String>? destinationPrefixLists,
    List<Protocol>? protocols,
  }) {
    return _$PacketHeaderStatement._(
      sourceAddresses:
          sourceAddresses == null ? null : _i2.BuiltList(sourceAddresses),
      destinationAddresses: destinationAddresses == null
          ? null
          : _i2.BuiltList(destinationAddresses),
      sourcePorts: sourcePorts == null ? null : _i2.BuiltList(sourcePorts),
      destinationPorts:
          destinationPorts == null ? null : _i2.BuiltList(destinationPorts),
      sourcePrefixLists:
          sourcePrefixLists == null ? null : _i2.BuiltList(sourcePrefixLists),
      destinationPrefixLists: destinationPrefixLists == null
          ? null
          : _i2.BuiltList(destinationPrefixLists),
      protocols: protocols == null ? null : _i2.BuiltList(protocols),
    );
  }

  /// Describes a packet header statement.
  factory PacketHeaderStatement.build(
          [void Function(PacketHeaderStatementBuilder) updates]) =
      _$PacketHeaderStatement;

  const PacketHeaderStatement._();

  static const List<_i3.SmithySerializer<PacketHeaderStatement>> serializers = [
    PacketHeaderStatementEc2QuerySerializer()
  ];

  /// The source addresses.
  _i2.BuiltList<String>? get sourceAddresses;

  /// The destination addresses.
  _i2.BuiltList<String>? get destinationAddresses;

  /// The source ports.
  _i2.BuiltList<String>? get sourcePorts;

  /// The destination ports.
  _i2.BuiltList<String>? get destinationPorts;

  /// The source prefix lists.
  _i2.BuiltList<String>? get sourcePrefixLists;

  /// The destination prefix lists.
  _i2.BuiltList<String>? get destinationPrefixLists;

  /// The protocols.
  _i2.BuiltList<Protocol>? get protocols;
  @override
  List<Object?> get props => [
        sourceAddresses,
        destinationAddresses,
        sourcePorts,
        destinationPorts,
        sourcePrefixLists,
        destinationPrefixLists,
        protocols,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PacketHeaderStatement')
      ..add(
        'sourceAddresses',
        sourceAddresses,
      )
      ..add(
        'destinationAddresses',
        destinationAddresses,
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
        'sourcePrefixLists',
        sourcePrefixLists,
      )
      ..add(
        'destinationPrefixLists',
        destinationPrefixLists,
      )
      ..add(
        'protocols',
        protocols,
      );
    return helper.toString();
  }
}

class PacketHeaderStatementEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<PacketHeaderStatement> {
  const PacketHeaderStatementEc2QuerySerializer()
      : super('PacketHeaderStatement');

  @override
  Iterable<Type> get types => const [
        PacketHeaderStatement,
        _$PacketHeaderStatement,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PacketHeaderStatement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PacketHeaderStatementBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'sourceAddressSet':
          result.sourceAddresses.replace((const _i3.XmlBuiltListSerializer(
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
        case 'destinationAddressSet':
          result.destinationAddresses.replace((const _i3.XmlBuiltListSerializer(
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
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'destinationPortSet':
          result.destinationPorts.replace((const _i3.XmlBuiltListSerializer(
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
        case 'sourcePrefixListSet':
          result.sourcePrefixLists.replace((const _i3.XmlBuiltListSerializer(
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
        case 'destinationPrefixListSet':
          result.destinationPrefixLists
              .replace((const _i3.XmlBuiltListSerializer(
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
        case 'protocolSet':
          result.protocols.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Protocol)],
            ),
          ) as _i2.BuiltList<Protocol>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PacketHeaderStatement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'PacketHeaderStatementResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PacketHeaderStatement(
      :sourceAddresses,
      :destinationAddresses,
      :sourcePorts,
      :destinationPorts,
      :sourcePrefixLists,
      :destinationPrefixLists,
      :protocols
    ) = object;
    if (sourceAddresses != null) {
      result$
        ..add(const _i3.XmlElementName('SourceAddressSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          sourceAddresses,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (destinationAddresses != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationAddressSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          destinationAddresses,
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
            [FullType(String)],
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
            [FullType(String)],
          ),
        ));
    }
    if (sourcePrefixLists != null) {
      result$
        ..add(const _i3.XmlElementName('SourcePrefixListSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          sourcePrefixLists,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (destinationPrefixLists != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationPrefixListSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          destinationPrefixLists,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Protocol)],
          ),
        ));
    }
    return result$;
  }
}
