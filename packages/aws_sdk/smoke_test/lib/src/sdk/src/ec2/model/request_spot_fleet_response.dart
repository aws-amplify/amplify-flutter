// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.request_spot_fleet_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'request_spot_fleet_response.g.dart';

/// Contains the output of RequestSpotFleet.
abstract class RequestSpotFleetResponse
    with _i1.AWSEquatable<RequestSpotFleetResponse>
    implements
        Built<RequestSpotFleetResponse, RequestSpotFleetResponseBuilder> {
  /// Contains the output of RequestSpotFleet.
  factory RequestSpotFleetResponse({String? spotFleetRequestId}) {
    return _$RequestSpotFleetResponse._(spotFleetRequestId: spotFleetRequestId);
  }

  /// Contains the output of RequestSpotFleet.
  factory RequestSpotFleetResponse.build(
          [void Function(RequestSpotFleetResponseBuilder) updates]) =
      _$RequestSpotFleetResponse;

  const RequestSpotFleetResponse._();

  /// Constructs a [RequestSpotFleetResponse] from a [payload] and [response].
  factory RequestSpotFleetResponse.fromResponse(
    RequestSpotFleetResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<RequestSpotFleetResponse>>
      serializers = [RequestSpotFleetResponseEc2QuerySerializer()];

  /// The ID of the Spot Fleet request.
  String? get spotFleetRequestId;
  @override
  List<Object?> get props => [spotFleetRequestId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestSpotFleetResponse')
      ..add(
        'spotFleetRequestId',
        spotFleetRequestId,
      );
    return helper.toString();
  }
}

class RequestSpotFleetResponseEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<RequestSpotFleetResponse> {
  const RequestSpotFleetResponseEc2QuerySerializer()
      : super('RequestSpotFleetResponse');

  @override
  Iterable<Type> get types => const [
        RequestSpotFleetResponse,
        _$RequestSpotFleetResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RequestSpotFleetResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestSpotFleetResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
    RequestSpotFleetResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'RequestSpotFleetResponseResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RequestSpotFleetResponse(:spotFleetRequestId) = object;
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
