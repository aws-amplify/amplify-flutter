// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_aggregation_authorizations_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregation_authorization.dart'
    as _i2;

part 'describe_aggregation_authorizations_response.g.dart';

abstract class DescribeAggregationAuthorizationsResponse
    with
        _i1.AWSEquatable<DescribeAggregationAuthorizationsResponse>
    implements
        Built<DescribeAggregationAuthorizationsResponse,
            DescribeAggregationAuthorizationsResponseBuilder> {
  factory DescribeAggregationAuthorizationsResponse({
    List<_i2.AggregationAuthorization>? aggregationAuthorizations,
    String? nextToken,
  }) {
    return _$DescribeAggregationAuthorizationsResponse._(
      aggregationAuthorizations: aggregationAuthorizations == null
          ? null
          : _i3.BuiltList(aggregationAuthorizations),
      nextToken: nextToken,
    );
  }

  factory DescribeAggregationAuthorizationsResponse.build(
      [void Function(DescribeAggregationAuthorizationsResponseBuilder)
          updates]) = _$DescribeAggregationAuthorizationsResponse;

  const DescribeAggregationAuthorizationsResponse._();

  /// Constructs a [DescribeAggregationAuthorizationsResponse] from a [payload] and [response].
  factory DescribeAggregationAuthorizationsResponse.fromResponse(
    DescribeAggregationAuthorizationsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribeAggregationAuthorizationsResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAggregationAuthorizationsResponseBuilder b) {}

  /// Returns a list of authorizations granted to various aggregator accounts and regions.
  _i3.BuiltList<_i2.AggregationAuthorization>? get aggregationAuthorizations;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  List<Object?> get props => [
        aggregationAuthorizations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeAggregationAuthorizationsResponse');
    helper.add(
      'aggregationAuthorizations',
      aggregationAuthorizations,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeAggregationAuthorizationsResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribeAggregationAuthorizationsResponse> {
  const DescribeAggregationAuthorizationsResponseAwsJson11Serializer()
      : super('DescribeAggregationAuthorizationsResponse');

  @override
  Iterable<Type> get types => const [
        DescribeAggregationAuthorizationsResponse,
        _$DescribeAggregationAuthorizationsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeAggregationAuthorizationsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAggregationAuthorizationsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'AggregationAuthorizations':
          if (value != null) {
            result.aggregationAuthorizations.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.AggregationAuthorization)],
              ),
            ) as _i3.BuiltList<_i2.AggregationAuthorization>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DescribeAggregationAuthorizationsResponse);
    final result = <Object?>[];
    if (payload.aggregationAuthorizations != null) {
      result
        ..add('AggregationAuthorizations')
        ..add(serializers.serialize(
          payload.aggregationAuthorizations!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.AggregationAuthorization)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
