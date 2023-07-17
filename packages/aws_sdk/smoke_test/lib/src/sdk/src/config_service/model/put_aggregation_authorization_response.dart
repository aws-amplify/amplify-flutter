// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.config_service.model.put_aggregation_authorization_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/config_service/model/aggregation_authorization.dart'
    as _i2;

part 'put_aggregation_authorization_response.g.dart';

abstract class PutAggregationAuthorizationResponse
    with
        _i1.AWSEquatable<PutAggregationAuthorizationResponse>
    implements
        Built<PutAggregationAuthorizationResponse,
            PutAggregationAuthorizationResponseBuilder> {
  factory PutAggregationAuthorizationResponse(
      {_i2.AggregationAuthorization? aggregationAuthorization}) {
    return _$PutAggregationAuthorizationResponse._(
        aggregationAuthorization: aggregationAuthorization);
  }

  factory PutAggregationAuthorizationResponse.build(
          [void Function(PutAggregationAuthorizationResponseBuilder) updates]) =
      _$PutAggregationAuthorizationResponse;

  const PutAggregationAuthorizationResponse._();

  /// Constructs a [PutAggregationAuthorizationResponse] from a [payload] and [response].
  factory PutAggregationAuthorizationResponse.fromResponse(
    PutAggregationAuthorizationResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<PutAggregationAuthorizationResponse>>
      serializers = [PutAggregationAuthorizationResponseAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutAggregationAuthorizationResponseBuilder b) {}

  /// Returns an AggregationAuthorization object.
  _i2.AggregationAuthorization? get aggregationAuthorization;
  @override
  List<Object?> get props => [aggregationAuthorization];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutAggregationAuthorizationResponse')
          ..add(
            'aggregationAuthorization',
            aggregationAuthorization,
          );
    return helper.toString();
  }
}

class PutAggregationAuthorizationResponseAwsJson11Serializer extends _i3
    .StructuredSmithySerializer<PutAggregationAuthorizationResponse> {
  const PutAggregationAuthorizationResponseAwsJson11Serializer()
      : super('PutAggregationAuthorizationResponse');

  @override
  Iterable<Type> get types => const [
        PutAggregationAuthorizationResponse,
        _$PutAggregationAuthorizationResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  PutAggregationAuthorizationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PutAggregationAuthorizationResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AggregationAuthorization':
          result.aggregationAuthorization.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AggregationAuthorization),
          ) as _i2.AggregationAuthorization));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    PutAggregationAuthorizationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final PutAggregationAuthorizationResponse(:aggregationAuthorization) =
        object;
    if (aggregationAuthorization != null) {
      result$
        ..add('AggregationAuthorization')
        ..add(serializers.serialize(
          aggregationAuthorization,
          specifiedType: const FullType(_i2.AggregationAuthorization),
        ));
    }
    return result$;
  }
}
