// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.provision_ipam_pool_cidr_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_cidr_authorization_context.dart';

part 'provision_ipam_pool_cidr_request.g.dart';

abstract class ProvisionIpamPoolCidrRequest
    with
        _i1.HttpInput<ProvisionIpamPoolCidrRequest>,
        _i2.AWSEquatable<ProvisionIpamPoolCidrRequest>
    implements
        Built<ProvisionIpamPoolCidrRequest,
            ProvisionIpamPoolCidrRequestBuilder> {
  factory ProvisionIpamPoolCidrRequest({
    bool? dryRun,
    String? ipamPoolId,
    String? cidr,
    IpamCidrAuthorizationContext? cidrAuthorizationContext,
    int? netmaskLength,
    String? clientToken,
  }) {
    dryRun ??= false;
    netmaskLength ??= 0;
    return _$ProvisionIpamPoolCidrRequest._(
      dryRun: dryRun,
      ipamPoolId: ipamPoolId,
      cidr: cidr,
      cidrAuthorizationContext: cidrAuthorizationContext,
      netmaskLength: netmaskLength,
      clientToken: clientToken,
    );
  }

  factory ProvisionIpamPoolCidrRequest.build(
          [void Function(ProvisionIpamPoolCidrRequestBuilder) updates]) =
      _$ProvisionIpamPoolCidrRequest;

  const ProvisionIpamPoolCidrRequest._();

  factory ProvisionIpamPoolCidrRequest.fromRequest(
    ProvisionIpamPoolCidrRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ProvisionIpamPoolCidrRequest>>
      serializers = [ProvisionIpamPoolCidrRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ProvisionIpamPoolCidrRequestBuilder b) {
    b
      ..dryRun = false
      ..netmaskLength = 0
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the IPAM pool to which you want to assign a CIDR.
  String? get ipamPoolId;

  /// The CIDR you want to assign to the IPAM pool. Either "NetmaskLength" or "Cidr" is required. This value will be null if you specify "NetmaskLength" and will be filled in during the provisioning process.
  String? get cidr;

  /// A signed document that proves that you are authorized to bring a specified IP address range to Amazon using BYOIP. This option applies to public pools only.
  IpamCidrAuthorizationContext? get cidrAuthorizationContext;

  /// The netmask length of the CIDR you'd like to provision to a pool. Can be used for provisioning Amazon-provided IPv6 CIDRs to top-level pools and for provisioning CIDRs to pools with source pools. Cannot be used to provision BYOIP CIDRs to top-level pools. Either "NetmaskLength" or "Cidr" is required.
  int get netmaskLength;

  /// A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  ProvisionIpamPoolCidrRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamPoolId,
        cidr,
        cidrAuthorizationContext,
        netmaskLength,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ProvisionIpamPoolCidrRequest')
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
        'cidrAuthorizationContext',
        cidrAuthorizationContext,
      )
      ..add(
        'netmaskLength',
        netmaskLength,
      )
      ..add(
        'clientToken',
        clientToken,
      );
    return helper.toString();
  }
}

class ProvisionIpamPoolCidrRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ProvisionIpamPoolCidrRequest> {
  const ProvisionIpamPoolCidrRequestEc2QuerySerializer()
      : super('ProvisionIpamPoolCidrRequest');

  @override
  Iterable<Type> get types => const [
        ProvisionIpamPoolCidrRequest,
        _$ProvisionIpamPoolCidrRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ProvisionIpamPoolCidrRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvisionIpamPoolCidrRequestBuilder();
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
        case 'CidrAuthorizationContext':
          result.cidrAuthorizationContext.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IpamCidrAuthorizationContext),
          ) as IpamCidrAuthorizationContext));
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ProvisionIpamPoolCidrRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ProvisionIpamPoolCidrRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ProvisionIpamPoolCidrRequest(
      :dryRun,
      :ipamPoolId,
      :cidr,
      :cidrAuthorizationContext,
      :netmaskLength,
      :clientToken
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
    if (cidrAuthorizationContext != null) {
      result$
        ..add(const _i1.XmlElementName('CidrAuthorizationContext'))
        ..add(serializers.serialize(
          cidrAuthorizationContext,
          specifiedType: const FullType(IpamCidrAuthorizationContext),
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
    return result$;
  }
}
