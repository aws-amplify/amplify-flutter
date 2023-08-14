// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_ipam_discovered_resource_cidrs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_discovered_resource_cidr.dart';

part 'get_ipam_discovered_resource_cidrs_result.g.dart';

abstract class GetIpamDiscoveredResourceCidrsResult
    with
        _i1.AWSEquatable<GetIpamDiscoveredResourceCidrsResult>
    implements
        Built<GetIpamDiscoveredResourceCidrsResult,
            GetIpamDiscoveredResourceCidrsResultBuilder> {
  factory GetIpamDiscoveredResourceCidrsResult({
    List<IpamDiscoveredResourceCidr>? ipamDiscoveredResourceCidrs,
    String? nextToken,
  }) {
    return _$GetIpamDiscoveredResourceCidrsResult._(
      ipamDiscoveredResourceCidrs: ipamDiscoveredResourceCidrs == null
          ? null
          : _i2.BuiltList(ipamDiscoveredResourceCidrs),
      nextToken: nextToken,
    );
  }

  factory GetIpamDiscoveredResourceCidrsResult.build(
      [void Function(GetIpamDiscoveredResourceCidrsResultBuilder)
          updates]) = _$GetIpamDiscoveredResourceCidrsResult;

  const GetIpamDiscoveredResourceCidrsResult._();

  /// Constructs a [GetIpamDiscoveredResourceCidrsResult] from a [payload] and [response].
  factory GetIpamDiscoveredResourceCidrsResult.fromResponse(
    GetIpamDiscoveredResourceCidrsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetIpamDiscoveredResourceCidrsResult>>
      serializers = [GetIpamDiscoveredResourceCidrsResultEc2QuerySerializer()];

  /// Discovered resource CIDRs.
  _i2.BuiltList<IpamDiscoveredResourceCidr>? get ipamDiscoveredResourceCidrs;

  /// Specify the pagination token from a previous request to retrieve the next page of results.
  String? get nextToken;
  @override
  List<Object?> get props => [
        ipamDiscoveredResourceCidrs,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetIpamDiscoveredResourceCidrsResult')
          ..add(
            'ipamDiscoveredResourceCidrs',
            ipamDiscoveredResourceCidrs,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class GetIpamDiscoveredResourceCidrsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<GetIpamDiscoveredResourceCidrsResult> {
  const GetIpamDiscoveredResourceCidrsResultEc2QuerySerializer()
      : super('GetIpamDiscoveredResourceCidrsResult');

  @override
  Iterable<Type> get types => const [
        GetIpamDiscoveredResourceCidrsResult,
        _$GetIpamDiscoveredResourceCidrsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamDiscoveredResourceCidrsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamDiscoveredResourceCidrsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamDiscoveredResourceCidrSet':
          result.ipamDiscoveredResourceCidrs
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpamDiscoveredResourceCidr)],
            ),
          ) as _i2.BuiltList<IpamDiscoveredResourceCidr>));
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
    GetIpamDiscoveredResourceCidrsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetIpamDiscoveredResourceCidrsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetIpamDiscoveredResourceCidrsResult(
      :ipamDiscoveredResourceCidrs,
      :nextToken
    ) = object;
    if (ipamDiscoveredResourceCidrs != null) {
      result$
        ..add(const _i3.XmlElementName('IpamDiscoveredResourceCidrSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipamDiscoveredResourceCidrs,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(IpamDiscoveredResourceCidr)],
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
