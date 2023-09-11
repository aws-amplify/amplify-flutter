// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_nat_gateway_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/connectivity_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_nat_gateway_request.g.dart';

abstract class CreateNatGatewayRequest
    with
        _i1.HttpInput<CreateNatGatewayRequest>,
        _i2.AWSEquatable<CreateNatGatewayRequest>
    implements Built<CreateNatGatewayRequest, CreateNatGatewayRequestBuilder> {
  factory CreateNatGatewayRequest({
    String? allocationId,
    String? clientToken,
    bool? dryRun,
    String? subnetId,
    List<TagSpecification>? tagSpecifications,
    ConnectivityType? connectivityType,
    String? privateIpAddress,
    List<String>? secondaryAllocationIds,
    List<String>? secondaryPrivateIpAddresses,
    int? secondaryPrivateIpAddressCount,
  }) {
    dryRun ??= false;
    secondaryPrivateIpAddressCount ??= 0;
    return _$CreateNatGatewayRequest._(
      allocationId: allocationId,
      clientToken: clientToken,
      dryRun: dryRun,
      subnetId: subnetId,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      connectivityType: connectivityType,
      privateIpAddress: privateIpAddress,
      secondaryAllocationIds: secondaryAllocationIds == null
          ? null
          : _i3.BuiltList(secondaryAllocationIds),
      secondaryPrivateIpAddresses: secondaryPrivateIpAddresses == null
          ? null
          : _i3.BuiltList(secondaryPrivateIpAddresses),
      secondaryPrivateIpAddressCount: secondaryPrivateIpAddressCount,
    );
  }

  factory CreateNatGatewayRequest.build(
          [void Function(CreateNatGatewayRequestBuilder) updates]) =
      _$CreateNatGatewayRequest;

  const CreateNatGatewayRequest._();

  factory CreateNatGatewayRequest.fromRequest(
    CreateNatGatewayRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateNatGatewayRequest>> serializers =
      [CreateNatGatewayRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateNatGatewayRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..dryRun = false
      ..secondaryPrivateIpAddressCount = 0;
  }

  /// \[Public NAT gateways only\] The allocation ID of an Elastic IP address to associate with the NAT gateway. You cannot specify an Elastic IP address with a private NAT gateway. If the Elastic IP address is associated with another resource, you must first disassociate it.
  String? get allocationId;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [How to ensure idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  ///
  /// Constraint: Maximum 64 ASCII characters.
  String? get clientToken;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the subnet in which to create the NAT gateway.
  String? get subnetId;

  /// The tags to assign to the NAT gateway.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Indicates whether the NAT gateway supports public or private connectivity. The default is public connectivity.
  ConnectivityType? get connectivityType;

  /// The private IPv4 address to assign to the NAT gateway. If you don't provide an address, a private IPv4 address will be automatically assigned.
  String? get privateIpAddress;

  /// Secondary EIP allocation IDs. For more information, see [Create a NAT gateway](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-creating) in the _Amazon VPC User Guide_.
  _i3.BuiltList<String>? get secondaryAllocationIds;

  /// Secondary private IPv4 addresses. For more information about secondary addresses, see [Create a NAT gateway](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-creating) in the _Amazon VPC User Guide_.
  _i3.BuiltList<String>? get secondaryPrivateIpAddresses;

  /// \[Private NAT gateway only\] The number of secondary private IPv4 addresses you want to assign to the NAT gateway. For more information about secondary addresses, see [Create a NAT gateway](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html#nat-gateway-creating) in the _Amazon VPC User Guide_.
  int get secondaryPrivateIpAddressCount;
  @override
  CreateNatGatewayRequest getPayload() => this;
  @override
  List<Object?> get props => [
        allocationId,
        clientToken,
        dryRun,
        subnetId,
        tagSpecifications,
        connectivityType,
        privateIpAddress,
        secondaryAllocationIds,
        secondaryPrivateIpAddresses,
        secondaryPrivateIpAddressCount,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateNatGatewayRequest')
      ..add(
        'allocationId',
        allocationId,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'connectivityType',
        connectivityType,
      )
      ..add(
        'privateIpAddress',
        privateIpAddress,
      )
      ..add(
        'secondaryAllocationIds',
        secondaryAllocationIds,
      )
      ..add(
        'secondaryPrivateIpAddresses',
        secondaryPrivateIpAddresses,
      )
      ..add(
        'secondaryPrivateIpAddressCount',
        secondaryPrivateIpAddressCount,
      );
    return helper.toString();
  }
}

class CreateNatGatewayRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateNatGatewayRequest> {
  const CreateNatGatewayRequestEc2QuerySerializer()
      : super('CreateNatGatewayRequest');

  @override
  Iterable<Type> get types => const [
        CreateNatGatewayRequest,
        _$CreateNatGatewayRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateNatGatewayRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateNatGatewayRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AllocationId':
          result.allocationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'ConnectivityType':
          result.connectivityType = (serializers.deserialize(
            value,
            specifiedType: const FullType(ConnectivityType),
          ) as ConnectivityType);
        case 'PrivateIpAddress':
          result.privateIpAddress = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SecondaryAllocationId':
          result.secondaryAllocationIds
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'AllocationId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'SecondaryPrivateIpAddress':
          result.secondaryPrivateIpAddresses
              .replace((const _i1.XmlBuiltListSerializer(
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
        case 'SecondaryPrivateIpAddressCount':
          result.secondaryPrivateIpAddressCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateNatGatewayRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateNatGatewayRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateNatGatewayRequest(
      :allocationId,
      :clientToken,
      :dryRun,
      :subnetId,
      :tagSpecifications,
      :connectivityType,
      :privateIpAddress,
      :secondaryAllocationIds,
      :secondaryPrivateIpAddresses,
      :secondaryPrivateIpAddressCount
    ) = object;
    if (allocationId != null) {
      result$
        ..add(const _i1.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          allocationId,
          specifiedType: const FullType(String),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (subnetId != null) {
      result$
        ..add(const _i1.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    if (connectivityType != null) {
      result$
        ..add(const _i1.XmlElementName('ConnectivityType'))
        ..add(serializers.serialize(
          connectivityType,
          specifiedType: const FullType(ConnectivityType),
        ));
    }
    if (privateIpAddress != null) {
      result$
        ..add(const _i1.XmlElementName('PrivateIpAddress'))
        ..add(serializers.serialize(
          privateIpAddress,
          specifiedType: const FullType(String),
        ));
    }
    if (secondaryAllocationIds != null) {
      result$
        ..add(const _i1.XmlElementName('SecondaryAllocationId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'AllocationId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          secondaryAllocationIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (secondaryPrivateIpAddresses != null) {
      result$
        ..add(const _i1.XmlElementName('SecondaryPrivateIpAddress'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          secondaryPrivateIpAddresses,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('SecondaryPrivateIpAddressCount'))
      ..add(serializers.serialize(
        secondaryPrivateIpAddressCount,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
