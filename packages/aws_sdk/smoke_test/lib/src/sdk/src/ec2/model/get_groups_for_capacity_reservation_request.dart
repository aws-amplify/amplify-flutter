// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_groups_for_capacity_reservation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_groups_for_capacity_reservation_request.g.dart';

abstract class GetGroupsForCapacityReservationRequest
    with
        _i1.HttpInput<GetGroupsForCapacityReservationRequest>,
        _i2.AWSEquatable<GetGroupsForCapacityReservationRequest>
    implements
        Built<GetGroupsForCapacityReservationRequest,
            GetGroupsForCapacityReservationRequestBuilder> {
  factory GetGroupsForCapacityReservationRequest({
    String? capacityReservationId,
    String? nextToken,
    int? maxResults,
    bool? dryRun,
  }) {
    maxResults ??= 0;
    dryRun ??= false;
    return _$GetGroupsForCapacityReservationRequest._(
      capacityReservationId: capacityReservationId,
      nextToken: nextToken,
      maxResults: maxResults,
      dryRun: dryRun,
    );
  }

  factory GetGroupsForCapacityReservationRequest.build(
      [void Function(GetGroupsForCapacityReservationRequestBuilder)
          updates]) = _$GetGroupsForCapacityReservationRequest;

  const GetGroupsForCapacityReservationRequest._();

  factory GetGroupsForCapacityReservationRequest.fromRequest(
    GetGroupsForCapacityReservationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<GetGroupsForCapacityReservationRequest>>
      serializers = [
    GetGroupsForCapacityReservationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetGroupsForCapacityReservationRequestBuilder b) {
    b
      ..maxResults = 0
      ..dryRun = false;
  }

  /// The ID of the Capacity Reservation. If you specify a Capacity Reservation that is shared with you, the operation returns only Capacity Reservation groups that you own.
  String? get capacityReservationId;

  /// The token to use to retrieve the next page of results.
  String? get nextToken;

  /// The maximum number of results to return for the request in a single page. The remaining results can be seen by sending another request with the returned `nextToken` value. This value can be between 5 and 500. If `maxResults` is given a larger value than 500, you receive an error.
  int get maxResults;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  GetGroupsForCapacityReservationRequest getPayload() => this;
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
        newBuiltValueToStringHelper('GetGroupsForCapacityReservationRequest')
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

class GetGroupsForCapacityReservationRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<GetGroupsForCapacityReservationRequest> {
  const GetGroupsForCapacityReservationRequestEc2QuerySerializer()
      : super('GetGroupsForCapacityReservationRequest');

  @override
  Iterable<Type> get types => const [
        GetGroupsForCapacityReservationRequest,
        _$GetGroupsForCapacityReservationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetGroupsForCapacityReservationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetGroupsForCapacityReservationRequestBuilder();
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
    GetGroupsForCapacityReservationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'GetGroupsForCapacityReservationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetGroupsForCapacityReservationRequest(
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
