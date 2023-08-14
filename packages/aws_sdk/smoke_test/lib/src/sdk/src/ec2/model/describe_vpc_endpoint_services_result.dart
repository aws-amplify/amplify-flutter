// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_vpc_endpoint_services_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/service_detail.dart';

part 'describe_vpc_endpoint_services_result.g.dart';

abstract class DescribeVpcEndpointServicesResult
    with
        _i1.AWSEquatable<DescribeVpcEndpointServicesResult>
    implements
        Built<DescribeVpcEndpointServicesResult,
            DescribeVpcEndpointServicesResultBuilder> {
  factory DescribeVpcEndpointServicesResult({
    List<String>? serviceNames,
    List<ServiceDetail>? serviceDetails,
    String? nextToken,
  }) {
    return _$DescribeVpcEndpointServicesResult._(
      serviceNames: serviceNames == null ? null : _i2.BuiltList(serviceNames),
      serviceDetails:
          serviceDetails == null ? null : _i2.BuiltList(serviceDetails),
      nextToken: nextToken,
    );
  }

  factory DescribeVpcEndpointServicesResult.build(
          [void Function(DescribeVpcEndpointServicesResultBuilder) updates]) =
      _$DescribeVpcEndpointServicesResult;

  const DescribeVpcEndpointServicesResult._();

  /// Constructs a [DescribeVpcEndpointServicesResult] from a [payload] and [response].
  factory DescribeVpcEndpointServicesResult.fromResponse(
    DescribeVpcEndpointServicesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeVpcEndpointServicesResult>>
      serializers = [DescribeVpcEndpointServicesResultEc2QuerySerializer()];

  /// The supported services.
  _i2.BuiltList<String>? get serviceNames;

  /// Information about the service.
  _i2.BuiltList<ServiceDetail>? get serviceDetails;

  /// The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.
  String? get nextToken;
  @override
  List<Object?> get props => [
        serviceNames,
        serviceDetails,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVpcEndpointServicesResult')
          ..add(
            'serviceNames',
            serviceNames,
          )
          ..add(
            'serviceDetails',
            serviceDetails,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeVpcEndpointServicesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeVpcEndpointServicesResult> {
  const DescribeVpcEndpointServicesResultEc2QuerySerializer()
      : super('DescribeVpcEndpointServicesResult');

  @override
  Iterable<Type> get types => const [
        DescribeVpcEndpointServicesResult,
        _$DescribeVpcEndpointServicesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVpcEndpointServicesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVpcEndpointServicesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'serviceNameSet':
          result.serviceNames.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'serviceDetailSet':
          result.serviceDetails.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ServiceDetail)],
            ),
          ) as _i2.BuiltList<ServiceDetail>));
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
    DescribeVpcEndpointServicesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVpcEndpointServicesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVpcEndpointServicesResult(
      :serviceNames,
      :serviceDetails,
      :nextToken
    ) = object;
    if (serviceNames != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceNameSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          serviceNames,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (serviceDetails != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceDetailSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          serviceDetails,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ServiceDetail)],
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
