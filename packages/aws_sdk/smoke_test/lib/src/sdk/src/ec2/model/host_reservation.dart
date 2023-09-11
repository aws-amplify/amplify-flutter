// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.host_reservation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/payment_option.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reservation_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'host_reservation.g.dart';

/// Details about the Dedicated Host Reservation and associated Dedicated Hosts.
abstract class HostReservation
    with _i1.AWSEquatable<HostReservation>
    implements Built<HostReservation, HostReservationBuilder> {
  /// Details about the Dedicated Host Reservation and associated Dedicated Hosts.
  factory HostReservation({
    int? count,
    CurrencyCodeValues? currencyCode,
    int? duration,
    DateTime? end,
    List<String>? hostIdSet,
    String? hostReservationId,
    String? hourlyPrice,
    String? instanceFamily,
    String? offeringId,
    PaymentOption? paymentOption,
    DateTime? start,
    ReservationState? state,
    String? upfrontPrice,
    List<Tag>? tags,
  }) {
    count ??= 0;
    duration ??= 0;
    return _$HostReservation._(
      count: count,
      currencyCode: currencyCode,
      duration: duration,
      end: end,
      hostIdSet: hostIdSet == null ? null : _i2.BuiltList(hostIdSet),
      hostReservationId: hostReservationId,
      hourlyPrice: hourlyPrice,
      instanceFamily: instanceFamily,
      offeringId: offeringId,
      paymentOption: paymentOption,
      start: start,
      state: state,
      upfrontPrice: upfrontPrice,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Details about the Dedicated Host Reservation and associated Dedicated Hosts.
  factory HostReservation.build(
      [void Function(HostReservationBuilder) updates]) = _$HostReservation;

  const HostReservation._();

  static const List<_i3.SmithySerializer<HostReservation>> serializers = [
    HostReservationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(HostReservationBuilder b) {
    b
      ..count = 0
      ..duration = 0;
  }

  /// The number of Dedicated Hosts the reservation is associated with.
  int get count;

  /// The currency in which the `upfrontPrice` and `hourlyPrice` amounts are specified. At this time, the only supported currency is `USD`.
  CurrencyCodeValues? get currencyCode;

  /// The length of the reservation's term, specified in seconds. Can be `31536000 (1 year)` | `94608000 (3 years)`.
  int get duration;

  /// The date and time that the reservation ends.
  DateTime? get end;

  /// The IDs of the Dedicated Hosts associated with the reservation.
  _i2.BuiltList<String>? get hostIdSet;

  /// The ID of the reservation that specifies the associated Dedicated Hosts.
  String? get hostReservationId;

  /// The hourly price of the reservation.
  String? get hourlyPrice;

  /// The instance family of the Dedicated Host Reservation. The instance family on the Dedicated Host must be the same in order for it to benefit from the reservation.
  String? get instanceFamily;

  /// The ID of the reservation. This remains the same regardless of which Dedicated Hosts are associated with it.
  String? get offeringId;

  /// The payment option selected for this reservation.
  PaymentOption? get paymentOption;

  /// The date and time that the reservation started.
  DateTime? get start;

  /// The state of the reservation.
  ReservationState? get state;

  /// The upfront price of the reservation.
  String? get upfrontPrice;

  /// Any tags assigned to the Dedicated Host Reservation.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        count,
        currencyCode,
        duration,
        end,
        hostIdSet,
        hostReservationId,
        hourlyPrice,
        instanceFamily,
        offeringId,
        paymentOption,
        start,
        state,
        upfrontPrice,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('HostReservation')
      ..add(
        'count',
        count,
      )
      ..add(
        'currencyCode',
        currencyCode,
      )
      ..add(
        'duration',
        duration,
      )
      ..add(
        'end',
        end,
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
        'offeringId',
        offeringId,
      )
      ..add(
        'paymentOption',
        paymentOption,
      )
      ..add(
        'start',
        start,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'upfrontPrice',
        upfrontPrice,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class HostReservationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<HostReservation> {
  const HostReservationEc2QuerySerializer() : super('HostReservation');

  @override
  Iterable<Type> get types => const [
        HostReservation,
        _$HostReservation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  HostReservation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HostReservationBuilder();
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
        case 'end':
          result.end = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
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
        case 'offeringId':
          result.offeringId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'paymentOption':
          result.paymentOption = (serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentOption),
          ) as PaymentOption);
        case 'start':
          result.start = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(ReservationState),
          ) as ReservationState);
        case 'upfrontPrice':
          result.upfrontPrice = (serializers.deserialize(
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
    HostReservation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'HostReservationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final HostReservation(
      :count,
      :currencyCode,
      :duration,
      :end,
      :hostIdSet,
      :hostReservationId,
      :hourlyPrice,
      :instanceFamily,
      :offeringId,
      :paymentOption,
      :start,
      :state,
      :upfrontPrice,
      :tags
    ) = object;
    result$
      ..add(const _i3.XmlElementName('Count'))
      ..add(serializers.serialize(
        count,
        specifiedType: const FullType(int),
      ));
    if (currencyCode != null) {
      result$
        ..add(const _i3.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          currencyCode,
          specifiedType: const FullType(CurrencyCodeValues),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Duration'))
      ..add(serializers.serialize(
        duration,
        specifiedType: const FullType(int),
      ));
    if (end != null) {
      result$
        ..add(const _i3.XmlElementName('End'))
        ..add(serializers.serialize(
          end,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (hostIdSet != null) {
      result$
        ..add(const _i3.XmlElementName('HostIdSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          hostIdSet,
          specifiedType: const FullType(
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
    if (offeringId != null) {
      result$
        ..add(const _i3.XmlElementName('OfferingId'))
        ..add(serializers.serialize(
          offeringId,
          specifiedType: const FullType(String),
        ));
    }
    if (paymentOption != null) {
      result$
        ..add(const _i3.XmlElementName('PaymentOption'))
        ..add(serializers.serialize(
          paymentOption,
          specifiedType: const FullType(PaymentOption),
        ));
    }
    if (start != null) {
      result$
        ..add(const _i3.XmlElementName('Start'))
        ..add(serializers.serialize(
          start,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(ReservationState),
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
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
