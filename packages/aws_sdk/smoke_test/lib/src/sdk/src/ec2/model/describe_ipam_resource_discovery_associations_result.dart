// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_ipam_resource_discovery_associations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery_association.dart';

part 'describe_ipam_resource_discovery_associations_result.g.dart';

abstract class DescribeIpamResourceDiscoveryAssociationsResult
    with
        _i1.AWSEquatable<DescribeIpamResourceDiscoveryAssociationsResult>
    implements
        Built<DescribeIpamResourceDiscoveryAssociationsResult,
            DescribeIpamResourceDiscoveryAssociationsResultBuilder> {
  factory DescribeIpamResourceDiscoveryAssociationsResult({
    List<IpamResourceDiscoveryAssociation>? ipamResourceDiscoveryAssociations,
    String? nextToken,
  }) {
    return _$DescribeIpamResourceDiscoveryAssociationsResult._(
      ipamResourceDiscoveryAssociations:
          ipamResourceDiscoveryAssociations == null
              ? null
              : _i2.BuiltList(ipamResourceDiscoveryAssociations),
      nextToken: nextToken,
    );
  }

  factory DescribeIpamResourceDiscoveryAssociationsResult.build(
      [void Function(DescribeIpamResourceDiscoveryAssociationsResultBuilder)
          updates]) = _$DescribeIpamResourceDiscoveryAssociationsResult;

  const DescribeIpamResourceDiscoveryAssociationsResult._();

  /// Constructs a [DescribeIpamResourceDiscoveryAssociationsResult] from a [payload] and [response].
  factory DescribeIpamResourceDiscoveryAssociationsResult.fromResponse(
    DescribeIpamResourceDiscoveryAssociationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeIpamResourceDiscoveryAssociationsResult>>
      serializers = [
    DescribeIpamResourceDiscoveryAssociationsResultEc2QuerySerializer()
  ];

  /// The resource discovery associations.
  _i2.BuiltList<IpamResourceDiscoveryAssociation>?
      get ipamResourceDiscoveryAssociations;

  /// Specify the pagination token from a previous request to retrieve the next page of results.
  String? get nextToken;
  @override
  List<Object?> get props => [
        ipamResourceDiscoveryAssociations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeIpamResourceDiscoveryAssociationsResult')
      ..add(
        'ipamResourceDiscoveryAssociations',
        ipamResourceDiscoveryAssociations,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeIpamResourceDiscoveryAssociationsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<
        DescribeIpamResourceDiscoveryAssociationsResult> {
  const DescribeIpamResourceDiscoveryAssociationsResultEc2QuerySerializer()
      : super('DescribeIpamResourceDiscoveryAssociationsResult');

  @override
  Iterable<Type> get types => const [
        DescribeIpamResourceDiscoveryAssociationsResult,
        _$DescribeIpamResourceDiscoveryAssociationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpamResourceDiscoveryAssociationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpamResourceDiscoveryAssociationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamResourceDiscoveryAssociationSet':
          result.ipamResourceDiscoveryAssociations
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpamResourceDiscoveryAssociation)],
            ),
          ) as _i2.BuiltList<IpamResourceDiscoveryAssociation>));
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
    DescribeIpamResourceDiscoveryAssociationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeIpamResourceDiscoveryAssociationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIpamResourceDiscoveryAssociationsResult(
      :ipamResourceDiscoveryAssociations,
      :nextToken
    ) = object;
    if (ipamResourceDiscoveryAssociations != null) {
      result$
        ..add(const _i3.XmlElementName('IpamResourceDiscoveryAssociationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipamResourceDiscoveryAssociations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IpamResourceDiscoveryAssociation)],
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
