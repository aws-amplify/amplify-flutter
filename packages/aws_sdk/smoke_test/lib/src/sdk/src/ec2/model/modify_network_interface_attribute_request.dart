// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_network_interface_attribute_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_boolean_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/attribute_value.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ena_srd_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/network_interface_attachment_changes.dart';

part 'modify_network_interface_attribute_request.g.dart';

/// Contains the parameters for ModifyNetworkInterfaceAttribute.
abstract class ModifyNetworkInterfaceAttributeRequest
    with
        _i1.HttpInput<ModifyNetworkInterfaceAttributeRequest>,
        _i2.AWSEquatable<ModifyNetworkInterfaceAttributeRequest>
    implements
        Built<ModifyNetworkInterfaceAttributeRequest,
            ModifyNetworkInterfaceAttributeRequestBuilder> {
  /// Contains the parameters for ModifyNetworkInterfaceAttribute.
  factory ModifyNetworkInterfaceAttributeRequest({
    NetworkInterfaceAttachmentChanges? attachment,
    AttributeValue? description,
    bool? dryRun,
    List<String>? groups,
    String? networkInterfaceId,
    AttributeBooleanValue? sourceDestCheck,
    EnaSrdSpecification? enaSrdSpecification,
    bool? enablePrimaryIpv6,
  }) {
    dryRun ??= false;
    enablePrimaryIpv6 ??= false;
    return _$ModifyNetworkInterfaceAttributeRequest._(
      attachment: attachment,
      description: description,
      dryRun: dryRun,
      groups: groups == null ? null : _i3.BuiltList(groups),
      networkInterfaceId: networkInterfaceId,
      sourceDestCheck: sourceDestCheck,
      enaSrdSpecification: enaSrdSpecification,
      enablePrimaryIpv6: enablePrimaryIpv6,
    );
  }

  /// Contains the parameters for ModifyNetworkInterfaceAttribute.
  factory ModifyNetworkInterfaceAttributeRequest.build(
      [void Function(ModifyNetworkInterfaceAttributeRequestBuilder)
          updates]) = _$ModifyNetworkInterfaceAttributeRequest;

  const ModifyNetworkInterfaceAttributeRequest._();

  factory ModifyNetworkInterfaceAttributeRequest.fromRequest(
    ModifyNetworkInterfaceAttributeRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ModifyNetworkInterfaceAttributeRequest>>
      serializers = [
    ModifyNetworkInterfaceAttributeRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyNetworkInterfaceAttributeRequestBuilder b) {
    b
      ..dryRun = false
      ..enablePrimaryIpv6 = false;
  }

  /// Information about the interface attachment. If modifying the `delete on termination` attribute, you must specify the ID of the interface attachment.
  NetworkInterfaceAttachmentChanges? get attachment;

  /// A description for the network interface.
  AttributeValue? get description;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Changes the security groups for the network interface. The new set of groups you specify replaces the current set. You must specify at least one group, even if it's just the default security group in the VPC. You must specify the ID of the security group, not the name.
  _i3.BuiltList<String>? get groups;

  /// The ID of the network interface.
  String? get networkInterfaceId;

  /// Enable or disable source/destination checks, which ensure that the instance is either the source or the destination of any traffic that it receives. If the value is `true`, source/destination checks are enabled; otherwise, they are disabled. The default value is `true`. You must disable source/destination checks if the instance runs services such as network address translation, routing, or firewalls.
  AttributeBooleanValue? get sourceDestCheck;

  /// Updates the ENA Express configuration for the network interface that’s attached to the instance.
  EnaSrdSpecification? get enaSrdSpecification;

  /// If you’re modifying a network interface in a dual-stack or IPv6-only subnet, you have the option to assign a primary IPv6 IP address. A primary IPv6 address is an IPv6 GUA address associated with an ENI that you have enabled to use a primary IPv6 address. Use this option if the instance that this ENI will be attached to relies on its IPv6 address not changing. Amazon Web Services will automatically assign an IPv6 address associated with the ENI attached to your instance to be the primary IPv6 address. Once you enable an IPv6 GUA address to be a primary IPv6, you cannot disable it. When you enable an IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made the primary IPv6 address until the instance is terminated or the network interface is detached. If you have multiple IPv6 addresses associated with an ENI attached to your instance and you enable a primary IPv6 address, the first IPv6 GUA address associated with the ENI becomes the primary IPv6 address.
  bool get enablePrimaryIpv6;
  @override
  ModifyNetworkInterfaceAttributeRequest getPayload() => this;
  @override
  List<Object?> get props => [
        attachment,
        description,
        dryRun,
        groups,
        networkInterfaceId,
        sourceDestCheck,
        enaSrdSpecification,
        enablePrimaryIpv6,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyNetworkInterfaceAttributeRequest')
          ..add(
            'attachment',
            attachment,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'groups',
            groups,
          )
          ..add(
            'networkInterfaceId',
            networkInterfaceId,
          )
          ..add(
            'sourceDestCheck',
            sourceDestCheck,
          )
          ..add(
            'enaSrdSpecification',
            enaSrdSpecification,
          )
          ..add(
            'enablePrimaryIpv6',
            enablePrimaryIpv6,
          );
    return helper.toString();
  }
}

class ModifyNetworkInterfaceAttributeRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyNetworkInterfaceAttributeRequest> {
  const ModifyNetworkInterfaceAttributeRequestEc2QuerySerializer()
      : super('ModifyNetworkInterfaceAttributeRequest');

  @override
  Iterable<Type> get types => const [
        ModifyNetworkInterfaceAttributeRequest,
        _$ModifyNetworkInterfaceAttributeRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyNetworkInterfaceAttributeRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyNetworkInterfaceAttributeRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'attachment':
          result.attachment.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(NetworkInterfaceAttachmentChanges),
          ) as NetworkInterfaceAttachmentChanges));
        case 'description':
          result.description.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeValue),
          ) as AttributeValue));
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'SecurityGroupId':
          result.groups.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'SecurityGroupId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'networkInterfaceId':
          result.networkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sourceDestCheck':
          result.sourceDestCheck.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AttributeBooleanValue),
          ) as AttributeBooleanValue));
        case 'EnaSrdSpecification':
          result.enaSrdSpecification.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EnaSrdSpecification),
          ) as EnaSrdSpecification));
        case 'EnablePrimaryIpv6':
          result.enablePrimaryIpv6 = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyNetworkInterfaceAttributeRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyNetworkInterfaceAttributeRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyNetworkInterfaceAttributeRequest(
      :attachment,
      :description,
      :dryRun,
      :groups,
      :networkInterfaceId,
      :sourceDestCheck,
      :enaSrdSpecification,
      :enablePrimaryIpv6
    ) = object;
    if (attachment != null) {
      result$
        ..add(const _i1.XmlElementName('Attachment'))
        ..add(serializers.serialize(
          attachment,
          specifiedType: const FullType(NetworkInterfaceAttachmentChanges),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(AttributeValue),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (groups != null) {
      result$
        ..add(const _i1.XmlElementName('SecurityGroupId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'SecurityGroupId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          groups,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (networkInterfaceId != null) {
      result$
        ..add(const _i1.XmlElementName('NetworkInterfaceId'))
        ..add(serializers.serialize(
          networkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceDestCheck != null) {
      result$
        ..add(const _i1.XmlElementName('SourceDestCheck'))
        ..add(serializers.serialize(
          sourceDestCheck,
          specifiedType: const FullType(AttributeBooleanValue),
        ));
    }
    if (enaSrdSpecification != null) {
      result$
        ..add(const _i1.XmlElementName('EnaSrdSpecification'))
        ..add(serializers.serialize(
          enaSrdSpecification,
          specifiedType: const FullType(EnaSrdSpecification),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('EnablePrimaryIpv6'))
      ..add(serializers.serialize(
        enablePrimaryIpv6,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
