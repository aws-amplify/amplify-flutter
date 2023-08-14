// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.provision_ipam_pool_cidr_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_cidr.dart';

part 'provision_ipam_pool_cidr_result.g.dart';

abstract class ProvisionIpamPoolCidrResult
    with _i1.AWSEquatable<ProvisionIpamPoolCidrResult>
    implements
        Built<ProvisionIpamPoolCidrResult, ProvisionIpamPoolCidrResultBuilder> {
  factory ProvisionIpamPoolCidrResult({IpamPoolCidr? ipamPoolCidr}) {
    return _$ProvisionIpamPoolCidrResult._(ipamPoolCidr: ipamPoolCidr);
  }

  factory ProvisionIpamPoolCidrResult.build(
          [void Function(ProvisionIpamPoolCidrResultBuilder) updates]) =
      _$ProvisionIpamPoolCidrResult;

  const ProvisionIpamPoolCidrResult._();

  /// Constructs a [ProvisionIpamPoolCidrResult] from a [payload] and [response].
  factory ProvisionIpamPoolCidrResult.fromResponse(
    ProvisionIpamPoolCidrResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ProvisionIpamPoolCidrResult>>
      serializers = [ProvisionIpamPoolCidrResultEc2QuerySerializer()];

  /// Information about the provisioned CIDR.
  IpamPoolCidr? get ipamPoolCidr;
  @override
  List<Object?> get props => [ipamPoolCidr];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProvisionIpamPoolCidrResult')
      ..add(
        'ipamPoolCidr',
        ipamPoolCidr,
      );
    return helper.toString();
  }
}

class ProvisionIpamPoolCidrResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ProvisionIpamPoolCidrResult> {
  const ProvisionIpamPoolCidrResultEc2QuerySerializer()
      : super('ProvisionIpamPoolCidrResult');

  @override
  Iterable<Type> get types => const [
        ProvisionIpamPoolCidrResult,
        _$ProvisionIpamPoolCidrResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProvisionIpamPoolCidrResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionIpamPoolCidrResultBuilder();
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
    ProvisionIpamPoolCidrResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ProvisionIpamPoolCidrResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ProvisionIpamPoolCidrResult(:ipamPoolCidr) = object;
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
