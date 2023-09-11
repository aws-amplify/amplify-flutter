// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.analysis_packet_header; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/port_range.dart';

part 'analysis_packet_header.g.dart';

/// Describes a header. Reflects any changes made by a component as traffic passes through. The fields of an inbound header are null except for the first component of a path.
abstract class AnalysisPacketHeader
    with _i1.AWSEquatable<AnalysisPacketHeader>
    implements Built<AnalysisPacketHeader, AnalysisPacketHeaderBuilder> {
  /// Describes a header. Reflects any changes made by a component as traffic passes through. The fields of an inbound header are null except for the first component of a path.
  factory AnalysisPacketHeader({
    List<String>? destinationAddresses,
    List<PortRange>? destinationPortRanges,
    String? protocol,
    List<String>? sourceAddresses,
    List<PortRange>? sourcePortRanges,
  }) {
    return _$AnalysisPacketHeader._(
      destinationAddresses: destinationAddresses == null
          ? null
          : _i2.BuiltList(destinationAddresses),
      destinationPortRanges: destinationPortRanges == null
          ? null
          : _i2.BuiltList(destinationPortRanges),
      protocol: protocol,
      sourceAddresses:
          sourceAddresses == null ? null : _i2.BuiltList(sourceAddresses),
      sourcePortRanges:
          sourcePortRanges == null ? null : _i2.BuiltList(sourcePortRanges),
    );
  }

  /// Describes a header. Reflects any changes made by a component as traffic passes through. The fields of an inbound header are null except for the first component of a path.
  factory AnalysisPacketHeader.build(
          [void Function(AnalysisPacketHeaderBuilder) updates]) =
      _$AnalysisPacketHeader;

  const AnalysisPacketHeader._();

  static const List<_i3.SmithySerializer<AnalysisPacketHeader>> serializers = [
    AnalysisPacketHeaderEc2QuerySerializer()
  ];

  /// The destination addresses.
  _i2.BuiltList<String>? get destinationAddresses;

  /// The destination port ranges.
  _i2.BuiltList<PortRange>? get destinationPortRanges;

  /// The protocol.
  String? get protocol;

  /// The source addresses.
  _i2.BuiltList<String>? get sourceAddresses;

  /// The source port ranges.
  _i2.BuiltList<PortRange>? get sourcePortRanges;
  @override
  List<Object?> get props => [
        destinationAddresses,
        destinationPortRanges,
        protocol,
        sourceAddresses,
        sourcePortRanges,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalysisPacketHeader')
      ..add(
        'destinationAddresses',
        destinationAddresses,
      )
      ..add(
        'destinationPortRanges',
        destinationPortRanges,
      )
      ..add(
        'protocol',
        protocol,
      )
      ..add(
        'sourceAddresses',
        sourceAddresses,
      )
      ..add(
        'sourcePortRanges',
        sourcePortRanges,
      );
    return helper.toString();
  }
}

class AnalysisPacketHeaderEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AnalysisPacketHeader> {
  const AnalysisPacketHeaderEc2QuerySerializer()
      : super('AnalysisPacketHeader');

  @override
  Iterable<Type> get types => const [
        AnalysisPacketHeader,
        _$AnalysisPacketHeader,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AnalysisPacketHeader deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalysisPacketHeaderBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'destinationPortRangeSet':
          result.destinationPortRanges
              .replace((const _i3.XmlBuiltListSerializer(
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
        case 'sourcePortRangeSet':
          result.sourcePortRanges.replace((const _i3.XmlBuiltListSerializer(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AnalysisPacketHeader object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AnalysisPacketHeaderResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AnalysisPacketHeader(
      :destinationAddresses,
      :destinationPortRanges,
      :protocol,
      :sourceAddresses,
      :sourcePortRanges
    ) = object;
    if (destinationAddresses != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationAddressSet'))
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
    if (destinationPortRanges != null) {
      result$
        ..add(const _i3.XmlElementName('DestinationPortRangeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          destinationPortRanges,
          specifiedType: const FullType(
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
    if (sourceAddresses != null) {
      result$
        ..add(const _i3.XmlElementName('SourceAddressSet'))
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
    if (sourcePortRanges != null) {
      result$
        ..add(const _i3.XmlElementName('SourcePortRangeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          sourcePortRanges,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(PortRange)],
          ),
        ));
    }
    return result$;
  }
}
