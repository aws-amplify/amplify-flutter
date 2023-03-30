// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_pending_aggregation_requests_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_pending_aggregation_requests_request.g.dart';

abstract class DescribePendingAggregationRequestsRequest
    with
        _i1.HttpInput<DescribePendingAggregationRequestsRequest>,
        _i2.AWSEquatable<DescribePendingAggregationRequestsRequest>
    implements
        Built<DescribePendingAggregationRequestsRequest,
            DescribePendingAggregationRequestsRequestBuilder> {
  factory DescribePendingAggregationRequestsRequest({
    int? limit,
    String? nextToken,
  }) {
    return _$DescribePendingAggregationRequestsRequest._(
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory DescribePendingAggregationRequestsRequest.build(
      [void Function(DescribePendingAggregationRequestsRequestBuilder)
          updates]) = _$DescribePendingAggregationRequestsRequest;

  const DescribePendingAggregationRequestsRequest._();

  factory DescribePendingAggregationRequestsRequest.fromRequest(
    DescribePendingAggregationRequestsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribePendingAggregationRequestsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribePendingAggregationRequestsRequestBuilder b) {}

  /// The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, Config uses the default.
  int? get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribePendingAggregationRequestsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribePendingAggregationRequestsRequest');
    helper.add(
      'limit',
      limit,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribePendingAggregationRequestsRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribePendingAggregationRequestsRequest> {
  const DescribePendingAggregationRequestsRequestAwsJson11Serializer()
      : super('DescribePendingAggregationRequestsRequest');

  @override
  Iterable<Type> get types => const [
        DescribePendingAggregationRequestsRequest,
        _$DescribePendingAggregationRequestsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribePendingAggregationRequestsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribePendingAggregationRequestsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'Limit':
          if (value != null) {
            result.limit = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
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
    final payload = (object as DescribePendingAggregationRequestsRequest);
    final result = <Object?>[];
    if (payload.limit != null) {
      result
        ..add('Limit')
        ..add(serializers.serialize(
          payload.limit!,
          specifiedType: const FullType(int),
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
