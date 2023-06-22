// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.describe_aggregation_authorizations_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_aggregation_authorizations_request.g.dart';

abstract class DescribeAggregationAuthorizationsRequest
    with
        _i1.HttpInput<DescribeAggregationAuthorizationsRequest>,
        _i2.AWSEquatable<DescribeAggregationAuthorizationsRequest>
    implements
        Built<DescribeAggregationAuthorizationsRequest,
            DescribeAggregationAuthorizationsRequestBuilder> {
  factory DescribeAggregationAuthorizationsRequest({
    int? limit,
    String? nextToken,
  }) {
    limit ??= 0;
    return _$DescribeAggregationAuthorizationsRequest._(
      limit: limit,
      nextToken: nextToken,
    );
  }

  factory DescribeAggregationAuthorizationsRequest.build(
      [void Function(DescribeAggregationAuthorizationsRequestBuilder)
          updates]) = _$DescribeAggregationAuthorizationsRequest;

  const DescribeAggregationAuthorizationsRequest._();

  factory DescribeAggregationAuthorizationsRequest.fromRequest(
    DescribeAggregationAuthorizationsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<DescribeAggregationAuthorizationsRequest>>
      serializers = [
    DescribeAggregationAuthorizationsRequestAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeAggregationAuthorizationsRequestBuilder b) {
    b.limit = 0;
  }

  /// The maximum number of AggregationAuthorizations returned on each page. The default is maximum. If you specify 0, Config uses the default.
  int get limit;

  /// The `nextToken` string returned on a previous page that you use to get the next page of results in a paginated response.
  String? get nextToken;
  @override
  DescribeAggregationAuthorizationsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        limit,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeAggregationAuthorizationsRequest')
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

class DescribeAggregationAuthorizationsRequestAwsJson11Serializer extends _i1
    .StructuredSmithySerializer<DescribeAggregationAuthorizationsRequest> {
  const DescribeAggregationAuthorizationsRequestAwsJson11Serializer()
      : super('DescribeAggregationAuthorizationsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeAggregationAuthorizationsRequest,
        _$DescribeAggregationAuthorizationsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  DescribeAggregationAuthorizationsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeAggregationAuthorizationsRequestBuilder();
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
    DescribeAggregationAuthorizationsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeAggregationAuthorizationsRequest(:limit, :nextToken) = object;
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
