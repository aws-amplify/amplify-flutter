// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_ipam_resource_discoveries_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery.dart';

part 'describe_ipam_resource_discoveries_result.g.dart';

abstract class DescribeIpamResourceDiscoveriesResult
    with
        _i1.AWSEquatable<DescribeIpamResourceDiscoveriesResult>
    implements
        Built<DescribeIpamResourceDiscoveriesResult,
            DescribeIpamResourceDiscoveriesResultBuilder> {
  factory DescribeIpamResourceDiscoveriesResult({
    List<IpamResourceDiscovery>? ipamResourceDiscoveries,
    String? nextToken,
  }) {
    return _$DescribeIpamResourceDiscoveriesResult._(
      ipamResourceDiscoveries: ipamResourceDiscoveries == null
          ? null
          : _i2.BuiltList(ipamResourceDiscoveries),
      nextToken: nextToken,
    );
  }

  factory DescribeIpamResourceDiscoveriesResult.build(
      [void Function(DescribeIpamResourceDiscoveriesResultBuilder)
          updates]) = _$DescribeIpamResourceDiscoveriesResult;

  const DescribeIpamResourceDiscoveriesResult._();

  /// Constructs a [DescribeIpamResourceDiscoveriesResult] from a [payload] and [response].
  factory DescribeIpamResourceDiscoveriesResult.fromResponse(
    DescribeIpamResourceDiscoveriesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeIpamResourceDiscoveriesResult>>
      serializers = [DescribeIpamResourceDiscoveriesResultEc2QuerySerializer()];

  /// The resource discoveries.
  _i2.BuiltList<IpamResourceDiscovery>? get ipamResourceDiscoveries;

  /// Specify the pagination token from a previous request to retrieve the next page of results.
  String? get nextToken;
  @override
  List<Object?> get props => [
        ipamResourceDiscoveries,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeIpamResourceDiscoveriesResult')
          ..add(
            'ipamResourceDiscoveries',
            ipamResourceDiscoveries,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeIpamResourceDiscoveriesResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeIpamResourceDiscoveriesResult> {
  const DescribeIpamResourceDiscoveriesResultEc2QuerySerializer()
      : super('DescribeIpamResourceDiscoveriesResult');

  @override
  Iterable<Type> get types => const [
        DescribeIpamResourceDiscoveriesResult,
        _$DescribeIpamResourceDiscoveriesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpamResourceDiscoveriesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpamResourceDiscoveriesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamResourceDiscoverySet':
          result.ipamResourceDiscoveries
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpamResourceDiscovery)],
            ),
          ) as _i2.BuiltList<IpamResourceDiscovery>));
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
    DescribeIpamResourceDiscoveriesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeIpamResourceDiscoveriesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIpamResourceDiscoveriesResult(
      :ipamResourceDiscoveries,
      :nextToken
    ) = object;
    if (ipamResourceDiscoveries != null) {
      result$
        ..add(const _i3.XmlElementName('IpamResourceDiscoverySet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipamResourceDiscoveries,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(IpamResourceDiscovery)],
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
