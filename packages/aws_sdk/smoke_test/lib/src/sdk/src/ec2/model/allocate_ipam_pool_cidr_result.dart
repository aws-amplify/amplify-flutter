// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.allocate_ipam_pool_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_allocation.dart';

part 'allocate_ipam_pool_cidr_result.g.dart';

abstract class AllocateIpamPoolCidrResult
    with _i1.AWSEquatable<AllocateIpamPoolCidrResult>
    implements
        Built<AllocateIpamPoolCidrResult, AllocateIpamPoolCidrResultBuilder> {
  factory AllocateIpamPoolCidrResult({IpamPoolAllocation? ipamPoolAllocation}) {
    return _$AllocateIpamPoolCidrResult._(
        ipamPoolAllocation: ipamPoolAllocation);
  }

  factory AllocateIpamPoolCidrResult.build(
          [void Function(AllocateIpamPoolCidrResultBuilder) updates]) =
      _$AllocateIpamPoolCidrResult;

  const AllocateIpamPoolCidrResult._();

  /// Constructs a [AllocateIpamPoolCidrResult] from a [payload] and [response].
  factory AllocateIpamPoolCidrResult.fromResponse(
    AllocateIpamPoolCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<AllocateIpamPoolCidrResult>>
      serializers = [AllocateIpamPoolCidrResultEc2QuerySerializer()];

  /// Information about the allocation created.
  IpamPoolAllocation? get ipamPoolAllocation;
  @override
  List<Object?> get props => [ipamPoolAllocation];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllocateIpamPoolCidrResult')
      ..add(
        'ipamPoolAllocation',
        ipamPoolAllocation,
      );
    return helper.toString();
  }
}

class AllocateIpamPoolCidrResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AllocateIpamPoolCidrResult> {
  const AllocateIpamPoolCidrResultEc2QuerySerializer()
      : super('AllocateIpamPoolCidrResult');

  @override
  Iterable<Type> get types => const [
        AllocateIpamPoolCidrResult,
        _$AllocateIpamPoolCidrResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AllocateIpamPoolCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllocateIpamPoolCidrResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamPoolAllocation':
          result.ipamPoolAllocation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IpamPoolAllocation),
          ) as IpamPoolAllocation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AllocateIpamPoolCidrResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AllocateIpamPoolCidrResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AllocateIpamPoolCidrResult(:ipamPoolAllocation) = object;
    if (ipamPoolAllocation != null) {
      result$
        ..add(const _i2.XmlElementName('IpamPoolAllocation'))
        ..add(serializers.serialize(
          ipamPoolAllocation,
          specifiedType: const FullType(IpamPoolAllocation),
        ));
    }
    return result$;
  }
}
