// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.request_spot_fleet_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_request_config_data.dart';

part 'request_spot_fleet_request.g.dart';

/// Contains the parameters for RequestSpotFleet.
abstract class RequestSpotFleetRequest
    with
        _i1.HttpInput<RequestSpotFleetRequest>,
        _i2.AWSEquatable<RequestSpotFleetRequest>
    implements Built<RequestSpotFleetRequest, RequestSpotFleetRequestBuilder> {
  /// Contains the parameters for RequestSpotFleet.
  factory RequestSpotFleetRequest({
    bool? dryRun,
    SpotFleetRequestConfigData? spotFleetRequestConfig,
  }) {
    dryRun ??= false;
    return _$RequestSpotFleetRequest._(
      dryRun: dryRun,
      spotFleetRequestConfig: spotFleetRequestConfig,
    );
  }

  /// Contains the parameters for RequestSpotFleet.
  factory RequestSpotFleetRequest.build(
          [void Function(RequestSpotFleetRequestBuilder) updates]) =
      _$RequestSpotFleetRequest;

  const RequestSpotFleetRequest._();

  factory RequestSpotFleetRequest.fromRequest(
    RequestSpotFleetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<RequestSpotFleetRequest>> serializers =
      [RequestSpotFleetRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RequestSpotFleetRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The configuration for the Spot Fleet request.
  SpotFleetRequestConfigData? get spotFleetRequestConfig;
  @override
  RequestSpotFleetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        spotFleetRequestConfig,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RequestSpotFleetRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'spotFleetRequestConfig',
        spotFleetRequestConfig,
      );
    return helper.toString();
  }
}

class RequestSpotFleetRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<RequestSpotFleetRequest> {
  const RequestSpotFleetRequestEc2QuerySerializer()
      : super('RequestSpotFleetRequest');

  @override
  Iterable<Type> get types => const [
        RequestSpotFleetRequest,
        _$RequestSpotFleetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  RequestSpotFleetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RequestSpotFleetRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'spotFleetRequestConfig':
          result.spotFleetRequestConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SpotFleetRequestConfigData),
          ) as SpotFleetRequestConfigData));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RequestSpotFleetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'RequestSpotFleetRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final RequestSpotFleetRequest(:dryRun, :spotFleetRequestConfig) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (spotFleetRequestConfig != null) {
      result$
        ..add(const _i1.XmlElementName('SpotFleetRequestConfig'))
        ..add(serializers.serialize(
          spotFleetRequestConfig,
          specifiedType: const FullType(SpotFleetRequestConfigData),
        ));
    }
    return result$;
  }
}
