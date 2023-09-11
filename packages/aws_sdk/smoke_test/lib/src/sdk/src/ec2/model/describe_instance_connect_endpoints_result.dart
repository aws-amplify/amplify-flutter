// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instance_connect_endpoints_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ec2_instance_connect_endpoint.dart';

part 'describe_instance_connect_endpoints_result.g.dart';

abstract class DescribeInstanceConnectEndpointsResult
    with
        _i1.AWSEquatable<DescribeInstanceConnectEndpointsResult>
    implements
        Built<DescribeInstanceConnectEndpointsResult,
            DescribeInstanceConnectEndpointsResultBuilder> {
  factory DescribeInstanceConnectEndpointsResult({
    List<Ec2InstanceConnectEndpoint>? instanceConnectEndpoints,
    String? nextToken,
  }) {
    return _$DescribeInstanceConnectEndpointsResult._(
      instanceConnectEndpoints: instanceConnectEndpoints == null
          ? null
          : _i2.BuiltList(instanceConnectEndpoints),
      nextToken: nextToken,
    );
  }

  factory DescribeInstanceConnectEndpointsResult.build(
      [void Function(DescribeInstanceConnectEndpointsResultBuilder)
          updates]) = _$DescribeInstanceConnectEndpointsResult;

  const DescribeInstanceConnectEndpointsResult._();

  /// Constructs a [DescribeInstanceConnectEndpointsResult] from a [payload] and [response].
  factory DescribeInstanceConnectEndpointsResult.fromResponse(
    DescribeInstanceConnectEndpointsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeInstanceConnectEndpointsResult>>
      serializers = [
    DescribeInstanceConnectEndpointsResultEc2QuerySerializer()
  ];

  /// Information about the EC2 Instance Connect Endpoints.
  _i2.BuiltList<Ec2InstanceConnectEndpoint>? get instanceConnectEndpoints;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        instanceConnectEndpoints,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeInstanceConnectEndpointsResult')
          ..add(
            'instanceConnectEndpoints',
            instanceConnectEndpoints,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeInstanceConnectEndpointsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeInstanceConnectEndpointsResult> {
  const DescribeInstanceConnectEndpointsResultEc2QuerySerializer()
      : super('DescribeInstanceConnectEndpointsResult');

  @override
  Iterable<Type> get types => const [
        DescribeInstanceConnectEndpointsResult,
        _$DescribeInstanceConnectEndpointsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstanceConnectEndpointsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstanceConnectEndpointsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceConnectEndpointSet':
          result.instanceConnectEndpoints
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Ec2InstanceConnectEndpoint)],
            ),
          ) as _i2.BuiltList<Ec2InstanceConnectEndpoint>));
        case 'nextToken':
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
    DescribeInstanceConnectEndpointsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeInstanceConnectEndpointsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstanceConnectEndpointsResult(
      :instanceConnectEndpoints,
      :nextToken
    ) = object;
    if (instanceConnectEndpoints != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceConnectEndpointSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceConnectEndpoints,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Ec2InstanceConnectEndpoint)],
          ),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
