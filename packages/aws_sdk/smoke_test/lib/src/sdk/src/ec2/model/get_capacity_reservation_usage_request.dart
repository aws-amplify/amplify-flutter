// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_capacity_reservation_usage_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_capacity_reservation_usage_request.g.dart';

abstract class GetCapacityReservationUsageRequest
    with
        _i1.HttpInput<GetCapacityReservationUsageRequest>,
        _i2.AWSEquatable<GetCapacityReservationUsageRequest>
    implements
        Built<GetCapacityReservationUsageRequest,
            GetCapacityReservationUsageRequestBuilder> {
  factory GetCapacityReservationUsageRequest({
    String? capacityReservationId,
    String? nextToken,
    int? maxResults,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$GetCapacityReservationUsageRequest._(
      capacityReservationId: capacityReservationId,
      nextToken: nextToken,
      maxResults: maxResults,
      dryRun: dryRun,
    );
  }

  factory GetCapacityReservationUsageRequest.build(
          [void Function(GetCapacityReservationUsageRequestBuilder) updates]) =
      _$GetCapacityReservationUsageRequest;

  const GetCapacityReservationUsageRequest._();

  factory GetCapacityReservationUsageRequest.fromRequest(
    GetCapacityReservationUsageRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<GetCapacityReservationUsageRequest>>
      serializers = [GetCapacityReservationUsageRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetCapacityReservationUsageRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The ID of the Capacity Reservation.
  String? get capacityReservationId;

  /// The token to use to retrieve the next page of results.
  String? get nextToken;

  /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `nextToken` value. This value can be between 5 and 500. If `maxResults` is given a larger value than 500, you receive an error.
  ///
  /// Valid range: Minimum value of 1. Maximum value of 1000.
  int get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetCapacityReservationUsageRequest getPayload() => this;
  @override
  List<Object?> get props => [
        capacityReservationId,
        nextToken,
        maxResults,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetCapacityReservationUsageRequest')
          ..add(
            'capacityReservationId',
            capacityReservationId,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class GetCapacityReservationUsageRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<GetCapacityReservationUsageRequest> {
  const GetCapacityReservationUsageRequestEc2QuerySerializer()
      : super('GetCapacityReservationUsageRequest');

  @override
  Iterable<Type> get types => const [
        GetCapacityReservationUsageRequest,
        _$GetCapacityReservationUsageRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetCapacityReservationUsageRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetCapacityReservationUsageRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CapacityReservationId':
          result.capacityReservationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'MaxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetCapacityReservationUsageRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetCapacityReservationUsageRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetCapacityReservationUsageRequest(
      :capacityReservationId,
      :nextToken,
      :maxResults,
      :dryRun
    ) = object;
    if (capacityReservationId != null) {
      result$
        ..add(const _i1.XmlElementName('CapacityReservationId'))
        ..add(serializers.serialize(
          capacityReservationId,
          specifiedType: const FullType(String),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
