// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_reserved_instances_listing_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'cancel_reserved_instances_listing_request.g.dart';

/// Contains the parameters for CancelReservedInstancesListing.
abstract class CancelReservedInstancesListingRequest
    with
        _i1.HttpInput<CancelReservedInstancesListingRequest>,
        _i2.AWSEquatable<CancelReservedInstancesListingRequest>
    implements
        Built<CancelReservedInstancesListingRequest,
            CancelReservedInstancesListingRequestBuilder> {
  /// Contains the parameters for CancelReservedInstancesListing.
  factory CancelReservedInstancesListingRequest(
      {String? reservedInstancesListingId}) {
    return _$CancelReservedInstancesListingRequest._(
        reservedInstancesListingId: reservedInstancesListingId);
  }

  /// Contains the parameters for CancelReservedInstancesListing.
  factory CancelReservedInstancesListingRequest.build(
      [void Function(CancelReservedInstancesListingRequestBuilder)
          updates]) = _$CancelReservedInstancesListingRequest;

  const CancelReservedInstancesListingRequest._();

  factory CancelReservedInstancesListingRequest.fromRequest(
    CancelReservedInstancesListingRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CancelReservedInstancesListingRequest>>
      serializers = [CancelReservedInstancesListingRequestEc2QuerySerializer()];

  /// The ID of the Reserved Instance listing.
  String? get reservedInstancesListingId;
  @override
  CancelReservedInstancesListingRequest getPayload() => this;
  @override
  List<Object?> get props => [reservedInstancesListingId];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelReservedInstancesListingRequest')
          ..add(
            'reservedInstancesListingId',
            reservedInstancesListingId,
          );
    return helper.toString();
  }
}

class CancelReservedInstancesListingRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CancelReservedInstancesListingRequest> {
  const CancelReservedInstancesListingRequestEc2QuerySerializer()
      : super('CancelReservedInstancesListingRequest');

  @override
  Iterable<Type> get types => const [
        CancelReservedInstancesListingRequest,
        _$CancelReservedInstancesListingRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelReservedInstancesListingRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelReservedInstancesListingRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'reservedInstancesListingId':
          result.reservedInstancesListingId = (serializers.deserialize(
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
    CancelReservedInstancesListingRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CancelReservedInstancesListingRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelReservedInstancesListingRequest(:reservedInstancesListingId) =
        object;
    if (reservedInstancesListingId != null) {
      result$
        ..add(const _i1.XmlElementName('ReservedInstancesListingId'))
        ..add(serializers.serialize(
          reservedInstancesListingId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
