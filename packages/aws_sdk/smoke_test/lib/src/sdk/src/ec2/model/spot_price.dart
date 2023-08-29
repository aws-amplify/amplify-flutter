// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_price; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ri_product_description.dart';

part 'spot_price.g.dart';

/// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
///
/// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
abstract class SpotPrice
    with _i1.AWSEquatable<SpotPrice>
    implements Built<SpotPrice, SpotPriceBuilder> {
  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  factory SpotPrice({
    String? availabilityZone,
    InstanceType? instanceType,
    RiProductDescription? productDescription,
    String? spotPrice,
    DateTime? timestamp,
  }) {
    return _$SpotPrice._(
      availabilityZone: availabilityZone,
      instanceType: instanceType,
      productDescription: productDescription,
      spotPrice: spotPrice,
      timestamp: timestamp,
    );
  }

  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  factory SpotPrice.build([void Function(SpotPriceBuilder) updates]) =
      _$SpotPrice;

  const SpotPrice._();

  static const List<_i2.SmithySerializer<SpotPrice>> serializers = [
    SpotPriceEc2QuerySerializer()
  ];

  /// The Availability Zone.
  String? get availabilityZone;

  /// The instance type.
  InstanceType? get instanceType;

  /// A general description of the AMI.
  RiProductDescription? get productDescription;

  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  String? get spotPrice;

  /// The date and time the request was created, in UTC format (for example, _YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z).
  DateTime? get timestamp;
  @override
  List<Object?> get props => [
        availabilityZone,
        instanceType,
        productDescription,
        spotPrice,
        timestamp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotPrice')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'productDescription',
        productDescription,
      )
      ..add(
        'spotPrice',
        spotPrice,
      )
      ..add(
        'timestamp',
        timestamp,
      );
    return helper.toString();
  }
}

class SpotPriceEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SpotPrice> {
  const SpotPriceEc2QuerySerializer() : super('SpotPrice');

  @override
  Iterable<Type> get types => const [
        SpotPrice,
        _$SpotPrice,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotPrice deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotPriceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'productDescription':
          result.productDescription = (serializers.deserialize(
            value,
            specifiedType: const FullType(RiProductDescription),
          ) as RiProductDescription);
        case 'spotPrice':
          result.spotPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'timestamp':
          result.timestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SpotPrice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SpotPriceResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SpotPrice(
      :availabilityZone,
      :instanceType,
      :productDescription,
      :spotPrice,
      :timestamp
    ) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i2.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType.nullable(InstanceType),
        ));
    }
    if (productDescription != null) {
      result$
        ..add(const _i2.XmlElementName('ProductDescription'))
        ..add(serializers.serialize(
          productDescription,
          specifiedType: const FullType.nullable(RiProductDescription),
        ));
    }
    if (spotPrice != null) {
      result$
        ..add(const _i2.XmlElementName('SpotPrice'))
        ..add(serializers.serialize(
          spotPrice,
          specifiedType: const FullType(String),
        ));
    }
    if (timestamp != null) {
      result$
        ..add(const _i2.XmlElementName('Timestamp'))
        ..add(serializers.serialize(
          timestamp,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    return result$;
  }
}
