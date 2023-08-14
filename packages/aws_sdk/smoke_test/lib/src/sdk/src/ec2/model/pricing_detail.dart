// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.pricing_detail; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'pricing_detail.g.dart';

/// Describes a Reserved Instance offering.
abstract class PricingDetail
    with _i1.AWSEquatable<PricingDetail>
    implements Built<PricingDetail, PricingDetailBuilder> {
  /// Describes a Reserved Instance offering.
  factory PricingDetail({
    int? count,
    double? price,
  }) {
    count ??= 0;
    price ??= 0;
    return _$PricingDetail._(
      count: count,
      price: price,
    );
  }

  /// Describes a Reserved Instance offering.
  factory PricingDetail.build([void Function(PricingDetailBuilder) updates]) =
      _$PricingDetail;

  const PricingDetail._();

  static const List<_i2.SmithySerializer<PricingDetail>> serializers = [
    PricingDetailEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PricingDetailBuilder b) {
    b
      ..count = 0
      ..price = 0;
  }

  /// The number of reservations available for the price.
  int get count;

  /// The price per instance.
  double get price;
  @override
  List<Object?> get props => [
        count,
        price,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PricingDetail')
      ..add(
        'count',
        count,
      )
      ..add(
        'price',
        price,
      );
    return helper.toString();
  }
}

class PricingDetailEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PricingDetail> {
  const PricingDetailEc2QuerySerializer() : super('PricingDetail');

  @override
  Iterable<Type> get types => const [
        PricingDetail,
        _$PricingDetail,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PricingDetail deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PricingDetailBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'count':
          result.count = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'price':
          result.price = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PricingDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PricingDetailResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PricingDetail(:count, :price) = object;
    result$
      ..add(const _i2.XmlElementName('Count'))
      ..add(serializers.serialize(
        count,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('Price'))
      ..add(serializers.serialize(
        price,
        specifiedType: const FullType(double),
      ));
    return result$;
  }
}
