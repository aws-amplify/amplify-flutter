// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.deprovision_ipam_pool_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr.dart';

part 'deprovision_ipam_pool_cidr_result.g.dart';

abstract class DeprovisionIpamPoolCidrResult
    with
        _i1.AWSEquatable<DeprovisionIpamPoolCidrResult>
    implements
        Built<DeprovisionIpamPoolCidrResult,
            DeprovisionIpamPoolCidrResultBuilder> {
  factory DeprovisionIpamPoolCidrResult({IpamPoolCidr? ipamPoolCidr}) {
    return _$DeprovisionIpamPoolCidrResult._(ipamPoolCidr: ipamPoolCidr);
  }

  factory DeprovisionIpamPoolCidrResult.build(
          [void Function(DeprovisionIpamPoolCidrResultBuilder) updates]) =
      _$DeprovisionIpamPoolCidrResult;

  const DeprovisionIpamPoolCidrResult._();

  /// Constructs a [DeprovisionIpamPoolCidrResult] from a [payload] and [response].
  factory DeprovisionIpamPoolCidrResult.fromResponse(
    DeprovisionIpamPoolCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeprovisionIpamPoolCidrResult>>
      serializers = [DeprovisionIpamPoolCidrResultEc2QuerySerializer()];

  /// The deprovisioned pool CIDR.
  IpamPoolCidr? get ipamPoolCidr;
  @override
  List<Object?> get props => [ipamPoolCidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeprovisionIpamPoolCidrResult')
      ..add(
        'ipamPoolCidr',
        ipamPoolCidr,
      );
    return helper.toString();
  }
}

class DeprovisionIpamPoolCidrResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DeprovisionIpamPoolCidrResult> {
  const DeprovisionIpamPoolCidrResultEc2QuerySerializer()
      : super('DeprovisionIpamPoolCidrResult');

  @override
  Iterable<Type> get types => const [
        DeprovisionIpamPoolCidrResult,
        _$DeprovisionIpamPoolCidrResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeprovisionIpamPoolCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeprovisionIpamPoolCidrResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamPoolCidr':
          result.ipamPoolCidr.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IpamPoolCidr),
          ) as IpamPoolCidr));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeprovisionIpamPoolCidrResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeprovisionIpamPoolCidrResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeprovisionIpamPoolCidrResult(:ipamPoolCidr) = object;
    if (ipamPoolCidr != null) {
      result$
        ..add(const _i2.XmlElementName('IpamPoolCidr'))
        ..add(serializers.serialize(
          ipamPoolCidr,
          specifiedType: const FullType(IpamPoolCidr),
        ));
    }
    return result$;
  }
}
