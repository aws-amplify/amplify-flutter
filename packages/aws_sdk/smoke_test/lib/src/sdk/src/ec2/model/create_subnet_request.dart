// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_subnet_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_subnet_request.g.dart';

abstract class CreateSubnetRequest
    with
        _i1.HttpInput<CreateSubnetRequest>,
        _i2.AWSEquatable<CreateSubnetRequest>
    implements Built<CreateSubnetRequest, CreateSubnetRequestBuilder> {
  factory CreateSubnetRequest({
    List<TagSpecification>? tagSpecifications,
    String? availabilityZone,
    String? availabilityZoneId,
    String? cidrBlock,
    String? ipv6CidrBlock,
    String? outpostArn,
    String? vpcId,
    bool? dryRun,
    bool? ipv6Native,
  }) {
    dryRun ??= false;
    ipv6Native ??= false;
    return _$CreateSubnetRequest._(
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      availabilityZone: availabilityZone,
      availabilityZoneId: availabilityZoneId,
      cidrBlock: cidrBlock,
      ipv6CidrBlock: ipv6CidrBlock,
      outpostArn: outpostArn,
      vpcId: vpcId,
      dryRun: dryRun,
      ipv6Native: ipv6Native,
    );
  }

  factory CreateSubnetRequest.build(
          [void Function(CreateSubnetRequestBuilder) updates]) =
      _$CreateSubnetRequest;

  const CreateSubnetRequest._();

  factory CreateSubnetRequest.fromRequest(
    CreateSubnetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateSubnetRequest>> serializers = [
    CreateSubnetRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateSubnetRequestBuilder b) {
    b
      ..dryRun = false
      ..ipv6Native = false;
  }

  /// The tags to assign to the subnet.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// The Availability Zone or Local Zone for the subnet.
  ///
  /// Default: Amazon Web Services selects one for you. If you create more than one subnet in your VPC, we do not necessarily select a different zone for each subnet.
  ///
  /// To create a subnet in a Local Zone, set this value to the Local Zone ID, for example `us-west-2-lax-1a`. For information about the Regions that support Local Zones, see [Local Zones locations](http://aws.amazon.com/about-aws/global-infrastructure/localzones/locations/).
  ///
  /// To create a subnet in an Outpost, set this value to the Availability Zone for the Outpost and specify the Outpost ARN.
  String? get availabilityZone;

  /// The AZ ID or the Local Zone ID of the subnet.
  String? get availabilityZoneId;

  /// The IPv4 network range for the subnet, in CIDR notation. For example, `10.0.0.0/24`. We modify the specified CIDR block to its canonical form; for example, if you specify `100.68.0.18/18`, we modify it to `100.68.0.0/18`.
  ///
  /// This parameter is not supported for an IPv6 only subnet.
  String? get cidrBlock;

  /// The IPv6 network range for the subnet, in CIDR notation. The subnet size must use a /64 prefix length.
  ///
  /// This parameter is required for an IPv6 only subnet.
  String? get ipv6CidrBlock;

  /// The Amazon Resource Name (ARN) of the Outpost. If you specify an Outpost ARN, you must also specify the Availability Zone of the Outpost subnet.
  String? get outpostArn;

  /// The ID of the VPC.
  String? get vpcId;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Indicates whether to create an IPv6 only subnet.
  bool get ipv6Native;
  @override
  CreateSubnetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        tagSpecifications,
        availabilityZone,
        availabilityZoneId,
        cidrBlock,
        ipv6CidrBlock,
        outpostArn,
        vpcId,
        dryRun,
        ipv6Native,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateSubnetRequest')
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'availabilityZoneId',
        availabilityZoneId,
      )
      ..add(
        'cidrBlock',
        cidrBlock,
      )
      ..add(
        'ipv6CidrBlock',
        ipv6CidrBlock,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'ipv6Native',
        ipv6Native,
      );
    return helper.toString();
  }
}

class CreateSubnetRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateSubnetRequest> {
  const CreateSubnetRequestEc2QuerySerializer() : super('CreateSubnetRequest');

  @override
  Iterable<Type> get types => const [
        CreateSubnetRequest,
        _$CreateSubnetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateSubnetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateSubnetRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
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
        case 'AvailabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AvailabilityZoneId':
          result.availabilityZoneId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CidrBlock':
          result.cidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Ipv6CidrBlock':
          result.ipv6CidrBlock = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OutpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Ipv6Native':
          result.ipv6Native = (serializers.deserialize(
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
    CreateSubnetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateSubnetRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateSubnetRequest(
      :tagSpecifications,
      :availabilityZone,
      :availabilityZoneId,
      :cidrBlock,
      :ipv6CidrBlock,
      :outpostArn,
      :vpcId,
      :dryRun,
      :ipv6Native
    ) = object;
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
    if (availabilityZone != null) {
      result$
        ..add(const _i1.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (availabilityZoneId != null) {
      result$
        ..add(const _i1.XmlElementName('AvailabilityZoneId'))
        ..add(serializers.serialize(
          availabilityZoneId,
          specifiedType: const FullType(String),
        ));
    }
    if (cidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('CidrBlock'))
        ..add(serializers.serialize(
          cidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (ipv6CidrBlock != null) {
      result$
        ..add(const _i1.XmlElementName('Ipv6CidrBlock'))
        ..add(serializers.serialize(
          ipv6CidrBlock,
          specifiedType: const FullType(String),
        ));
    }
    if (outpostArn != null) {
      result$
        ..add(const _i1.XmlElementName('OutpostArn'))
        ..add(serializers.serialize(
          outpostArn,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('Ipv6Native'))
      ..add(serializers.serialize(
        ipv6Native,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
