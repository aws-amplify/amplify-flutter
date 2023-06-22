// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.describe_endpoints_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/endpoint.dart' as _i2;

part 'describe_endpoints_response.g.dart';

abstract class DescribeEndpointsResponse
    with _i1.AWSEquatable<DescribeEndpointsResponse>
    implements
        Built<DescribeEndpointsResponse, DescribeEndpointsResponseBuilder> {
  factory DescribeEndpointsResponse({required List<_i2.Endpoint> endpoints}) {
    return _$DescribeEndpointsResponse._(endpoints: _i3.BuiltList(endpoints));
  }

  factory DescribeEndpointsResponse.build(
          [void Function(DescribeEndpointsResponseBuilder) updates]) =
      _$DescribeEndpointsResponse;

  const DescribeEndpointsResponse._();

  /// Constructs a [DescribeEndpointsResponse] from a [payload] and [response].
  factory DescribeEndpointsResponse.fromResponse(
    DescribeEndpointsResponse payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<DescribeEndpointsResponse>>
      serializers = [DescribeEndpointsResponseAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeEndpointsResponseBuilder b) {}

  /// List of endpoints.
  _i3.BuiltList<_i2.Endpoint> get endpoints;
  @override
  List<Object?> get props => [endpoints];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeEndpointsResponse')
      ..add(
        'endpoints',
        endpoints,
      );
    return helper.toString();
  }
}

class DescribeEndpointsResponseAwsJson10Serializer
    extends _i4.StructuredSmithySerializer<DescribeEndpointsResponse> {
  const DescribeEndpointsResponseAwsJson10Serializer()
      : super('DescribeEndpointsResponse');

  @override
  Iterable<Type> get types => const [
        DescribeEndpointsResponse,
        _$DescribeEndpointsResponse,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeEndpointsResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeEndpointsResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Endpoints':
          result.endpoints.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.Endpoint)],
            ),
          ) as _i3.BuiltList<_i2.Endpoint>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeEndpointsResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final DescribeEndpointsResponse(:endpoints) = object;
    result$.addAll([
      'Endpoints',
      serializers.serialize(
        endpoints,
        specifiedType: const FullType(
          _i3.BuiltList,
          [FullType(_i2.Endpoint)],
        ),
      ),
    ]);
    return result$;
  }
}
