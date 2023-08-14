// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancel_spot_fleet_requests_error_item; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_fleet_requests_error.dart';

part 'cancel_spot_fleet_requests_error_item.g.dart';

/// Describes a Spot Fleet request that was not successfully canceled.
abstract class CancelSpotFleetRequestsErrorItem
    with
        _i1.AWSEquatable<CancelSpotFleetRequestsErrorItem>
    implements
        Built<CancelSpotFleetRequestsErrorItem,
            CancelSpotFleetRequestsErrorItemBuilder> {
  /// Describes a Spot Fleet request that was not successfully canceled.
  factory CancelSpotFleetRequestsErrorItem({
    CancelSpotFleetRequestsError? error,
    String? spotFleetRequestId,
  }) {
    return _$CancelSpotFleetRequestsErrorItem._(
      error: error,
      spotFleetRequestId: spotFleetRequestId,
    );
  }

  /// Describes a Spot Fleet request that was not successfully canceled.
  factory CancelSpotFleetRequestsErrorItem.build(
          [void Function(CancelSpotFleetRequestsErrorItemBuilder) updates]) =
      _$CancelSpotFleetRequestsErrorItem;

  const CancelSpotFleetRequestsErrorItem._();

  static const List<_i2.SmithySerializer<CancelSpotFleetRequestsErrorItem>>
      serializers = [CancelSpotFleetRequestsErrorItemEc2QuerySerializer()];

  /// The error.
  CancelSpotFleetRequestsError? get error;

  /// The ID of the Spot Fleet request.
  String? get spotFleetRequestId;
  @override
  List<Object?> get props => [
        error,
        spotFleetRequestId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CancelSpotFleetRequestsErrorItem')
          ..add(
            'error',
            error,
          )
          ..add(
            'spotFleetRequestId',
            spotFleetRequestId,
          );
    return helper.toString();
  }
}

class CancelSpotFleetRequestsErrorItemEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CancelSpotFleetRequestsErrorItem> {
  const CancelSpotFleetRequestsErrorItemEc2QuerySerializer()
      : super('CancelSpotFleetRequestsErrorItem');

  @override
  Iterable<Type> get types => const [
        CancelSpotFleetRequestsErrorItem,
        _$CancelSpotFleetRequestsErrorItem,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelSpotFleetRequestsErrorItem deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelSpotFleetRequestsErrorItemBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'error':
          result.error.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CancelSpotFleetRequestsError),
          ) as CancelSpotFleetRequestsError));
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
    CancelSpotFleetRequestsErrorItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CancelSpotFleetRequestsErrorItemResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelSpotFleetRequestsErrorItem(:error, :spotFleetRequestId) =
        object;
    if (error != null) {
      result$
        ..add(const _i2.XmlElementName('Error'))
        ..add(serializers.serialize(
          error,
          specifiedType: const FullType(CancelSpotFleetRequestsError),
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
