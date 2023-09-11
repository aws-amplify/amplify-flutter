// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_spot_fleet_requests_success_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/batch_state.dart';

part 'cancel_spot_fleet_requests_success_item.g.dart';

/// Describes a Spot Fleet request that was successfully canceled.
abstract class CancelSpotFleetRequestsSuccessItem
    with
        _i1.AWSEquatable<CancelSpotFleetRequestsSuccessItem>
    implements
        Built<CancelSpotFleetRequestsSuccessItem,
            CancelSpotFleetRequestsSuccessItemBuilder> {
  /// Describes a Spot Fleet request that was successfully canceled.
  factory CancelSpotFleetRequestsSuccessItem({
    BatchState? currentSpotFleetRequestState,
    BatchState? previousSpotFleetRequestState,
    String? spotFleetRequestId,
  }) {
    return _$CancelSpotFleetRequestsSuccessItem._(
      currentSpotFleetRequestState: currentSpotFleetRequestState,
      previousSpotFleetRequestState: previousSpotFleetRequestState,
      spotFleetRequestId: spotFleetRequestId,
    );
  }

  /// Describes a Spot Fleet request that was successfully canceled.
  factory CancelSpotFleetRequestsSuccessItem.build(
          [void Function(CancelSpotFleetRequestsSuccessItemBuilder) updates]) =
      _$CancelSpotFleetRequestsSuccessItem;

  const CancelSpotFleetRequestsSuccessItem._();

  static const List<_i2.SmithySerializer<CancelSpotFleetRequestsSuccessItem>>
      serializers = [CancelSpotFleetRequestsSuccessItemEc2QuerySerializer()];

  /// The current state of the Spot Fleet request.
  BatchState? get currentSpotFleetRequestState;

  /// The previous state of the Spot Fleet request.
  BatchState? get previousSpotFleetRequestState;

  /// The ID of the Spot Fleet request.
  String? get spotFleetRequestId;
  @override
  List<Object?> get props => [
        currentSpotFleetRequestState,
        previousSpotFleetRequestState,
        spotFleetRequestId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelSpotFleetRequestsSuccessItem')
          ..add(
            'currentSpotFleetRequestState',
            currentSpotFleetRequestState,
          )
          ..add(
            'previousSpotFleetRequestState',
            previousSpotFleetRequestState,
          )
          ..add(
            'spotFleetRequestId',
            spotFleetRequestId,
          );
    return helper.toString();
  }
}

class CancelSpotFleetRequestsSuccessItemEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CancelSpotFleetRequestsSuccessItem> {
  const CancelSpotFleetRequestsSuccessItemEc2QuerySerializer()
      : super('CancelSpotFleetRequestsSuccessItem');

  @override
  Iterable<Type> get types => const [
        CancelSpotFleetRequestsSuccessItem,
        _$CancelSpotFleetRequestsSuccessItem,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelSpotFleetRequestsSuccessItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelSpotFleetRequestsSuccessItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'currentSpotFleetRequestState':
          result.currentSpotFleetRequestState = (serializers.deserialize(
            value,
            specifiedType: const FullType(BatchState),
          ) as BatchState);
        case 'previousSpotFleetRequestState':
          result.previousSpotFleetRequestState = (serializers.deserialize(
            value,
            specifiedType: const FullType(BatchState),
          ) as BatchState);
        case 'spotFleetRequestId':
          result.spotFleetRequestId = (serializers.deserialize(
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
    CancelSpotFleetRequestsSuccessItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CancelSpotFleetRequestsSuccessItemResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelSpotFleetRequestsSuccessItem(
      :currentSpotFleetRequestState,
      :previousSpotFleetRequestState,
      :spotFleetRequestId
    ) = object;
    if (currentSpotFleetRequestState != null) {
      result$
        ..add(const _i2.XmlElementName('CurrentSpotFleetRequestState'))
        ..add(serializers.serialize(
          currentSpotFleetRequestState,
          specifiedType: const FullType(BatchState),
        ));
    }
    if (previousSpotFleetRequestState != null) {
      result$
        ..add(const _i2.XmlElementName('PreviousSpotFleetRequestState'))
        ..add(serializers.serialize(
          previousSpotFleetRequestState,
          specifiedType: const FullType(BatchState),
        ));
    }
    if (spotFleetRequestId != null) {
      result$
        ..add(const _i2.XmlElementName('SpotFleetRequestId'))
        ..add(serializers.serialize(
          spotFleetRequestId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
