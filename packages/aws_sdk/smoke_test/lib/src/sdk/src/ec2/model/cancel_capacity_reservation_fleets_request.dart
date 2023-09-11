// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_capacity_reservation_fleets_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'cancel_capacity_reservation_fleets_request.g.dart';

abstract class CancelCapacityReservationFleetsRequest
    with
        _i1.HttpInput<CancelCapacityReservationFleetsRequest>,
        _i2.AWSEquatable<CancelCapacityReservationFleetsRequest>
    implements
        Built<CancelCapacityReservationFleetsRequest,
            CancelCapacityReservationFleetsRequestBuilder> {
  factory CancelCapacityReservationFleetsRequest({
    bool? dryRun,
    List<String>? capacityReservationFleetIds,
  }) {
    dryRun ??= false;
    return _$CancelCapacityReservationFleetsRequest._(
      dryRun: dryRun,
      capacityReservationFleetIds: capacityReservationFleetIds == null
          ? null
          : _i3.BuiltList(capacityReservationFleetIds),
    );
  }

  factory CancelCapacityReservationFleetsRequest.build(
      [void Function(CancelCapacityReservationFleetsRequestBuilder)
          updates]) = _$CancelCapacityReservationFleetsRequest;

  const CancelCapacityReservationFleetsRequest._();

  factory CancelCapacityReservationFleetsRequest.fromRequest(
    CancelCapacityReservationFleetsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<CancelCapacityReservationFleetsRequest>>
      serializers = [
    CancelCapacityReservationFleetsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CancelCapacityReservationFleetsRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The IDs of the Capacity Reservation Fleets to cancel.
  _i3.BuiltList<String>? get capacityReservationFleetIds;
  @override
  CancelCapacityReservationFleetsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        capacityReservationFleetIds,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelCapacityReservationFleetsRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'capacityReservationFleetIds',
            capacityReservationFleetIds,
          );
    return helper.toString();
  }
}

class CancelCapacityReservationFleetsRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CancelCapacityReservationFleetsRequest> {
  const CancelCapacityReservationFleetsRequestEc2QuerySerializer()
      : super('CancelCapacityReservationFleetsRequest');

  @override
  Iterable<Type> get types => const [
        CancelCapacityReservationFleetsRequest,
        _$CancelCapacityReservationFleetsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelCapacityReservationFleetsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelCapacityReservationFleetsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'CapacityReservationFleetId':
          result.capacityReservationFleetIds
              .replace((const _i1.XmlBuiltListSerializer(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CancelCapacityReservationFleetsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CancelCapacityReservationFleetsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelCapacityReservationFleetsRequest(
      :dryRun,
      :capacityReservationFleetIds
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (capacityReservationFleetIds != null) {
      result$
        ..add(const _i1.XmlElementName('CapacityReservationFleetId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          capacityReservationFleetIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
