// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.disassociate_ipam_resource_discovery_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_discovery_association.dart';

part 'disassociate_ipam_resource_discovery_result.g.dart';

abstract class DisassociateIpamResourceDiscoveryResult
    with
        _i1.AWSEquatable<DisassociateIpamResourceDiscoveryResult>
    implements
        Built<DisassociateIpamResourceDiscoveryResult,
            DisassociateIpamResourceDiscoveryResultBuilder> {
  factory DisassociateIpamResourceDiscoveryResult(
      {IpamResourceDiscoveryAssociation? ipamResourceDiscoveryAssociation}) {
    return _$DisassociateIpamResourceDiscoveryResult._(
        ipamResourceDiscoveryAssociation: ipamResourceDiscoveryAssociation);
  }

  factory DisassociateIpamResourceDiscoveryResult.build(
      [void Function(DisassociateIpamResourceDiscoveryResultBuilder)
          updates]) = _$DisassociateIpamResourceDiscoveryResult;

  const DisassociateIpamResourceDiscoveryResult._();

  /// Constructs a [DisassociateIpamResourceDiscoveryResult] from a [payload] and [response].
  factory DisassociateIpamResourceDiscoveryResult.fromResponse(
    DisassociateIpamResourceDiscoveryResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i2.SmithySerializer<DisassociateIpamResourceDiscoveryResult>>
      serializers = [
    DisassociateIpamResourceDiscoveryResultEc2QuerySerializer()
  ];

  /// A resource discovery association.
  IpamResourceDiscoveryAssociation? get ipamResourceDiscoveryAssociation;
  @override
  List<Object?> get props => [ipamResourceDiscoveryAssociation];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DisassociateIpamResourceDiscoveryResult')
          ..add(
            'ipamResourceDiscoveryAssociation',
            ipamResourceDiscoveryAssociation,
          );
    return helper.toString();
  }
}

class DisassociateIpamResourceDiscoveryResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<DisassociateIpamResourceDiscoveryResult> {
  const DisassociateIpamResourceDiscoveryResultEc2QuerySerializer()
      : super('DisassociateIpamResourceDiscoveryResult');

  @override
  Iterable<Type> get types => const [
        DisassociateIpamResourceDiscoveryResult,
        _$DisassociateIpamResourceDiscoveryResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DisassociateIpamResourceDiscoveryResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisassociateIpamResourceDiscoveryResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ipamResourceDiscoveryAssociation':
          result.ipamResourceDiscoveryAssociation
              .replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IpamResourceDiscoveryAssociation),
          ) as IpamResourceDiscoveryAssociation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DisassociateIpamResourceDiscoveryResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DisassociateIpamResourceDiscoveryResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DisassociateIpamResourceDiscoveryResult(
      :ipamResourceDiscoveryAssociation
    ) = object;
    if (ipamResourceDiscoveryAssociation != null) {
      result$
        ..add(const _i2.XmlElementName('IpamResourceDiscoveryAssociation'))
        ..add(serializers.serialize(
          ipamResourceDiscoveryAssociation,
          specifiedType: const FullType(IpamResourceDiscoveryAssociation),
        ));
    }
    return result$;
  }
}
