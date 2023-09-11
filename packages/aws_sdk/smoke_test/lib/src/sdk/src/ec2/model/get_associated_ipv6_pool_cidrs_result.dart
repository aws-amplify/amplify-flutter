// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_associated_ipv6_pool_cidrs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipv6_cidr_association.dart';

part 'get_associated_ipv6_pool_cidrs_result.g.dart';

abstract class GetAssociatedIpv6PoolCidrsResult
    with
        _i1.AWSEquatable<GetAssociatedIpv6PoolCidrsResult>
    implements
        Built<GetAssociatedIpv6PoolCidrsResult,
            GetAssociatedIpv6PoolCidrsResultBuilder> {
  factory GetAssociatedIpv6PoolCidrsResult({
    List<Ipv6CidrAssociation>? ipv6CidrAssociations,
    String? nextToken,
  }) {
    return _$GetAssociatedIpv6PoolCidrsResult._(
      ipv6CidrAssociations: ipv6CidrAssociations == null
          ? null
          : _i2.BuiltList(ipv6CidrAssociations),
      nextToken: nextToken,
    );
  }

  factory GetAssociatedIpv6PoolCidrsResult.build(
          [void Function(GetAssociatedIpv6PoolCidrsResultBuilder) updates]) =
      _$GetAssociatedIpv6PoolCidrsResult;

  const GetAssociatedIpv6PoolCidrsResult._();

  /// Constructs a [GetAssociatedIpv6PoolCidrsResult] from a [payload] and [response].
  factory GetAssociatedIpv6PoolCidrsResult.fromResponse(
    GetAssociatedIpv6PoolCidrsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetAssociatedIpv6PoolCidrsResult>>
      serializers = [GetAssociatedIpv6PoolCidrsResultEc2QuerySerializer()];

  /// Information about the IPv6 CIDR block associations.
  _i2.BuiltList<Ipv6CidrAssociation>? get ipv6CidrAssociations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        ipv6CidrAssociations,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('GetAssociatedIpv6PoolCidrsResult')
          ..add(
            'ipv6CidrAssociations',
            ipv6CidrAssociations,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class GetAssociatedIpv6PoolCidrsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GetAssociatedIpv6PoolCidrsResult> {
  const GetAssociatedIpv6PoolCidrsResultEc2QuerySerializer()
      : super('GetAssociatedIpv6PoolCidrsResult');

  @override
  Iterable<Type> get types => const [
        GetAssociatedIpv6PoolCidrsResult,
        _$GetAssociatedIpv6PoolCidrsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetAssociatedIpv6PoolCidrsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAssociatedIpv6PoolCidrsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipv6CidrAssociationSet':
          result.ipv6CidrAssociations.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Ipv6CidrAssociation)],
            ),
          ) as _i2.BuiltList<Ipv6CidrAssociation>));
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
    GetAssociatedIpv6PoolCidrsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetAssociatedIpv6PoolCidrsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetAssociatedIpv6PoolCidrsResult(:ipv6CidrAssociations, :nextToken) =
        object;
    if (ipv6CidrAssociations != null) {
      result$
        ..add(const _i3.XmlElementName('Ipv6CidrAssociationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipv6CidrAssociations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Ipv6CidrAssociation)],
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
