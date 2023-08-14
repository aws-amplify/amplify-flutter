// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.purchase; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/payment_option.dart';

part 'purchase.g.dart';

/// Describes the result of the purchase.
abstract class Purchase
    with _i1.AWSEquatable<Purchase>
    implements Built<Purchase, PurchaseBuilder> {
  /// Describes the result of the purchase.
  factory Purchase({
    CurrencyCodeValues? currencyCode,
    int? duration,
    List<String>? hostIdSet,
    String? hostReservationId,
    String? hourlyPrice,
    String? instanceFamily,
    PaymentOption? paymentOption,
    String? upfrontPrice,
  }) {
    duration ??= 0;
    return _$Purchase._(
      currencyCode: currencyCode,
      duration: duration,
      hostIdSet: hostIdSet == null ? null : _i2.BuiltList(hostIdSet),
      hostReservationId: hostReservationId,
      hourlyPrice: hourlyPrice,
      instanceFamily: instanceFamily,
      paymentOption: paymentOption,
      upfrontPrice: upfrontPrice,
    );
  }

  /// Describes the result of the purchase.
  factory Purchase.build([void Function(PurchaseBuilder) updates]) = _$Purchase;

  const Purchase._();

  static const List<_i3.SmithySerializer<Purchase>> serializers = [
    PurchaseEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PurchaseBuilder b) {
    b.duration = 0;
  }

  /// The currency in which the `UpfrontPrice` and `HourlyPrice` amounts are specified. At this time, the only supported currency is `USD`.
  CurrencyCodeValues? get currencyCode;

  /// The duration of the reservation's term in seconds.
  int get duration;

  /// The IDs of the Dedicated Hosts associated with the reservation.
  _i2.BuiltList<String>? get hostIdSet;

  /// The ID of the reservation.
  String? get hostReservationId;

  /// The hourly price of the reservation per hour.
  String? get hourlyPrice;

  /// The instance family on the Dedicated Host that the reservation can be associated with.
  String? get instanceFamily;

  /// The payment option for the reservation.
  PaymentOption? get paymentOption;

  /// The upfront price of the reservation.
  String? get upfrontPrice;
  @override
  List<Object?> get props => [
        currencyCode,
        duration,
        hostIdSet,
        hostReservationId,
        hourlyPrice,
        instanceFamily,
        paymentOption,
        upfrontPrice,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Purchase')
      ..add(
        'currencyCode',
        currencyCode,
      )
      ..add(
        'duration',
        duration,
      )
      ..add(
        'hostIdSet',
        hostIdSet,
      )
      ..add(
        'hostReservationId',
        hostReservationId,
      )
      ..add(
        'hourlyPrice',
        hourlyPrice,
      )
      ..add(
        'instanceFamily',
        instanceFamily,
      )
      ..add(
        'paymentOption',
        paymentOption,
      )
      ..add(
        'upfrontPrice',
        upfrontPrice,
      );
    return helper.toString();
  }
}

class PurchaseEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<Purchase> {
  const PurchaseEc2QuerySerializer() : super('Purchase');

  @override
  Iterable<Type> get types => const [
        Purchase,
        _$Purchase,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Purchase deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurchaseBuilder();
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
        case 'duration':
          result.duration = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'hostIdSet':
          result.hostIdSet.replace((const _i3.XmlBuiltListSerializer(
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
        case 'hostReservationId':
          result.hostReservationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'hourlyPrice':
          result.hourlyPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceFamily':
          result.instanceFamily = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'paymentOption':
          result.paymentOption = (serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentOption),
          ) as PaymentOption);
        case 'upfrontPrice':
          result.upfrontPrice = (serializers.deserialize(
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
    Purchase object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'PurchaseResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Purchase(
      :currencyCode,
      :duration,
      :hostIdSet,
      :hostReservationId,
      :hourlyPrice,
      :instanceFamily,
      :paymentOption,
      :upfrontPrice
    ) = object;
    if (currencyCode != null) {
      result$
        ..add(const _i3.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          currencyCode,
          specifiedType: const FullType.nullable(CurrencyCodeValues),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Duration'))
      ..add(serializers.serialize(
        duration,
        specifiedType: const FullType(int),
      ));
    if (hostIdSet != null) {
      result$
        ..add(const _i3.XmlElementName('HostIdSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          hostIdSet,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (hostReservationId != null) {
      result$
        ..add(const _i3.XmlElementName('HostReservationId'))
        ..add(serializers.serialize(
          hostReservationId,
          specifiedType: const FullType(String),
        ));
    }
    if (hourlyPrice != null) {
      result$
        ..add(const _i3.XmlElementName('HourlyPrice'))
        ..add(serializers.serialize(
          hourlyPrice,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceFamily != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceFamily'))
        ..add(serializers.serialize(
          instanceFamily,
          specifiedType: const FullType(String),
        ));
    }
    if (paymentOption != null) {
      result$
        ..add(const _i3.XmlElementName('PaymentOption'))
        ..add(serializers.serialize(
          paymentOption,
          specifiedType: const FullType.nullable(PaymentOption),
        ));
    }
    if (upfrontPrice != null) {
      result$
        ..add(const _i3.XmlElementName('UpfrontPrice'))
        ..add(serializers.serialize(
          upfrontPrice,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
