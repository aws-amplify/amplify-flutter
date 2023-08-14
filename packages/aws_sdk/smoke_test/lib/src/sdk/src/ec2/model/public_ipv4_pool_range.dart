// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.public_ipv4_pool_range; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'public_ipv4_pool_range.g.dart';

/// Describes an address range of an IPv4 address pool.
abstract class PublicIpv4PoolRange
    with _i1.AWSEquatable<PublicIpv4PoolRange>
    implements Built<PublicIpv4PoolRange, PublicIpv4PoolRangeBuilder> {
  /// Describes an address range of an IPv4 address pool.
  factory PublicIpv4PoolRange({
    String? firstAddress,
    String? lastAddress,
    int? addressCount,
    int? availableAddressCount,
  }) {
    addressCount ??= 0;
    availableAddressCount ??= 0;
    return _$PublicIpv4PoolRange._(
      firstAddress: firstAddress,
      lastAddress: lastAddress,
      addressCount: addressCount,
      availableAddressCount: availableAddressCount,
    );
  }

  /// Describes an address range of an IPv4 address pool.
  factory PublicIpv4PoolRange.build(
          [void Function(PublicIpv4PoolRangeBuilder) updates]) =
      _$PublicIpv4PoolRange;

  const PublicIpv4PoolRange._();

  static const List<_i2.SmithySerializer<PublicIpv4PoolRange>> serializers = [
    PublicIpv4PoolRangeEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PublicIpv4PoolRangeBuilder b) {
    b
      ..addressCount = 0
      ..availableAddressCount = 0;
  }

  /// The first IP address in the range.
  String? get firstAddress;

  /// The last IP address in the range.
  String? get lastAddress;

  /// The number of addresses in the range.
  int get addressCount;

  /// The number of available addresses in the range.
  int get availableAddressCount;
  @override
  List<Object?> get props => [
        firstAddress,
        lastAddress,
        addressCount,
        availableAddressCount,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PublicIpv4PoolRange')
      ..add(
        'firstAddress',
        firstAddress,
      )
      ..add(
        'lastAddress',
        lastAddress,
      )
      ..add(
        'addressCount',
        addressCount,
      )
      ..add(
        'availableAddressCount',
        availableAddressCount,
      );
    return helper.toString();
  }
}

class PublicIpv4PoolRangeEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PublicIpv4PoolRange> {
  const PublicIpv4PoolRangeEc2QuerySerializer() : super('PublicIpv4PoolRange');

  @override
  Iterable<Type> get types => const [
        PublicIpv4PoolRange,
        _$PublicIpv4PoolRange,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PublicIpv4PoolRange deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PublicIpv4PoolRangeBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'firstAddress':
          result.firstAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'lastAddress':
          result.lastAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'addressCount':
          result.addressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'availableAddressCount':
          result.availableAddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PublicIpv4PoolRange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PublicIpv4PoolRangeResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PublicIpv4PoolRange(
      :firstAddress,
      :lastAddress,
      :addressCount,
      :availableAddressCount
    ) = object;
    if (firstAddress != null) {
      result$
        ..add(const _i2.XmlElementName('FirstAddress'))
        ..add(serializers.serialize(
          firstAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (lastAddress != null) {
      result$
        ..add(const _i2.XmlElementName('LastAddress'))
        ..add(serializers.serialize(
          lastAddress,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('AddressCount'))
      ..add(serializers.serialize(
        addressCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('AvailableAddressCount'))
      ..add(serializers.serialize(
        availableAddressCount,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
