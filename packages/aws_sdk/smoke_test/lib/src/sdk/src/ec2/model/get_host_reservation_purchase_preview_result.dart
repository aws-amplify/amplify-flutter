// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_host_reservation_purchase_preview_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/purchase.dart';

part 'get_host_reservation_purchase_preview_result.g.dart';

abstract class GetHostReservationPurchasePreviewResult
    with
        _i1.AWSEquatable<GetHostReservationPurchasePreviewResult>
    implements
        Built<GetHostReservationPurchasePreviewResult,
            GetHostReservationPurchasePreviewResultBuilder> {
  factory GetHostReservationPurchasePreviewResult({
    CurrencyCodeValues? currencyCode,
    List<Purchase>? purchase,
    String? totalHourlyPrice,
    String? totalUpfrontPrice,
  }) {
    return _$GetHostReservationPurchasePreviewResult._(
      currencyCode: currencyCode,
      purchase: purchase == null ? null : _i2.BuiltList(purchase),
      totalHourlyPrice: totalHourlyPrice,
      totalUpfrontPrice: totalUpfrontPrice,
    );
  }

  factory GetHostReservationPurchasePreviewResult.build(
      [void Function(GetHostReservationPurchasePreviewResultBuilder)
          updates]) = _$GetHostReservationPurchasePreviewResult;

  const GetHostReservationPurchasePreviewResult._();

  /// Constructs a [GetHostReservationPurchasePreviewResult] from a [payload] and [response].
  factory GetHostReservationPurchasePreviewResult.fromResponse(
    GetHostReservationPurchasePreviewResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<GetHostReservationPurchasePreviewResult>>
      serializers = [
    GetHostReservationPurchasePreviewResultEc2QuerySerializer()
  ];

  /// The currency in which the `totalUpfrontPrice` and `totalHourlyPrice` amounts are specified. At this time, the only supported currency is `USD`.
  CurrencyCodeValues? get currencyCode;

  /// The purchase information of the Dedicated Host reservation and the Dedicated Hosts associated with it.
  _i2.BuiltList<Purchase>? get purchase;

  /// The potential total hourly price of the reservation per hour.
  String? get totalHourlyPrice;

  /// The potential total upfront price. This is billed immediately.
  String? get totalUpfrontPrice;
  @override
  List<Object?> get props => [
        currencyCode,
        purchase,
        totalHourlyPrice,
        totalUpfrontPrice,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetHostReservationPurchasePreviewResult')
          ..add(
            'currencyCode',
            currencyCode,
          )
          ..add(
            'purchase',
            purchase,
          )
          ..add(
            'totalHourlyPrice',
            totalHourlyPrice,
          )
          ..add(
            'totalUpfrontPrice',
            totalUpfrontPrice,
          );
    return helper.toString();
  }
}

class GetHostReservationPurchasePreviewResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<GetHostReservationPurchasePreviewResult> {
  const GetHostReservationPurchasePreviewResultEc2QuerySerializer()
      : super('GetHostReservationPurchasePreviewResult');

  @override
  Iterable<Type> get types => const [
        GetHostReservationPurchasePreviewResult,
        _$GetHostReservationPurchasePreviewResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetHostReservationPurchasePreviewResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetHostReservationPurchasePreviewResultBuilder();
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
        case 'purchase':
          result.purchase.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Purchase)],
            ),
          ) as _i2.BuiltList<Purchase>));
        case 'totalHourlyPrice':
          result.totalHourlyPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'totalUpfrontPrice':
          result.totalUpfrontPrice = (serializers.deserialize(
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
    GetHostReservationPurchasePreviewResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetHostReservationPurchasePreviewResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetHostReservationPurchasePreviewResult(
      :currencyCode,
      :purchase,
      :totalHourlyPrice,
      :totalUpfrontPrice
    ) = object;
    if (currencyCode != null) {
      result$
        ..add(const _i3.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          currencyCode,
          specifiedType: const FullType.nullable(CurrencyCodeValues),
        ));
    }
    if (purchase != null) {
      result$
        ..add(const _i3.XmlElementName('Purchase'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          purchase,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Purchase)],
          ),
        ));
    }
    if (totalHourlyPrice != null) {
      result$
        ..add(const _i3.XmlElementName('TotalHourlyPrice'))
        ..add(serializers.serialize(
          totalHourlyPrice,
          specifiedType: const FullType(String),
        ));
    }
    if (totalUpfrontPrice != null) {
      result$
        ..add(const _i3.XmlElementName('TotalUpfrontPrice'))
        ..add(serializers.serialize(
          totalUpfrontPrice,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
