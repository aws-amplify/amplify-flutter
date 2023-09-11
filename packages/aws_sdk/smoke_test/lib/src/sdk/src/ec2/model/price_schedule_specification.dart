// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.price_schedule_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i2;
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart';

part 'price_schedule_specification.g.dart';

/// Describes the price for a Reserved Instance.
abstract class PriceScheduleSpecification
    with _i1.AWSEquatable<PriceScheduleSpecification>
    implements
        Built<PriceScheduleSpecification, PriceScheduleSpecificationBuilder> {
  /// Describes the price for a Reserved Instance.
  factory PriceScheduleSpecification({
    CurrencyCodeValues? currencyCode,
    double? price,
    _i2.Int64? term,
  }) {
    price ??= 0;
    term ??= _i2.Int64.ZERO;
    return _$PriceScheduleSpecification._(
      currencyCode: currencyCode,
      price: price,
      term: term,
    );
  }

  /// Describes the price for a Reserved Instance.
  factory PriceScheduleSpecification.build(
          [void Function(PriceScheduleSpecificationBuilder) updates]) =
      _$PriceScheduleSpecification;

  const PriceScheduleSpecification._();

  static const List<_i3.SmithySerializer<PriceScheduleSpecification>>
      serializers = [PriceScheduleSpecificationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PriceScheduleSpecificationBuilder b) {
    b
      ..price = 0
      ..term = _i2.Int64.ZERO;
  }

  /// The currency for transacting the Reserved Instance resale. At this time, the only supported currency is `USD`.
  CurrencyCodeValues? get currencyCode;

  /// The fixed price for the term.
  double get price;

  /// The number of months remaining in the reservation. For example, 2 is the second to the last month before the capacity reservation expires.
  _i2.Int64 get term;
  @override
  List<Object?> get props => [
        currencyCode,
        price,
        term,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PriceScheduleSpecification')
      ..add(
        'currencyCode',
        currencyCode,
      )
      ..add(
        'price',
        price,
      )
      ..add(
        'term',
        term,
      );
    return helper.toString();
  }
}

class PriceScheduleSpecificationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<PriceScheduleSpecification> {
  const PriceScheduleSpecificationEc2QuerySerializer()
      : super('PriceScheduleSpecification');

  @override
  Iterable<Type> get types => const [
        PriceScheduleSpecification,
        _$PriceScheduleSpecification,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PriceScheduleSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PriceScheduleSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'currencyCode':
          result.currencyCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(CurrencyCodeValues),
          ) as CurrencyCodeValues);
        case 'price':
          result.price = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'term':
          result.term = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Int64),
          ) as _i2.Int64);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PriceScheduleSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'PriceScheduleSpecificationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PriceScheduleSpecification(:currencyCode, :price, :term) = object;
    if (currencyCode != null) {
      result$
        ..add(const _i3.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          currencyCode,
          specifiedType: const FullType(CurrencyCodeValues),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Price'))
      ..add(serializers.serialize(
        price,
        specifiedType: const FullType(double),
      ));
    result$
      ..add(const _i3.XmlElementName('Term'))
      ..add(serializers.serialize(
        term,
        specifiedType: const FullType(_i2.Int64),
      ));
    return result$;
  }
}
