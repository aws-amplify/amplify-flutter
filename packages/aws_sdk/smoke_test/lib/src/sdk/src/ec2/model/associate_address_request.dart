// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_address_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'associate_address_request.g.dart';

abstract class AssociateAddressRequest
    with
        _i1.HttpInput<AssociateAddressRequest>,
        _i2.AWSEquatable<AssociateAddressRequest>
    implements Built<AssociateAddressRequest, AssociateAddressRequestBuilder> {
  factory AssociateAddressRequest({
    String? allocationId,
    String? instanceId,
    String? publicIp,
    bool? allowReassociation,
    bool? dryRun,
    String? networkInterfaceId,
    String? privateIpAddress,
  }) {
    allowReassociation ??= false;
    dryRun ??= false;
    return _$AssociateAddressRequest._(
      allocationId: allocationId,
      instanceId: instanceId,
      publicIp: publicIp,
      allowReassociation: allowReassociation,
      dryRun: dryRun,
      networkInterfaceId: networkInterfaceId,
      privateIpAddress: privateIpAddress,
    );
  }

  factory AssociateAddressRequest.build(
          [void Function(AssociateAddressRequestBuilder) updates]) =
      _$AssociateAddressRequest;

  const AssociateAddressRequest._();

  factory AssociateAddressRequest.fromRequest(
    AssociateAddressRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AssociateAddressRequest>> serializers =
      [AssociateAddressRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateAddressRequestBuilder b) {
    b
      ..allowReassociation = false
      ..dryRun = false;
  }

  /// The allocation ID. This is required.
  String? get allocationId;

  /// The ID of the instance. The instance must have exactly one attached network interface. You can specify either the instance ID or the network interface ID, but not both.
  String? get instanceId;

  /// Deprecated.
  String? get publicIp;

  /// Reassociation is automatic, but you can specify false to ensure the operation fails if the Elastic IP address is already associated with another resource.
  bool get allowReassociation;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the network interface. If the instance has more than one network interface, you must specify a network interface ID.
  ///
  /// You can specify either the instance ID or the network interface ID, but not both.
  String? get networkInterfaceId;

  /// The primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address.
  String? get privateIpAddress;
  @override
  AssociateAddressRequest getPayload() => this;
  @override
  List<Object?> get props => [
        allocationId,
        instanceId,
        publicIp,
        allowReassociation,
        dryRun,
        networkInterfaceId,
        privateIpAddress,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AssociateAddressRequest')
      ..add(
        'allocationId',
        allocationId,
      )
      ..add(
        'instanceId',
        instanceId,
      )
      ..add(
        'publicIp',
        publicIp,
      )
      ..add(
        'allowReassociation',
        allowReassociation,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'networkInterfaceId',
        networkInterfaceId,
      )
      ..add(
        'privateIpAddress',
        privateIpAddress,
      );
    return helper.toString();
  }
}

class AssociateAddressRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AssociateAddressRequest> {
  const AssociateAddressRequestEc2QuerySerializer()
      : super('AssociateAddressRequest');

  @override
  Iterable<Type> get types => const [
        AssociateAddressRequest,
        _$AssociateAddressRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateAddressRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateAddressRequestBuilder();
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
        case 'InstanceId':
          result.instanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PublicIp':
          result.publicIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'allowReassociation':
          result.allowReassociation = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateIpAddress':
          result.privateIpAddress = (serializers.deserialize(
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
    AssociateAddressRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssociateAddressRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateAddressRequest(
      :allocationId,
      :instanceId,
      :publicIp,
      :allowReassociation,
      :dryRun,
      :networkInterfaceId,
      :privateIpAddress
    ) = object;
    if (allocationId != null) {
      result$
        ..add(const _i1.XmlElementName('AllocationId'))
        ..add(serializers.serialize(
          allocationId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceId != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(serializers.serialize(
          instanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (publicIp != null) {
      result$
        ..add(const _i1.XmlElementName('PublicIp'))
        ..add(serializers.serialize(
          publicIp,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('AllowReassociation'))
      ..add(serializers.serialize(
        allowReassociation,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (networkInterfaceId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
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
    return result$;
  }
}
