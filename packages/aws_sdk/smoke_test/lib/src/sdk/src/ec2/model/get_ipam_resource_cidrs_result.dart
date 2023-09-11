// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.get_ipam_resource_cidrs_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_cidr.dart';

part 'get_ipam_resource_cidrs_result.g.dart';

abstract class GetIpamResourceCidrsResult
    with _i1.AWSEquatable<GetIpamResourceCidrsResult>
    implements
        Built<GetIpamResourceCidrsResult, GetIpamResourceCidrsResultBuilder> {
  factory GetIpamResourceCidrsResult({
    String? nextToken,
    List<IpamResourceCidr>? ipamResourceCidrs,
  }) {
    return _$GetIpamResourceCidrsResult._(
      nextToken: nextToken,
      ipamResourceCidrs:
          ipamResourceCidrs == null ? null : _i2.BuiltList(ipamResourceCidrs),
    );
  }

  factory GetIpamResourceCidrsResult.build(
          [void Function(GetIpamResourceCidrsResultBuilder) updates]) =
      _$GetIpamResourceCidrsResult;

  const GetIpamResourceCidrsResult._();

  /// Constructs a [GetIpamResourceCidrsResult] from a [payload] and [response].
  factory GetIpamResourceCidrsResult.fromResponse(
    GetIpamResourceCidrsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<GetIpamResourceCidrsResult>>
      serializers = [GetIpamResourceCidrsResultEc2QuerySerializer()];

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// The resource CIDRs.
  _i2.BuiltList<IpamResourceCidr>? get ipamResourceCidrs;
  @override
  List<Object?> get props => [
        nextToken,
        ipamResourceCidrs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetIpamResourceCidrsResult')
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'ipamResourceCidrs',
        ipamResourceCidrs,
      );
    return helper.toString();
  }
}

class GetIpamResourceCidrsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<GetIpamResourceCidrsResult> {
  const GetIpamResourceCidrsResultEc2QuerySerializer()
      : super('GetIpamResourceCidrsResult');

  @override
  Iterable<Type> get types => const [
        GetIpamResourceCidrsResult,
        _$GetIpamResourceCidrsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  GetIpamResourceCidrsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetIpamResourceCidrsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamResourceCidrSet':
          result.ipamResourceCidrs.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpamResourceCidr)],
            ),
          ) as _i2.BuiltList<IpamResourceCidr>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    GetIpamResourceCidrsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'GetIpamResourceCidrsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final GetIpamResourceCidrsResult(:nextToken, :ipamResourceCidrs) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamResourceCidrs != null) {
      result$
        ..add(const _i3.XmlElementName('IpamResourceCidrSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipamResourceCidrs,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IpamResourceCidr)],
          ),
        ));
    }
    return result$;
  }
}
