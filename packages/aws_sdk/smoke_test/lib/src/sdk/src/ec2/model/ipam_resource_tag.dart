// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_resource_tag; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ipam_resource_tag.g.dart';

/// The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
abstract class IpamResourceTag
    with _i1.AWSEquatable<IpamResourceTag>
    implements Built<IpamResourceTag, IpamResourceTagBuilder> {
  /// The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  factory IpamResourceTag({
    String? key,
    String? value,
  }) {
    return _$IpamResourceTag._(
      key: key,
      value: value,
    );
  }

  /// The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  factory IpamResourceTag.build(
      [void Function(IpamResourceTagBuilder) updates]) = _$IpamResourceTag;

  const IpamResourceTag._();

  static const List<_i2.SmithySerializer<IpamResourceTag>> serializers = [
    IpamResourceTagEc2QuerySerializer()
  ];

  /// The key of a tag assigned to the resource. Use this filter to find all resources assigned a tag with a specific key, regardless of the tag value.
  String? get key;

  /// The value of the tag.
  String? get value;
  @override
  List<Object?> get props => [
        key,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamResourceTag')
      ..add(
        'key',
        key,
      )
      ..add(
        'value',
        value,
      );
    return helper.toString();
  }
}

class IpamResourceTagEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<IpamResourceTag> {
  const IpamResourceTagEc2QuerySerializer() : super('IpamResourceTag');

  @override
  Iterable<Type> get types => const [
        IpamResourceTag,
        _$IpamResourceTag,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamResourceTag deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamResourceTagBuilder();
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
        case 'value':
          result.value = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IpamResourceTag object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'IpamResourceTagResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamResourceTag(:key, :value) = object;
    if (key != null) {
      result$
        ..add(const _i2.XmlElementName('Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(String),
        ));
    }
    if (value != null) {
      result$
        ..add(const _i2.XmlElementName('Value'))
        ..add(serializers.serialize(
          value,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
