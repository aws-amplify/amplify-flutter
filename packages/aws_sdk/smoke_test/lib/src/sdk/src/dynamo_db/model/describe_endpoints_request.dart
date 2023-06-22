// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.describe_endpoints_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_endpoints_request.g.dart';

abstract class DescribeEndpointsRequest
    with
        _i1.HttpInput<DescribeEndpointsRequest>,
        _i2.AWSEquatable<DescribeEndpointsRequest>
    implements
        Built<DescribeEndpointsRequest, DescribeEndpointsRequestBuilder>,
        _i1.EmptyPayload {
  factory DescribeEndpointsRequest() {
    return _$DescribeEndpointsRequest._();
  }

  factory DescribeEndpointsRequest.build(
          [void Function(DescribeEndpointsRequestBuilder) updates]) =
      _$DescribeEndpointsRequest;

  const DescribeEndpointsRequest._();

  factory DescribeEndpointsRequest.fromRequest(
    DescribeEndpointsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeEndpointsRequest>>
      serializers = [DescribeEndpointsRequestAwsJson10Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeEndpointsRequestBuilder b) {}
  @override
  DescribeEndpointsRequest getPayload() => this;
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeEndpointsRequest');
    return helper.toString();
  }
}

class DescribeEndpointsRequestAwsJson10Serializer
    extends _i1.StructuredSmithySerializer<DescribeEndpointsRequest> {
  const DescribeEndpointsRequestAwsJson10Serializer()
      : super('DescribeEndpointsRequest');

  @override
  Iterable<Type> get types => const [
        DescribeEndpointsRequest,
        _$DescribeEndpointsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  DescribeEndpointsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DescribeEndpointsRequestBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeEndpointsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      const <Object?>[];
}
