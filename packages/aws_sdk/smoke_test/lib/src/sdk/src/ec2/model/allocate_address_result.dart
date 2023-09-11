// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.allocate_address_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/domain_type.dart';

part 'allocate_address_result.g.dart';

abstract class AllocateAddressResult
    with _i1.AWSEquatable<AllocateAddressResult>
    implements Built<AllocateAddressResult, AllocateAddressResultBuilder> {
  factory AllocateAddressResult({
    String? publicIp,
    String? allocationId,
    String? publicIpv4Pool,
    String? networkBorderGroup,
    DomainType? domain,
    String? customerOwnedIp,
    String? customerOwnedIpv4Pool,
    String? carrierIp,
  }) {
    return _$AllocateAddressResult._(
      publicIp: publicIp,
      allocationId: allocationId,
      publicIpv4Pool: publicIpv4Pool,
      networkBorderGroup: networkBorderGroup,
      domain: domain,
      customerOwnedIp: customerOwnedIp,
      customerOwnedIpv4Pool: customerOwnedIpv4Pool,
      carrierIp: carrierIp,
    );
  }

  factory AllocateAddressResult.build(
          [void Function(AllocateAddressResultBuilder) updates]) =
      _$AllocateAddressResult;

  const AllocateAddressResult._();

  /// Constructs a [AllocateAddressResult] from a [payload] and [response].
  factory AllocateAddressResult.fromResponse(
    AllocateAddressResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<AllocateAddressResult>> serializers = [
    AllocateAddressResultEc2QuerySerializer()
  ];

  /// The Elastic IP address.
  String? get publicIp;

  /// The ID that represents the allocation of the Elastic IP address.
  String? get allocationId;

  /// The ID of an address pool.
  String? get publicIpv4Pool;

  /// The set of Availability Zones, Local Zones, or Wavelength Zones from which Amazon Web Services advertises IP addresses.
  String? get networkBorderGroup;

  /// The network (`vpc`).
  DomainType? get domain;

  /// The customer-owned IP address.
  String? get customerOwnedIp;

  /// The ID of the customer-owned address pool.
  String? get customerOwnedIpv4Pool;

  /// The carrier IP address. This option is only available for network interfaces that reside in a subnet in a Wavelength Zone.
  String? get carrierIp;
  @override
  List<Object?> get props => [
        publicIp,
        allocationId,
        publicIpv4Pool,
        networkBorderGroup,
        domain,
        customerOwnedIp,
        customerOwnedIpv4Pool,
        carrierIp,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllocateAddressResult')
      ..add(
        'publicIp',
        publicIp,
      )
      ..add(
        'allocationId',
        allocationId,
      )
      ..add(
        'publicIpv4Pool',
        publicIpv4Pool,
      )
      ..add(
        'networkBorderGroup',
        networkBorderGroup,
      )
      ..add(
        'domain',
        domain,
      )
      ..add(
        'customerOwnedIp',
        customerOwnedIp,
      )
      ..add(
        'customerOwnedIpv4Pool',
        customerOwnedIpv4Pool,
      )
      ..add(
        'carrierIp',
        carrierIp,
      );
    return helper.toString();
  }
}

class AllocateAddressResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<AllocateAddressResult> {
  const AllocateAddressResultEc2QuerySerializer()
      : super('AllocateAddressResult');

  @override
  Iterable<Type> get types => const [
        AllocateAddressResult,
        _$AllocateAddressResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AllocateAddressResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllocateAddressResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'publicIp':
          result.publicIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'allocationId':
          result.allocationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'publicIpv4Pool':
          result.publicIpv4Pool = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkBorderGroup':
          result.networkBorderGroup = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'domain':
          result.domain = (serializers.deserialize(
            value,
            specifiedType: const FullType(DomainType),
          ) as DomainType);
        case 'customerOwnedIp':
          result.customerOwnedIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'customerOwnedIpv4Pool':
          result.customerOwnedIpv4Pool = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'carrierIp':
          result.carrierIp = (serializers.deserialize(
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
    AllocateAddressResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AllocateAddressResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AllocateAddressResult(
      :publicIp,
      :allocationId,
      :publicIpv4Pool,
      :networkBorderGroup,
      :domain,
      :customerOwnedIp,
      :customerOwnedIpv4Pool,
      :carrierIp
    ) = object;
    if (publicIp != null) {
      result$
        ..add(const _i2.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          publicIp,
          specifiedType: const FullType(String),
        ));
    }
    if (allocationId != null) {
      result$
        ..add(const _i2.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          allocationId,
          specifiedType: const FullType(String),
        ));
    }
    if (publicIpv4Pool != null) {
      result$
        ..add(const _i2.XmlElementName('PublicIpv4Pool'))
        ..add(serializers.serialize(
          publicIpv4Pool,
          specifiedType: const FullType(String),
        ));
    }
    if (networkBorderGroup != null) {
      result$
        ..add(const _i2.XmlElementName('NetworkBorderGroup'))
        ..add(serializers.serialize(
          networkBorderGroup,
          specifiedType: const FullType(String),
        ));
    }
    if (domain != null) {
      result$
        ..add(const _i2.XmlElementName('Domain'))
        ..add(serializers.serialize(
          domain,
          specifiedType: const FullType(DomainType),
        ));
    }
    if (customerOwnedIp != null) {
      result$
        ..add(const _i2.XmlElementName('CustomerOwnedIp'))
        ..add(serializers.serialize(
          customerOwnedIp,
          specifiedType: const FullType(String),
        ));
    }
    if (customerOwnedIpv4Pool != null) {
      result$
        ..add(const _i2.XmlElementName('CustomerOwnedIpv4Pool'))
        ..add(serializers.serialize(
          customerOwnedIpv4Pool,
          specifiedType: const FullType(String),
        ));
    }
    if (carrierIp != null) {
      result$
        ..add(const _i2.XmlElementName('CarrierIp'))
        ..add(serializers.serialize(
          carrierIp,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
