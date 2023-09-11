// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.dhcp_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart';

part 'dhcp_configuration.g.dart';

/// Describes a DHCP configuration option.
abstract class DhcpConfiguration
    with _i1.AWSEquatable<DhcpConfiguration>
    implements Built<DhcpConfiguration, DhcpConfigurationBuilder> {
  /// Describes a DHCP configuration option.
  factory DhcpConfiguration({
    String? key,
    List<AttributeValue>? values,
  }) {
    return _$DhcpConfiguration._(
      key: key,
      values: values == null ? null : _i2.BuiltList(values),
    );
  }

  /// Describes a DHCP configuration option.
  factory DhcpConfiguration.build(
      [void Function(DhcpConfigurationBuilder) updates]) = _$DhcpConfiguration;

  const DhcpConfiguration._();

  static const List<_i3.SmithySerializer<DhcpConfiguration>> serializers = [
    DhcpConfigurationEc2QuerySerializer()
  ];

  /// The name of a DHCP option.
  String? get key;

  /// The values for the DHCP option.
  _i2.BuiltList<AttributeValue>? get values;
  @override
  List<Object?> get props => [
        key,
        values,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DhcpConfiguration')
      ..add(
        'key',
        key,
      )
      ..add(
        'values',
        values,
      );
    return helper.toString();
  }
}

class DhcpConfigurationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DhcpConfiguration> {
  const DhcpConfigurationEc2QuerySerializer() : super('DhcpConfiguration');

  @override
  Iterable<Type> get types => const [
        DhcpConfiguration,
        _$DhcpConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DhcpConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DhcpConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'valueSet':
          result.values.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(AttributeValue)],
            ),
          ) as _i2.BuiltList<AttributeValue>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DhcpConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DhcpConfigurationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DhcpConfiguration(:key, :values) = object;
    if (key != null) {
      result$
        ..add(const _i3.XmlElementName('Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(String),
        ));
    }
    if (values != null) {
      result$
        ..add(const _i3.XmlElementName('ValueSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          values,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(AttributeValue)],
          ),
        ));
    }
    return result$;
  }
}
