// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    limit ??= 0;
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

  static const List<
          _i1.SmithySerializer<DescribePendingAggregationRequestsRequest>>
      serializers = [
    DescribePendingAggregationRequestsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribePendingAggregationRequestsRequestBuilder b) {
    b.limit = 0;
  }

  /// The maximum number of evaluation results returned on each page. The default is maximum. If you specify 0, Config uses the default.
  int get limit;

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
    final helper =
        newBuiltValueToStringHelper('DescribePendingAggregationRequestsRequest')
          ..add(
            'limit',
            limit,
          )
          ..add(
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Limit':
          result.limit = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'NextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribePendingAggregationRequestsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribePendingAggregationRequestsRequest(:limit, :nextToken) =
        object;
    result$.addAll([
      'Limit',
      serializers.serialize(
        limit,
        specifiedType: const FullType(int),
      ),
    ]);
    if (nextToken != null) {
      result$
        ..add('NextToken')
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
