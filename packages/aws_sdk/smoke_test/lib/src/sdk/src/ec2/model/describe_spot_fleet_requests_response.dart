// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_spot_fleet_requests_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_request_config.dart';

part 'describe_spot_fleet_requests_response.g.dart';

/// Contains the output of DescribeSpotFleetRequests.
abstract class DescribeSpotFleetRequestsResponse
    with
        _i1.AWSEquatable<DescribeSpotFleetRequestsResponse>
    implements
        Built<DescribeSpotFleetRequestsResponse,
            DescribeSpotFleetRequestsResponseBuilder> {
  /// Contains the output of DescribeSpotFleetRequests.
  factory DescribeSpotFleetRequestsResponse({
    String? nextToken,
    List<SpotFleetRequestConfig>? spotFleetRequestConfigs,
  }) {
    return _$DescribeSpotFleetRequestsResponse._(
      nextToken: nextToken,
      spotFleetRequestConfigs: spotFleetRequestConfigs == null
          ? null
          : _i2.BuiltList(spotFleetRequestConfigs),
    );
  }

  /// Contains the output of DescribeSpotFleetRequests.
  factory DescribeSpotFleetRequestsResponse.build(
          [void Function(DescribeSpotFleetRequestsResponseBuilder) updates]) =
      _$DescribeSpotFleetRequestsResponse;

  const DescribeSpotFleetRequestsResponse._();

  /// Constructs a [DescribeSpotFleetRequestsResponse] from a [payload] and [response].
  factory DescribeSpotFleetRequestsResponse.fromResponse(
    DescribeSpotFleetRequestsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeSpotFleetRequestsResponse>>
      serializers = [DescribeSpotFleetRequestsResponseEc2QuerySerializer()];

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;

  /// Information about the configuration of your Spot Fleet.
  _i2.BuiltList<SpotFleetRequestConfig>? get spotFleetRequestConfigs;
  @override
  List<Object?> get props => [
        nextToken,
        spotFleetRequestConfigs,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeSpotFleetRequestsResponse')
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'spotFleetRequestConfigs',
            spotFleetRequestConfigs,
          );
    return helper.toString();
  }
}

class DescribeSpotFleetRequestsResponseEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeSpotFleetRequestsResponse> {
  const DescribeSpotFleetRequestsResponseEc2QuerySerializer()
      : super('DescribeSpotFleetRequestsResponse');

  @override
  Iterable<Type> get types => const [
        DescribeSpotFleetRequestsResponse,
        _$DescribeSpotFleetRequestsResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeSpotFleetRequestsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeSpotFleetRequestsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'spotFleetRequestConfigSet':
          result.spotFleetRequestConfigs
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SpotFleetRequestConfig)],
            ),
          ) as _i2.BuiltList<SpotFleetRequestConfig>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeSpotFleetRequestsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeSpotFleetRequestsResponseResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeSpotFleetRequestsResponse(
      :nextToken,
      :spotFleetRequestConfigs
    ) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (spotFleetRequestConfigs != null) {
      result$
        ..add(const _i3.XmlElementName('SpotFleetRequestConfigSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          spotFleetRequestConfigs,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(SpotFleetRequestConfig)],
          ),
        ));
    }
    return result$;
  }
}
