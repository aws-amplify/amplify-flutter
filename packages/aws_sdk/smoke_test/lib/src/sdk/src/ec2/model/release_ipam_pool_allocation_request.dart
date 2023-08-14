// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.release_ipam_pool_allocation_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'release_ipam_pool_allocation_request.g.dart';

abstract class ReleaseIpamPoolAllocationRequest
    with
        _i1.HttpInput<ReleaseIpamPoolAllocationRequest>,
        _i2.AWSEquatable<ReleaseIpamPoolAllocationRequest>
    implements
        Built<ReleaseIpamPoolAllocationRequest,
            ReleaseIpamPoolAllocationRequestBuilder> {
  factory ReleaseIpamPoolAllocationRequest({
    bool? dryRun,
    String? ipamPoolId,
    String? cidr,
    String? ipamPoolAllocationId,
  }) {
    dryRun ??= false;
    return _$ReleaseIpamPoolAllocationRequest._(
      dryRun: dryRun,
      ipamPoolId: ipamPoolId,
      cidr: cidr,
      ipamPoolAllocationId: ipamPoolAllocationId,
    );
  }

  factory ReleaseIpamPoolAllocationRequest.build(
          [void Function(ReleaseIpamPoolAllocationRequestBuilder) updates]) =
      _$ReleaseIpamPoolAllocationRequest;

  const ReleaseIpamPoolAllocationRequest._();

  factory ReleaseIpamPoolAllocationRequest.fromRequest(
    ReleaseIpamPoolAllocationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ReleaseIpamPoolAllocationRequest>>
      serializers = [ReleaseIpamPoolAllocationRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReleaseIpamPoolAllocationRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the IPAM pool which contains the allocation you want to release.
  String? get ipamPoolId;

  /// The CIDR of the allocation you want to release.
  String? get cidr;

  /// The ID of the allocation.
  String? get ipamPoolAllocationId;
  @override
  ReleaseIpamPoolAllocationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamPoolId,
        cidr,
        ipamPoolAllocationId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReleaseIpamPoolAllocationRequest')
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
          )
          ..add(
            'ipamPoolAllocationId',
            ipamPoolAllocationId,
          );
    return helper.toString();
  }
}

class ReleaseIpamPoolAllocationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ReleaseIpamPoolAllocationRequest> {
  const ReleaseIpamPoolAllocationRequestEc2QuerySerializer()
      : super('ReleaseIpamPoolAllocationRequest');

  @override
  Iterable<Type> get types => const [
        ReleaseIpamPoolAllocationRequest,
        _$ReleaseIpamPoolAllocationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReleaseIpamPoolAllocationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReleaseIpamPoolAllocationRequestBuilder();
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
        case 'IpamPoolAllocationId':
          result.ipamPoolAllocationId = (serializers.deserialize(
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
    ReleaseIpamPoolAllocationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ReleaseIpamPoolAllocationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReleaseIpamPoolAllocationRequest(
      :dryRun,
      :ipamPoolId,
      :cidr,
      :ipamPoolAllocationId
    ) = object;
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
    if (ipamPoolAllocationId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamPoolAllocationId'))
        ..add(serializers.serialize(
          ipamPoolAllocationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
