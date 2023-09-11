// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_ipam_pool_allocations_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_allocation.dart';

part 'get_ipam_pool_allocations_result.g.dart';

abstract class GetIpamPoolAllocationsResult
    with
        _i1.AWSEquatable<GetIpamPoolAllocationsResult>
    implements
        Built<GetIpamPoolAllocationsResult,
            GetIpamPoolAllocationsResultBuilder> {
  factory GetIpamPoolAllocationsResult({
    List<IpamPoolAllocation>? ipamPoolAllocations,
    String? nextToken,
  }) {
    return _$GetIpamPoolAllocationsResult._(
      ipamPoolAllocations: ipamPoolAllocations == null
          ? null
          : _i2.BuiltList(ipamPoolAllocations),
      nextToken: nextToken,
    );
  }

  factory GetIpamPoolAllocationsResult.build(
          [void Function(GetIpamPoolAllocationsResultBuilder) updates]) =
      _$GetIpamPoolAllocationsResult;

  const GetIpamPoolAllocationsResult._();

  /// Constructs a [GetIpamPoolAllocationsResult] from a [payload] and [response].
  factory GetIpamPoolAllocationsResult.fromResponse(
    GetIpamPoolAllocationsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetIpamPoolAllocationsResult>>
      serializers = [GetIpamPoolAllocationsResultEc2QuerySerializer()];

  /// The IPAM pool allocations you want information on.
  _i2.BuiltList<IpamPoolAllocation>? get ipamPoolAllocations;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        ipamPoolAllocations,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIpamPoolAllocationsResult')
      ..add(
        'ipamPoolAllocations',
        ipamPoolAllocations,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class GetIpamPoolAllocationsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GetIpamPoolAllocationsResult> {
  const GetIpamPoolAllocationsResultEc2QuerySerializer()
      : super('GetIpamPoolAllocationsResult');

  @override
  Iterable<Type> get types => const [
        GetIpamPoolAllocationsResult,
        _$GetIpamPoolAllocationsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamPoolAllocationsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamPoolAllocationsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamPoolAllocationSet':
          result.ipamPoolAllocations.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpamPoolAllocation)],
            ),
          ) as _i2.BuiltList<IpamPoolAllocation>));
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
    GetIpamPoolAllocationsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetIpamPoolAllocationsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetIpamPoolAllocationsResult(:ipamPoolAllocations, :nextToken) =
        object;
    if (ipamPoolAllocations != null) {
      result$
        ..add(const _i3.XmlElementName('IpamPoolAllocationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipamPoolAllocations,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IpamPoolAllocation)],
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
