// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_host_reservation_purchase_preview_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_host_reservation_purchase_preview_request.g.dart';

abstract class GetHostReservationPurchasePreviewRequest
    with
        _i1.HttpInput<GetHostReservationPurchasePreviewRequest>,
        _i2.AWSEquatable<GetHostReservationPurchasePreviewRequest>
    implements
        Built<GetHostReservationPurchasePreviewRequest,
            GetHostReservationPurchasePreviewRequestBuilder> {
  factory GetHostReservationPurchasePreviewRequest({
    List<String>? hostIdSet,
    String? offeringId,
  }) {
    return _$GetHostReservationPurchasePreviewRequest._(
      hostIdSet: hostIdSet == null ? null : _i3.BuiltList(hostIdSet),
      offeringId: offeringId,
    );
  }

  factory GetHostReservationPurchasePreviewRequest.build(
      [void Function(GetHostReservationPurchasePreviewRequestBuilder)
          updates]) = _$GetHostReservationPurchasePreviewRequest;

  const GetHostReservationPurchasePreviewRequest._();

  factory GetHostReservationPurchasePreviewRequest.fromRequest(
    GetHostReservationPurchasePreviewRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GetHostReservationPurchasePreviewRequest>>
      serializers = [
    GetHostReservationPurchasePreviewRequestEc2QuerySerializer()
  ];

  /// The IDs of the Dedicated Hosts with which the reservation is associated.
  _i3.BuiltList<String>? get hostIdSet;

  /// The offering ID of the reservation.
  String? get offeringId;
  @override
  GetHostReservationPurchasePreviewRequest getPayload() => this;
  @override
  List<Object?> get props => [
        hostIdSet,
        offeringId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetHostReservationPurchasePreviewRequest')
          ..add(
            'hostIdSet',
            hostIdSet,
          )
          ..add(
            'offeringId',
            offeringId,
          );
    return helper.toString();
  }
}

class GetHostReservationPurchasePreviewRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<GetHostReservationPurchasePreviewRequest> {
  const GetHostReservationPurchasePreviewRequestEc2QuerySerializer()
      : super('GetHostReservationPurchasePreviewRequest');

  @override
  Iterable<Type> get types => const [
        GetHostReservationPurchasePreviewRequest,
        _$GetHostReservationPurchasePreviewRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetHostReservationPurchasePreviewRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetHostReservationPurchasePreviewRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'OfferingId':
          result.offeringId = (serializers.deserialize(
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
    GetHostReservationPurchasePreviewRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetHostReservationPurchasePreviewRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetHostReservationPurchasePreviewRequest(:hostIdSet, :offeringId) =
        object;
    if (hostIdSet != null) {
      result$
        ..add(const _i1.XmlElementName('HostIdSet'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          hostIdSet,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
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
    return result$;
  }
}
