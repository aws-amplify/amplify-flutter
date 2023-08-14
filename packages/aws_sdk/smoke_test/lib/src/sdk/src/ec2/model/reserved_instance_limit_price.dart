// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reserved_instance_limit_price; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart';

part 'reserved_instance_limit_price.g.dart';

/// Describes the limit price of a Reserved Instance offering.
abstract class ReservedInstanceLimitPrice
    with _i1.AWSEquatable<ReservedInstanceLimitPrice>
    implements
        Built<ReservedInstanceLimitPrice, ReservedInstanceLimitPriceBuilder> {
  /// Describes the limit price of a Reserved Instance offering.
  factory ReservedInstanceLimitPrice({
    double? amount,
    CurrencyCodeValues? currencyCode,
  }) {
    amount ??= 0;
    return _$ReservedInstanceLimitPrice._(
      amount: amount,
      currencyCode: currencyCode,
    );
  }

  /// Describes the limit price of a Reserved Instance offering.
  factory ReservedInstanceLimitPrice.build(
          [void Function(ReservedInstanceLimitPriceBuilder) updates]) =
      _$ReservedInstanceLimitPrice;

  const ReservedInstanceLimitPrice._();

  static const List<_i2.SmithySerializer<ReservedInstanceLimitPrice>>
      serializers = [ReservedInstanceLimitPriceEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservedInstanceLimitPriceBuilder b) {
    b.amount = 0;
  }

  /// Used for Reserved Instance Marketplace offerings. Specifies the limit price on the total order (instanceCount * price).
  double get amount;

  /// The currency in which the `limitPrice` amount is specified. At this time, the only supported currency is `USD`.
  CurrencyCodeValues? get currencyCode;
  @override
  List<Object?> get props => [
        amount,
        currencyCode,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ReservedInstanceLimitPrice')
      ..add(
        'amount',
        amount,
      )
      ..add(
        'currencyCode',
        currencyCode,
      );
    return helper.toString();
  }
}

class ReservedInstanceLimitPriceEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ReservedInstanceLimitPrice> {
  const ReservedInstanceLimitPriceEc2QuerySerializer()
      : super('ReservedInstanceLimitPrice');

  @override
  Iterable<Type> get types => const [
        ReservedInstanceLimitPrice,
        _$ReservedInstanceLimitPrice,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservedInstanceLimitPrice deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservedInstanceLimitPriceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'amount':
          result.amount = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'currencyCode':
          result.currencyCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(CurrencyCodeValues),
          ) as CurrencyCodeValues);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ReservedInstanceLimitPrice object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReservedInstanceLimitPriceResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReservedInstanceLimitPrice(:amount, :currencyCode) = object;
    result$
      ..add(const _i2.XmlElementName('Amount'))
      ..add(serializers.serialize(
        amount,
        specifiedType: const FullType(double),
      ));
    if (currencyCode != null) {
      result$
        ..add(const _i2.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          currencyCode,
          specifiedType: const FullType.nullable(CurrencyCodeValues),
        ));
    }
    return result$;
  }
}
