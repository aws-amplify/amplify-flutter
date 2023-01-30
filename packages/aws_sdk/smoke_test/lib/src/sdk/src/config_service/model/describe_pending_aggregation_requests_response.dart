// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.config_service.model.describe_pending_aggregation_requests_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/model/pending_aggregation_request.dart'
    as _i2;

part 'describe_pending_aggregation_requests_response.g.dart';

abstract class DescribePendingAggregationRequestsResponse
    with
        _i1.AWSEquatable<DescribePendingAggregationRequestsResponse>
    implements
        Built<DescribePendingAggregationRequestsResponse,
            DescribePendingAggregationRequestsResponseBuilder> {
  factory DescribePendingAggregationRequestsResponse({
    String? nextToken,
    List<_i2.PendingAggregationRequest>? pendingAggregationRequests,
  }) {
    return _$DescribePendingAggregationRequestsResponse._(
      nextToken: nextToken,
      pendingAggregationRequests: pendingAggregationRequests == null
          ? null
          : _i3.BuiltList(pendingAggregationRequests),
    );
  }

  factory DescribePendingAggregationRequestsResponse.build(
      [void Function(DescribePendingAggregationRequestsResponseBuilder)
          updates]) = _$DescribePendingAggregationRequestsResponse;

  const DescribePendingAggregationRequestsResponse._();

  /// Constructs a [DescribePendingAggregationRequestsResponse] from a [payload] and [response].
  factory DescribePendingAggregationRequestsResponse.fromResponse(
    DescribePendingAggregationRequestsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    DescribePendingAggregationRequestsResponseAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribePendingAggregationRequestsResponseBuilder b) {}

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;

  /// Returns a PendingAggregationRequests object.
  _i3.BuiltList<_i2.PendingAggregationRequest>? get pendingAggregationRequests;
  @override
  List<Object?> get props => [
        nextToken,
        pendingAggregationRequests,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribePendingAggregationRequestsResponse');
    helper.add(
      'nextToken',
      nextToken,
    );
    helper.add(
      'pendingAggregationRequests',
      pendingAggregationRequests,
    );
    return helper.toString();
  }
}

class DescribePendingAggregationRequestsResponseAwsJson11Serializer extends _i4
    .StructuredSmithySerializer<DescribePendingAggregationRequestsResponse> {
  const DescribePendingAggregationRequestsResponseAwsJson11Serializer()
      : super('DescribePendingAggregationRequestsResponse');

  @override
  Iterable<Type> get types => const [
        DescribePendingAggregationRequestsResponse,
        _$DescribePendingAggregationRequestsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribePendingAggregationRequestsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribePendingAggregationRequestsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PendingAggregationRequests':
          if (value != null) {
            result.pendingAggregationRequests.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.PendingAggregationRequest)],
              ),
            ) as _i3.BuiltList<_i2.PendingAggregationRequest>));
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
    final payload = (object as DescribePendingAggregationRequestsResponse);
    final result = <Object?>[];
    if (payload.nextToken != null) {
      result
        ..add('NextToken')
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.pendingAggregationRequests != null) {
      result
        ..add('PendingAggregationRequests')
        ..add(serializers.serialize(
          payload.pendingAggregationRequests!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(_i2.PendingAggregationRequest)],
          ),
        ));
    }
    return result;
  }
}
