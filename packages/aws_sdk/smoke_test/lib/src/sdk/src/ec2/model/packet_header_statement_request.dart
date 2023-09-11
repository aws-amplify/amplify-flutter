// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.packet_header_statement_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/protocol.dart';

part 'packet_header_statement_request.g.dart';

/// Describes a packet header statement.
abstract class PacketHeaderStatementRequest
    with
        _i1.AWSEquatable<PacketHeaderStatementRequest>
    implements
        Built<PacketHeaderStatementRequest,
            PacketHeaderStatementRequestBuilder> {
  /// Describes a packet header statement.
  factory PacketHeaderStatementRequest({
    List<String>? sourceAddresses,
    List<String>? destinationAddresses,
    List<String>? sourcePorts,
    List<String>? destinationPorts,
    List<String>? sourcePrefixLists,
    List<String>? destinationPrefixLists,
    List<Protocol>? protocols,
  }) {
    return _$PacketHeaderStatementRequest._(
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
  factory PacketHeaderStatementRequest.build(
          [void Function(PacketHeaderStatementRequestBuilder) updates]) =
      _$PacketHeaderStatementRequest;

  const PacketHeaderStatementRequest._();

  static const List<_i3.SmithySerializer<PacketHeaderStatementRequest>>
      serializers = [PacketHeaderStatementRequestEc2QuerySerializer()];

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
    final helper = newBuiltValueToStringHelper('PacketHeaderStatementRequest')
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

class PacketHeaderStatementRequestEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<PacketHeaderStatementRequest> {
  const PacketHeaderStatementRequestEc2QuerySerializer()
      : super('PacketHeaderStatementRequest');

  @override
  Iterable<Type> get types => const [
        PacketHeaderStatementRequest,
        _$PacketHeaderStatementRequest,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PacketHeaderStatementRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PacketHeaderStatementRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SourceAddress':
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
        case 'DestinationAddress':
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
        case 'SourcePort':
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
        case 'DestinationPort':
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
        case 'SourcePrefixList':
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
        case 'DestinationPrefixList':
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
        case 'Protocol':
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
    PacketHeaderStatementRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'PacketHeaderStatementRequestResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PacketHeaderStatementRequest(
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
        ..add(const _i3.XmlElementName('SourceAddress'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          sourceAddresses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (destinationAddresses != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationAddress'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          destinationAddresses,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (sourcePorts != null) {
      result$
        ..add(const _i3.XmlElementName('SourcePort'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          sourcePorts,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (destinationPorts != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationPort'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          destinationPorts,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (sourcePrefixLists != null) {
      result$
        ..add(const _i3.XmlElementName('SourcePrefixList'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          sourcePrefixLists,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (destinationPrefixLists != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationPrefixList'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          destinationPrefixLists,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (protocols != null) {
      result$
        ..add(const _i3.XmlElementName('Protocol'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          protocols,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Protocol)],
          ),
        ));
    }
    return result$;
  }
}
