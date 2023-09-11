// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.allocate_ipam_pool_cidr_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'allocate_ipam_pool_cidr_request.g.dart';

abstract class AllocateIpamPoolCidrRequest
    with
        _i1.HttpInput<AllocateIpamPoolCidrRequest>,
        _i2.AWSEquatable<AllocateIpamPoolCidrRequest>
    implements
        Built<AllocateIpamPoolCidrRequest, AllocateIpamPoolCidrRequestBuilder> {
  factory AllocateIpamPoolCidrRequest({
    bool? dryRun,
    String? ipamPoolId,
    String? cidr,
    int? netmaskLength,
    String? clientToken,
    String? description,
    bool? previewNextCidr,
    List<String>? disallowedCidrs,
  }) {
    dryRun ??= false;
    netmaskLength ??= 0;
    previewNextCidr ??= false;
    return _$AllocateIpamPoolCidrRequest._(
      dryRun: dryRun,
      ipamPoolId: ipamPoolId,
      cidr: cidr,
      netmaskLength: netmaskLength,
      clientToken: clientToken,
      description: description,
      previewNextCidr: previewNextCidr,
      disallowedCidrs:
          disallowedCidrs == null ? null : _i3.BuiltList(disallowedCidrs),
    );
  }

  factory AllocateIpamPoolCidrRequest.build(
          [void Function(AllocateIpamPoolCidrRequestBuilder) updates]) =
      _$AllocateIpamPoolCidrRequest;

  const AllocateIpamPoolCidrRequest._();

  factory AllocateIpamPoolCidrRequest.fromRequest(
    AllocateIpamPoolCidrRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AllocateIpamPoolCidrRequest>>
      serializers = [AllocateIpamPoolCidrRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllocateIpamPoolCidrRequestBuilder b) {
    b
      ..dryRun = false
      ..netmaskLength = 0
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..previewNextCidr = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the IPAM pool from which you would like to allocate a CIDR.
  String? get ipamPoolId;

  /// The CIDR you would like to allocate from the IPAM pool. Note the following:
  ///
  /// *   If there is no DefaultNetmaskLength allocation rule set on the pool, you must specify either the NetmaskLength or the CIDR.
  ///
  /// *   If the DefaultNetmaskLength allocation rule is set on the pool, you can specify either the NetmaskLength or the CIDR and the DefaultNetmaskLength allocation rule will be ignored.
  ///
  ///
  /// Possible values: Any available IPv4 or IPv6 CIDR.
  String? get cidr;

  /// The netmask length of the CIDR you would like to allocate from the IPAM pool. Note the following:
  ///
  /// *   If there is no DefaultNetmaskLength allocation rule set on the pool, you must specify either the NetmaskLength or the CIDR.
  ///
  /// *   If the DefaultNetmaskLength allocation rule is set on the pool, you can specify either the NetmaskLength or the CIDR and the DefaultNetmaskLength allocation rule will be ignored.
  ///
  ///
  /// Possible netmask lengths for IPv4 addresses are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.
  int get netmaskLength;

  /// A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// A description for the allocation.
  String? get description;

  /// A preview of the next available CIDR in a pool.
  bool get previewNextCidr;

  /// Exclude a particular CIDR range from being returned by the pool. Disallowed CIDRs are only allowed if using netmask length for allocation.
  _i3.BuiltList<String>? get disallowedCidrs;
  @override
  AllocateIpamPoolCidrRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamPoolId,
        cidr,
        netmaskLength,
        clientToken,
        description,
        previewNextCidr,
        disallowedCidrs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllocateIpamPoolCidrRequest')
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
        'netmaskLength',
        netmaskLength,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'previewNextCidr',
        previewNextCidr,
      )
      ..add(
        'disallowedCidrs',
        disallowedCidrs,
      );
    return helper.toString();
  }
}

class AllocateIpamPoolCidrRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AllocateIpamPoolCidrRequest> {
  const AllocateIpamPoolCidrRequestEc2QuerySerializer()
      : super('AllocateIpamPoolCidrRequest');

  @override
  Iterable<Type> get types => const [
        AllocateIpamPoolCidrRequest,
        _$AllocateIpamPoolCidrRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AllocateIpamPoolCidrRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllocateIpamPoolCidrRequestBuilder();
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
        case 'NetmaskLength':
          result.netmaskLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PreviewNextCidr':
          result.previewNextCidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'DisallowedCidr':
          result.disallowedCidrs.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AllocateIpamPoolCidrRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AllocateIpamPoolCidrRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AllocateIpamPoolCidrRequest(
      :dryRun,
      :ipamPoolId,
      :cidr,
      :netmaskLength,
      :clientToken,
      :description,
      :previewNextCidr,
      :disallowedCidrs
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
    result$
      ..add(const _i1.XmlElementName('NetmaskLength'))
      ..add(serializers.serialize(
        netmaskLength,
        specifiedType: const FullType(int),
      ));
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('PreviewNextCidr'))
      ..add(serializers.serialize(
        previewNextCidr,
        specifiedType: const FullType(bool),
      ));
    if (disallowedCidrs != null) {
      result$
        ..add(const _i1.XmlElementName('DisallowedCidr'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          disallowedCidrs,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
