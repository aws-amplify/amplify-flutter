// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.purchase_host_reservation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/currency_code_values.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'purchase_host_reservation_request.g.dart';

abstract class PurchaseHostReservationRequest
    with
        _i1.HttpInput<PurchaseHostReservationRequest>,
        _i2.AWSEquatable<PurchaseHostReservationRequest>
    implements
        Built<PurchaseHostReservationRequest,
            PurchaseHostReservationRequestBuilder> {
  factory PurchaseHostReservationRequest({
    String? clientToken,
    CurrencyCodeValues? currencyCode,
    List<String>? hostIdSet,
    String? limitPrice,
    String? offeringId,
    List<TagSpecification>? tagSpecifications,
  }) {
    return _$PurchaseHostReservationRequest._(
      clientToken: clientToken,
      currencyCode: currencyCode,
      hostIdSet: hostIdSet == null ? null : _i3.BuiltList(hostIdSet),
      limitPrice: limitPrice,
      offeringId: offeringId,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
    );
  }

  factory PurchaseHostReservationRequest.build(
          [void Function(PurchaseHostReservationRequestBuilder) updates]) =
      _$PurchaseHostReservationRequest;

  const PurchaseHostReservationRequest._();

  factory PurchaseHostReservationRequest.fromRequest(
    PurchaseHostReservationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<PurchaseHostReservationRequest>>
      serializers = [PurchaseHostReservationRequestEc2QuerySerializer()];

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// The currency in which the `totalUpfrontPrice`, `LimitPrice`, and `totalHourlyPrice` amounts are specified. At this time, the only supported currency is `USD`.
  CurrencyCodeValues? get currencyCode;

  /// The IDs of the Dedicated Hosts with which the reservation will be associated.
  _i3.BuiltList<String>? get hostIdSet;

  /// The specified limit is checked against the total upfront cost of the reservation (calculated as the offering's upfront cost multiplied by the host count). If the total upfront cost is greater than the specified price limit, the request fails. This is used to ensure that the purchase does not exceed the expected upfront cost of the purchase. At this time, the only supported currency is `USD`. For example, to indicate a limit price of USD 100, specify 100.00.
  String? get limitPrice;

  /// The ID of the offering.
  String? get offeringId;

  /// The tags to apply to the Dedicated Host Reservation during purchase.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  PurchaseHostReservationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        clientToken,
        currencyCode,
        hostIdSet,
        limitPrice,
        offeringId,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PurchaseHostReservationRequest')
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'currencyCode',
        currencyCode,
      )
      ..add(
        'hostIdSet',
        hostIdSet,
      )
      ..add(
        'limitPrice',
        limitPrice,
      )
      ..add(
        'offeringId',
        offeringId,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      );
    return helper.toString();
  }
}

class PurchaseHostReservationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<PurchaseHostReservationRequest> {
  const PurchaseHostReservationRequestEc2QuerySerializer()
      : super('PurchaseHostReservationRequest');

  @override
  Iterable<Type> get types => const [
        PurchaseHostReservationRequest,
        _$PurchaseHostReservationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PurchaseHostReservationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PurchaseHostReservationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CurrencyCode':
          result.currencyCode = (serializers.deserialize(
            value,
            specifiedType: const FullType(CurrencyCodeValues),
          ) as CurrencyCodeValues);
        case 'HostIdSet':
          result.hostIdSet.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'LimitPrice':
          result.limitPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OfferingId':
          result.offeringId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PurchaseHostReservationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'PurchaseHostReservationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PurchaseHostReservationRequest(
      :clientToken,
      :currencyCode,
      :hostIdSet,
      :limitPrice,
      :offeringId,
      :tagSpecifications
    ) = object;
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (currencyCode != null) {
      result$
        ..add(const _i1.XmlElementName('CurrencyCode'))
        ..add(serializers.serialize(
          currencyCode,
          specifiedType: const FullType(CurrencyCodeValues),
        ));
    }
    if (hostIdSet != null) {
      result$
        ..add(const _i1.XmlElementName('HostIdSet'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          hostIdSet,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (limitPrice != null) {
      result$
        ..add(const _i1.XmlElementName('LimitPrice'))
        ..add(serializers.serialize(
          limitPrice,
          specifiedType: const FullType(String),
        ));
    }
    if (offeringId != null) {
      result$
        ..add(const _i1.XmlElementName('OfferingId'))
        ..add(serializers.serialize(
          offeringId,
          specifiedType: const FullType(String),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    return result$;
  }
}
