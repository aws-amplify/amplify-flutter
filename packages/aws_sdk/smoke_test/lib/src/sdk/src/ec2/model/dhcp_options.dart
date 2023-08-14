// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.dhcp_options; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/dhcp_configuration.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'dhcp_options.g.dart';

/// The set of DHCP options.
abstract class DhcpOptions
    with _i1.AWSEquatable<DhcpOptions>
    implements Built<DhcpOptions, DhcpOptionsBuilder> {
  /// The set of DHCP options.
  factory DhcpOptions({
    List<DhcpConfiguration>? dhcpConfigurations,
    String? dhcpOptionsId,
    String? ownerId,
    List<Tag>? tags,
  }) {
    return _$DhcpOptions._(
      dhcpConfigurations:
          dhcpConfigurations == null ? null : _i2.BuiltList(dhcpConfigurations),
      dhcpOptionsId: dhcpOptionsId,
      ownerId: ownerId,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// The set of DHCP options.
  factory DhcpOptions.build([void Function(DhcpOptionsBuilder) updates]) =
      _$DhcpOptions;

  const DhcpOptions._();

  static const List<_i3.SmithySerializer<DhcpOptions>> serializers = [
    DhcpOptionsEc2QuerySerializer()
  ];

  /// The DHCP options in the set.
  _i2.BuiltList<DhcpConfiguration>? get dhcpConfigurations;

  /// The ID of the set of DHCP options.
  String? get dhcpOptionsId;

  /// The ID of the Amazon Web Services account that owns the DHCP options set.
  String? get ownerId;

  /// Any tags assigned to the DHCP options set.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        dhcpConfigurations,
        dhcpOptionsId,
        ownerId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DhcpOptions')
      ..add(
        'dhcpConfigurations',
        dhcpConfigurations,
      )
      ..add(
        'dhcpOptionsId',
        dhcpOptionsId,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class DhcpOptionsEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DhcpOptions> {
  const DhcpOptionsEc2QuerySerializer() : super('DhcpOptions');

  @override
  Iterable<Type> get types => const [
        DhcpOptions,
        _$DhcpOptions,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DhcpOptions deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DhcpOptionsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dhcpConfigurationSet':
          result.dhcpConfigurations.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(DhcpConfiguration)],
            ),
          ) as _i2.BuiltList<DhcpConfiguration>));
        case 'dhcpOptionsId':
          result.dhcpOptionsId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DhcpOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DhcpOptionsResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DhcpOptions(:dhcpConfigurations, :dhcpOptionsId, :ownerId, :tags) =
        object;
    if (dhcpConfigurations != null) {
      result$
        ..add(const _i3.XmlElementName('DhcpConfigurationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          dhcpConfigurations,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(DhcpConfiguration)],
          ),
        ));
    }
    if (dhcpOptionsId != null) {
      result$
        ..add(const _i3.XmlElementName('DhcpOptionsId'))
        ..add(serializers.serialize(
          dhcpOptionsId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
