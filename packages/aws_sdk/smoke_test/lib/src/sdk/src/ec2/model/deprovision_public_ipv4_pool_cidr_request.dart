// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.deprovision_public_ipv4_pool_cidr_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'deprovision_public_ipv4_pool_cidr_request.g.dart';

abstract class DeprovisionPublicIpv4PoolCidrRequest
    with
        _i1.HttpInput<DeprovisionPublicIpv4PoolCidrRequest>,
        _i2.AWSEquatable<DeprovisionPublicIpv4PoolCidrRequest>
    implements
        Built<DeprovisionPublicIpv4PoolCidrRequest,
            DeprovisionPublicIpv4PoolCidrRequestBuilder> {
  factory DeprovisionPublicIpv4PoolCidrRequest({
    bool? dryRun,
    String? poolId,
    String? cidr,
  }) {
    dryRun ??= false;
    return _$DeprovisionPublicIpv4PoolCidrRequest._(
      dryRun: dryRun,
      poolId: poolId,
      cidr: cidr,
    );
  }

  factory DeprovisionPublicIpv4PoolCidrRequest.build(
      [void Function(DeprovisionPublicIpv4PoolCidrRequestBuilder)
          updates]) = _$DeprovisionPublicIpv4PoolCidrRequest;

  const DeprovisionPublicIpv4PoolCidrRequest._();

  factory DeprovisionPublicIpv4PoolCidrRequest.fromRequest(
    DeprovisionPublicIpv4PoolCidrRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeprovisionPublicIpv4PoolCidrRequest>>
      serializers = [DeprovisionPublicIpv4PoolCidrRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeprovisionPublicIpv4PoolCidrRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the pool that you want to deprovision the CIDR from.
  String? get poolId;

  /// The CIDR you want to deprovision from the pool. Enter the CIDR you want to deprovision with a netmask of `/32`. You must rerun this command for each IP address in the CIDR range. If your CIDR is a `/24`, you will have to run this command to deprovision each of the 256 IP addresses in the `/24` CIDR.
  String? get cidr;
  @override
  DeprovisionPublicIpv4PoolCidrRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        poolId,
        cidr,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DeprovisionPublicIpv4PoolCidrRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'poolId',
            poolId,
          )
          ..add(
            'cidr',
            cidr,
          );
    return helper.toString();
  }
}

class DeprovisionPublicIpv4PoolCidrRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<DeprovisionPublicIpv4PoolCidrRequest> {
  const DeprovisionPublicIpv4PoolCidrRequestEc2QuerySerializer()
      : super('DeprovisionPublicIpv4PoolCidrRequest');

  @override
  Iterable<Type> get types => const [
        DeprovisionPublicIpv4PoolCidrRequest,
        _$DeprovisionPublicIpv4PoolCidrRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeprovisionPublicIpv4PoolCidrRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeprovisionPublicIpv4PoolCidrRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'PoolId':
          result.poolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Cidr':
          result.cidr = (serializers.deserialize(
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
    DeprovisionPublicIpv4PoolCidrRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeprovisionPublicIpv4PoolCidrRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeprovisionPublicIpv4PoolCidrRequest(:dryRun, :poolId, :cidr) =
        object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (poolId != null) {
      result$
        ..add(const _i1.XmlElementName('PoolId'))
        ..add(serializers.serialize(
          poolId,
          specifiedType: const FullType(String),
        ));
    }
    if (cidr != null) {
      result$
        ..add(const _i1.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
