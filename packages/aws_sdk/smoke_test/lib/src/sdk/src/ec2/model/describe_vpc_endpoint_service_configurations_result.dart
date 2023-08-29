// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpc_endpoint_service_configurations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/service_configuration.dart';

part 'describe_vpc_endpoint_service_configurations_result.g.dart';

abstract class DescribeVpcEndpointServiceConfigurationsResult
    with
        _i1.AWSEquatable<DescribeVpcEndpointServiceConfigurationsResult>
    implements
        Built<DescribeVpcEndpointServiceConfigurationsResult,
            DescribeVpcEndpointServiceConfigurationsResultBuilder> {
  factory DescribeVpcEndpointServiceConfigurationsResult({
    List<ServiceConfiguration>? serviceConfigurations,
    String? nextToken,
  }) {
    return _$DescribeVpcEndpointServiceConfigurationsResult._(
      serviceConfigurations: serviceConfigurations == null
          ? null
          : _i2.BuiltList(serviceConfigurations),
      nextToken: nextToken,
    );
  }

  factory DescribeVpcEndpointServiceConfigurationsResult.build(
      [void Function(DescribeVpcEndpointServiceConfigurationsResultBuilder)
          updates]) = _$DescribeVpcEndpointServiceConfigurationsResult;

  const DescribeVpcEndpointServiceConfigurationsResult._();

  /// Constructs a [DescribeVpcEndpointServiceConfigurationsResult] from a [payload] and [response].
  factory DescribeVpcEndpointServiceConfigurationsResult.fromResponse(
    DescribeVpcEndpointServiceConfigurationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeVpcEndpointServiceConfigurationsResult>>
      serializers = [
    DescribeVpcEndpointServiceConfigurationsResultEc2QuerySerializer()
  ];

  /// Information about the services.
  _i2.BuiltList<ServiceConfiguration>? get serviceConfigurations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        serviceConfigurations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeVpcEndpointServiceConfigurationsResult')
      ..add(
        'serviceConfigurations',
        serviceConfigurations,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeVpcEndpointServiceConfigurationsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DescribeVpcEndpointServiceConfigurationsResult> {
  const DescribeVpcEndpointServiceConfigurationsResultEc2QuerySerializer()
      : super('DescribeVpcEndpointServiceConfigurationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointServiceConfigurationsResult,
        _$DescribeVpcEndpointServiceConfigurationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointServiceConfigurationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointServiceConfigurationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'serviceConfigurationSet':
          result.serviceConfigurations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ServiceConfiguration)],
            ),
          ) as _i2.BuiltList<ServiceConfiguration>));
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
    DescribeVpcEndpointServiceConfigurationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVpcEndpointServiceConfigurationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcEndpointServiceConfigurationsResult(
      :serviceConfigurations,
      :nextToken
    ) = object;
    if (serviceConfigurations != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceConfigurationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          serviceConfigurations,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ServiceConfiguration)],
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
