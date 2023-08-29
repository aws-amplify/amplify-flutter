// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.cancelled_spot_instance_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/cancel_spot_instance_request_state.dart';

part 'cancelled_spot_instance_request.g.dart';

/// Describes a request to cancel a Spot Instance.
abstract class CancelledSpotInstanceRequest
    with
        _i1.AWSEquatable<CancelledSpotInstanceRequest>
    implements
        Built<CancelledSpotInstanceRequest,
            CancelledSpotInstanceRequestBuilder> {
  /// Describes a request to cancel a Spot Instance.
  factory CancelledSpotInstanceRequest({
    String? spotInstanceRequestId,
    CancelSpotInstanceRequestState? state,
  }) {
    return _$CancelledSpotInstanceRequest._(
      spotInstanceRequestId: spotInstanceRequestId,
      state: state,
    );
  }

  /// Describes a request to cancel a Spot Instance.
  factory CancelledSpotInstanceRequest.build(
          [void Function(CancelledSpotInstanceRequestBuilder) updates]) =
      _$CancelledSpotInstanceRequest;

  const CancelledSpotInstanceRequest._();

  static const List<_i2.SmithySerializer<CancelledSpotInstanceRequest>>
      serializers = [CancelledSpotInstanceRequestEc2QuerySerializer()];

  /// The ID of the Spot Instance request.
  String? get spotInstanceRequestId;

  /// The state of the Spot Instance request.
  CancelSpotInstanceRequestState? get state;
  @override
  List<Object?> get props => [
        spotInstanceRequestId,
        state,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CancelledSpotInstanceRequest')
      ..add(
        'spotInstanceRequestId',
        spotInstanceRequestId,
      )
      ..add(
        'state',
        state,
      );
    return helper.toString();
  }
}

class CancelledSpotInstanceRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CancelledSpotInstanceRequest> {
  const CancelledSpotInstanceRequestEc2QuerySerializer()
      : super('CancelledSpotInstanceRequest');

  @override
  Iterable<Type> get types => const [
        CancelledSpotInstanceRequest,
        _$CancelledSpotInstanceRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CancelledSpotInstanceRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelledSpotInstanceRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'spotInstanceRequestId':
          result.spotInstanceRequestId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(CancelSpotInstanceRequestState),
          ) as CancelSpotInstanceRequestState);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CancelledSpotInstanceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CancelledSpotInstanceRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CancelledSpotInstanceRequest(:spotInstanceRequestId, :state) = object;
    if (spotInstanceRequestId != null) {
      result$
        ..add(const _i2.XmlElementName('SpotInstanceRequestId'))
        ..add(serializers.serialize(
          spotInstanceRequestId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i2.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType:
              const FullType.nullable(CancelSpotInstanceRequestState),
        ));
    }
    return result$;
  }
}
