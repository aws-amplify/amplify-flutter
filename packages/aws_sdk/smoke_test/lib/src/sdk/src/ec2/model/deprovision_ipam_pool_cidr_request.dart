// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.deprovision_ipam_pool_cidr_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'deprovision_ipam_pool_cidr_request.g.dart';

abstract class DeprovisionIpamPoolCidrRequest
    with
        _i1.HttpInput<DeprovisionIpamPoolCidrRequest>,
        _i2.AWSEquatable<DeprovisionIpamPoolCidrRequest>
    implements
        Built<DeprovisionIpamPoolCidrRequest,
            DeprovisionIpamPoolCidrRequestBuilder> {
  factory DeprovisionIpamPoolCidrRequest({
    bool? dryRun,
    String? ipamPoolId,
    String? cidr,
  }) {
    dryRun ??= false;
    return _$DeprovisionIpamPoolCidrRequest._(
      dryRun: dryRun,
      ipamPoolId: ipamPoolId,
      cidr: cidr,
    );
  }

  factory DeprovisionIpamPoolCidrRequest.build(
          [void Function(DeprovisionIpamPoolCidrRequestBuilder) updates]) =
      _$DeprovisionIpamPoolCidrRequest;

  const DeprovisionIpamPoolCidrRequest._();

  factory DeprovisionIpamPoolCidrRequest.fromRequest(
    DeprovisionIpamPoolCidrRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeprovisionIpamPoolCidrRequest>>
      serializers = [DeprovisionIpamPoolCidrRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeprovisionIpamPoolCidrRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the pool that has the CIDR you want to deprovision.
  String? get ipamPoolId;

  /// The CIDR which you want to deprovision from the pool.
  String? get cidr;
  @override
  DeprovisionIpamPoolCidrRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamPoolId,
        cidr,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeprovisionIpamPoolCidrRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'ipamPoolId',
        ipamPoolId,
      )
      ..add(
        'cidr',
        cidr,
      );
    return helper.toString();
  }
}

class DeprovisionIpamPoolCidrRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DeprovisionIpamPoolCidrRequest> {
  const DeprovisionIpamPoolCidrRequestEc2QuerySerializer()
      : super('DeprovisionIpamPoolCidrRequest');

  @override
  Iterable<Type> get types => const [
        DeprovisionIpamPoolCidrRequest,
        _$DeprovisionIpamPoolCidrRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DeprovisionIpamPoolCidrRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeprovisionIpamPoolCidrRequestBuilder();
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
        case 'IpamPoolId':
          result.ipamPoolId = (serializers.deserialize(
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
    DeprovisionIpamPoolCidrRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeprovisionIpamPoolCidrRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DeprovisionIpamPoolCidrRequest(:dryRun, :ipamPoolId, :cidr) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (ipamPoolId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamPoolId'))
        ..add(serializers.serialize(
          ipamPoolId,
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
