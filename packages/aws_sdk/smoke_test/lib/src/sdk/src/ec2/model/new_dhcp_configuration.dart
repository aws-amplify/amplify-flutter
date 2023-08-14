// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.new_dhcp_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'new_dhcp_configuration.g.dart';

/// Describes a DHCP configuration option.
abstract class NewDhcpConfiguration
    with _i1.AWSEquatable<NewDhcpConfiguration>
    implements Built<NewDhcpConfiguration, NewDhcpConfigurationBuilder> {
  /// Describes a DHCP configuration option.
  factory NewDhcpConfiguration({
    String? key,
    List<String>? values,
  }) {
    return _$NewDhcpConfiguration._(
      key: key,
      values: values == null ? null : _i2.BuiltList(values),
    );
  }

  /// Describes a DHCP configuration option.
  factory NewDhcpConfiguration.build(
          [void Function(NewDhcpConfigurationBuilder) updates]) =
      _$NewDhcpConfiguration;

  const NewDhcpConfiguration._();

  static const List<_i3.SmithySerializer<NewDhcpConfiguration>> serializers = [
    NewDhcpConfigurationEc2QuerySerializer()
  ];

  /// The name of a DHCP option.
  String? get key;

  /// The values for the DHCP option.
  _i2.BuiltList<String>? get values;
  @override
  List<Object?> get props => [
        key,
        values,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('NewDhcpConfiguration')
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

class NewDhcpConfigurationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<NewDhcpConfiguration> {
  const NewDhcpConfigurationEc2QuerySerializer()
      : super('NewDhcpConfiguration');

  @override
  Iterable<Type> get types => const [
        NewDhcpConfiguration,
        _$NewDhcpConfiguration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  NewDhcpConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewDhcpConfigurationBuilder();
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
        case 'Value':
          result.values.replace((const _i3.XmlBuiltListSerializer(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    NewDhcpConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'NewDhcpConfigurationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final NewDhcpConfiguration(:key, :values) = object;
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
        ..add(const _i3.XmlElementName('Value'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          values,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
