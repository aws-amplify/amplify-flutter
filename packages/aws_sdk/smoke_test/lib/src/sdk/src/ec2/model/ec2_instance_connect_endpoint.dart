// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ec2_instance_connect_endpoint; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ec2_instance_connect_endpoint_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'ec2_instance_connect_endpoint.g.dart';

/// The EC2 Instance Connect Endpoint.
abstract class Ec2InstanceConnectEndpoint
    with _i1.AWSEquatable<Ec2InstanceConnectEndpoint>
    implements
        Built<Ec2InstanceConnectEndpoint, Ec2InstanceConnectEndpointBuilder> {
  /// The EC2 Instance Connect Endpoint.
  factory Ec2InstanceConnectEndpoint({
    String? ownerId,
    String? instanceConnectEndpointId,
    String? instanceConnectEndpointArn,
    Ec2InstanceConnectEndpointState? state,
    String? stateMessage,
    String? dnsName,
    String? fipsDnsName,
    List<String>? networkInterfaceIds,
    String? vpcId,
    String? availabilityZone,
    DateTime? createdAt,
    String? subnetId,
    bool? preserveClientIp,
    List<String>? securityGroupIds,
    List<Tag>? tags,
  }) {
    preserveClientIp ??= false;
    return _$Ec2InstanceConnectEndpoint._(
      ownerId: ownerId,
      instanceConnectEndpointId: instanceConnectEndpointId,
      instanceConnectEndpointArn: instanceConnectEndpointArn,
      state: state,
      stateMessage: stateMessage,
      dnsName: dnsName,
      fipsDnsName: fipsDnsName,
      networkInterfaceIds: networkInterfaceIds == null
          ? null
          : _i2.BuiltList(networkInterfaceIds),
      vpcId: vpcId,
      availabilityZone: availabilityZone,
      createdAt: createdAt,
      subnetId: subnetId,
      preserveClientIp: preserveClientIp,
      securityGroupIds:
          securityGroupIds == null ? null : _i2.BuiltList(securityGroupIds),
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// The EC2 Instance Connect Endpoint.
  factory Ec2InstanceConnectEndpoint.build(
          [void Function(Ec2InstanceConnectEndpointBuilder) updates]) =
      _$Ec2InstanceConnectEndpoint;

  const Ec2InstanceConnectEndpoint._();

  static const List<_i3.SmithySerializer<Ec2InstanceConnectEndpoint>>
      serializers = [Ec2InstanceConnectEndpointEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(Ec2InstanceConnectEndpointBuilder b) {
    b.preserveClientIp = false;
  }

  /// The ID of the Amazon Web Services account that created the EC2 Instance Connect Endpoint.
  String? get ownerId;

  /// The ID of the EC2 Instance Connect Endpoint.
  String? get instanceConnectEndpointId;

  /// The Amazon Resource Name (ARN) of the EC2 Instance Connect Endpoint.
  String? get instanceConnectEndpointArn;

  /// The current state of the EC2 Instance Connect Endpoint.
  Ec2InstanceConnectEndpointState? get state;

  /// The message for the current state of the EC2 Instance Connect Endpoint. Can include a failure message.
  String? get stateMessage;

  /// The DNS name of the EC2 Instance Connect Endpoint.
  String? get dnsName;

  String? get fipsDnsName;

  /// The ID of the elastic network interface that Amazon EC2 automatically created when creating the EC2 Instance Connect Endpoint.
  _i2.BuiltList<String>? get networkInterfaceIds;

  /// The ID of the VPC in which the EC2 Instance Connect Endpoint was created.
  String? get vpcId;

  /// The Availability Zone of the EC2 Instance Connect Endpoint.
  String? get availabilityZone;

  /// The date and time that the EC2 Instance Connect Endpoint was created.
  DateTime? get createdAt;

  /// The ID of the subnet in which the EC2 Instance Connect Endpoint was created.
  String? get subnetId;

  /// Indicates whether your client's IP address is preserved as the source. The value is `true` or `false`.
  ///
  /// *   If `true`, your client's IP address is used when you connect to a resource.
  ///
  /// *   If `false`, the elastic network interface IP address is used when you connect to a resource.
  ///
  ///
  /// Default: `true`
  bool get preserveClientIp;

  /// The security groups associated with the endpoint. If you didn't specify a security group, the default security group for your VPC is associated with the endpoint.
  _i2.BuiltList<String>? get securityGroupIds;

  /// The tags assigned to the EC2 Instance Connect Endpoint.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        ownerId,
        instanceConnectEndpointId,
        instanceConnectEndpointArn,
        state,
        stateMessage,
        dnsName,
        fipsDnsName,
        networkInterfaceIds,
        vpcId,
        availabilityZone,
        createdAt,
        subnetId,
        preserveClientIp,
        securityGroupIds,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Ec2InstanceConnectEndpoint')
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'instanceConnectEndpointId',
        instanceConnectEndpointId,
      )
      ..add(
        'instanceConnectEndpointArn',
        instanceConnectEndpointArn,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'stateMessage',
        stateMessage,
      )
      ..add(
        'dnsName',
        dnsName,
      )
      ..add(
        'fipsDnsName',
        fipsDnsName,
      )
      ..add(
        'networkInterfaceIds',
        networkInterfaceIds,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'createdAt',
        createdAt,
      )
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'preserveClientIp',
        preserveClientIp,
      )
      ..add(
        'securityGroupIds',
        securityGroupIds,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class Ec2InstanceConnectEndpointEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<Ec2InstanceConnectEndpoint> {
  const Ec2InstanceConnectEndpointEc2QuerySerializer()
      : super('Ec2InstanceConnectEndpoint');

  @override
  Iterable<Type> get types => const [
        Ec2InstanceConnectEndpoint,
        _$Ec2InstanceConnectEndpoint,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ec2InstanceConnectEndpoint deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Ec2InstanceConnectEndpointBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceConnectEndpointId':
          result.instanceConnectEndpointId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceConnectEndpointArn':
          result.instanceConnectEndpointArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(Ec2InstanceConnectEndpointState),
          ) as Ec2InstanceConnectEndpointState);
        case 'stateMessage':
          result.stateMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dnsName':
          result.dnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'fipsDnsName':
          result.fipsDnsName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'networkInterfaceIdSet':
          result.networkInterfaceIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'createdAt':
          result.createdAt = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'preserveClientIp':
          result.preserveClientIp = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'securityGroupIdSet':
          result.securityGroupIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Ec2InstanceConnectEndpoint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'Ec2InstanceConnectEndpointResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Ec2InstanceConnectEndpoint(
      :ownerId,
      :instanceConnectEndpointId,
      :instanceConnectEndpointArn,
      :state,
      :stateMessage,
      :dnsName,
      :fipsDnsName,
      :networkInterfaceIds,
      :vpcId,
      :availabilityZone,
      :createdAt,
      :subnetId,
      :preserveClientIp,
      :securityGroupIds,
      :tags
    ) = object;
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceConnectEndpointId != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceConnectEndpointId'))
        ..add(serializers.serialize(
          instanceConnectEndpointId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceConnectEndpointArn != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceConnectEndpointArn'))
        ..add(serializers.serialize(
          instanceConnectEndpointArn,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType:
              const FullType.nullable(Ec2InstanceConnectEndpointState),
        ));
    }
    if (stateMessage != null) {
      result$
        ..add(const _i3.XmlElementName('StateMessage'))
        ..add(serializers.serialize(
          stateMessage,
          specifiedType: const FullType(String),
        ));
    }
    if (dnsName != null) {
      result$
        ..add(const _i3.XmlElementName('DnsName'))
        ..add(serializers.serialize(
          dnsName,
          specifiedType: const FullType(String),
        ));
    }
    if (fipsDnsName != null) {
      result$
        ..add(const _i3.XmlElementName('FipsDnsName'))
        ..add(serializers.serialize(
          fipsDnsName,
          specifiedType: const FullType(String),
        ));
    }
    if (networkInterfaceIds != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInterfaceIdSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInterfaceIds,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (availabilityZone != null) {
      result$
        ..add(const _i3.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (createdAt != null) {
      result$
        ..add(const _i3.XmlElementName('CreatedAt'))
        ..add(serializers.serialize(
          createdAt,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('PreserveClientIp'))
      ..add(serializers.serialize(
        preserveClientIp,
        specifiedType: const FullType(bool),
      ));
    if (securityGroupIds != null) {
      result$
        ..add(const _i3.XmlElementName('SecurityGroupIdSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          securityGroupIds,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
