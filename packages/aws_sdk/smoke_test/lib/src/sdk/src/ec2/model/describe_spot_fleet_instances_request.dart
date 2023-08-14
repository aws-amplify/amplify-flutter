// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_spot_fleet_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_spot_fleet_instances_request.g.dart';

/// Contains the parameters for DescribeSpotFleetInstances.
abstract class DescribeSpotFleetInstancesRequest
    with
        _i1.HttpInput<DescribeSpotFleetInstancesRequest>,
        _i2.AWSEquatable<DescribeSpotFleetInstancesRequest>
    implements
        Built<DescribeSpotFleetInstancesRequest,
            DescribeSpotFleetInstancesRequestBuilder> {
  /// Contains the parameters for DescribeSpotFleetInstances.
  factory DescribeSpotFleetInstancesRequest({
    bool? dryRun,
    int? maxResults,
    String? nextToken,
    String? spotFleetRequestId,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeSpotFleetInstancesRequest._(
      dryRun: dryRun,
      maxResults: maxResults,
      nextToken: nextToken,
      spotFleetRequestId: spotFleetRequestId,
    );
  }

  /// Contains the parameters for DescribeSpotFleetInstances.
  factory DescribeSpotFleetInstancesRequest.build(
          [void Function(DescribeSpotFleetInstancesRequestBuilder) updates]) =
      _$DescribeSpotFleetInstancesRequest;

  const DescribeSpotFleetInstancesRequest._();

  factory DescribeSpotFleetInstancesRequest.fromRequest(
    DescribeSpotFleetInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeSpotFleetInstancesRequest>>
      serializers = [DescribeSpotFleetInstancesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeSpotFleetInstancesRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  int get maxResults;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;

  /// The ID of the Spot Fleet request.
  String? get spotFleetRequestId;
  @override
  DescribeSpotFleetInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        maxResults,
        nextToken,
        spotFleetRequestId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotFleetInstancesRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'maxResults',
            maxResults,
          )
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'spotFleetRequestId',
            spotFleetRequestId,
          );
    return helper.toString();
  }
}

class DescribeSpotFleetInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeSpotFleetInstancesRequest> {
  const DescribeSpotFleetInstancesRequestEc2QuerySerializer()
      : super('DescribeSpotFleetInstancesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeSpotFleetInstancesRequest,
        _$DescribeSpotFleetInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotFleetInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotFleetInstancesRequestBuilder();
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
        case 'maxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    DescribeSpotFleetInstancesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeSpotFleetInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSpotFleetInstancesRequest(
      :dryRun,
      :maxResults,
      :nextToken,
      :spotFleetRequestId
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (spotFleetRequestId != null) {
      result$
        ..add(const _i1.XmlElementName('SpotFleetRequestId'))
        ..add(serializers.serialize(
          spotFleetRequestId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
