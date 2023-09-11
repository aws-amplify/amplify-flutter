// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_instances_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/filter.dart';

part 'describe_instances_request.g.dart';

abstract class DescribeInstancesRequest
    with
        _i1.HttpInput<DescribeInstancesRequest>,
        _i2.AWSEquatable<DescribeInstancesRequest>
    implements
        Built<DescribeInstancesRequest, DescribeInstancesRequestBuilder> {
  factory DescribeInstancesRequest({
    List<Filter>? filters,
    List<String>? instanceIds,
    bool? dryRun,
    int? maxResults,
    String? nextToken,
  }) {
    dryRun ??= false;
    maxResults ??= 0;
    return _$DescribeInstancesRequest._(
      filters: filters == null ? null : _i3.BuiltList(filters),
      instanceIds: instanceIds == null ? null : _i3.BuiltList(instanceIds),
      dryRun: dryRun,
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeInstancesRequest.build(
          [void Function(DescribeInstancesRequestBuilder) updates]) =
      _$DescribeInstancesRequest;

  const DescribeInstancesRequest._();

  factory DescribeInstancesRequest.fromRequest(
    DescribeInstancesRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeInstancesRequest>>
      serializers = [DescribeInstancesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeInstancesRequestBuilder b) {
    b
      ..dryRun = false
      ..maxResults = 0;
  }

  /// The filters.
  ///
  /// *   `affinity` \- The affinity setting for an instance running on a Dedicated Host (`default` | `host`).
  ///
  /// *   `architecture` \- The instance architecture (`i386` | `x86_64` | `arm64`).
  ///
  /// *   `availability-zone` \- The Availability Zone of the instance.
  ///
  /// *   `block-device-mapping.attach-time` \- The attach time for an EBS volume mapped to the instance, for example, `2022-09-15T17:15:20.000Z`.
  ///
  /// *   `block-device-mapping.delete-on-termination` \- A Boolean that indicates whether the EBS volume is deleted on instance termination.
  ///
  /// *   `block-device-mapping.device-name` \- The device name specified in the block device mapping (for example, `/dev/sdh` or `xvdh`).
  ///
  /// *   `block-device-mapping.status` \- The status for the EBS volume (`attaching` | `attached` | `detaching` | `detached`).
  ///
  /// *   `block-device-mapping.volume-id` \- The volume ID of the EBS volume.
  ///
  /// *   `boot-mode` \- The boot mode that was specified by the AMI (`legacy-bios` | `uefi` | `uefi-preferred`).
  ///
  /// *   `capacity-reservation-id` \- The ID of the Capacity Reservation into which the instance was launched.
  ///
  /// *   `capacity-reservation-specification.capacity-reservation-preference` \- The instance's Capacity Reservation preference (`open` | `none`).
  ///
  /// *   `capacity-reservation-specification.capacity-reservation-target.capacity-reservation-id` \- The ID of the targeted Capacity Reservation.
  ///
  /// *   `capacity-reservation-specification.capacity-reservation-target.capacity-reservation-resource-group-arn` \- The ARN of the targeted Capacity Reservation group.
  ///
  /// *   `client-token` \- The idempotency token you provided when you launched the instance.
  ///
  /// *   `current-instance-boot-mode` \- The boot mode that is used to launch the instance at launch or start (`legacy-bios` | `uefi`).
  ///
  /// *   `dns-name` \- The public DNS name of the instance.
  ///
  /// *   `ebs-optimized` \- A Boolean that indicates whether the instance is optimized for Amazon EBS I/O.
  ///
  /// *   `ena-support` \- A Boolean that indicates whether the instance is enabled for enhanced networking with ENA.
  ///
  /// *   `enclave-options.enabled` \- A Boolean that indicates whether the instance is enabled for Amazon Web Services Nitro Enclaves.
  ///
  /// *   `hibernation-options.configured` \- A Boolean that indicates whether the instance is enabled for hibernation. A value of `true` means that the instance is enabled for hibernation.
  ///
  /// *   `host-id` \- The ID of the Dedicated Host on which the instance is running, if applicable.
  ///
  /// *   `hypervisor` \- The hypervisor type of the instance (`ovm` | `xen`). The value `xen` is used for both Xen and Nitro hypervisors.
  ///
  /// *   `iam-instance-profile.arn` \- The instance profile associated with the instance. Specified as an ARN.
  ///
  /// *   `iam-instance-profile.id` \- The instance profile associated with the instance. Specified as an ID.
  ///
  /// *   `iam-instance-profile.name` \- The instance profile associated with the instance. Specified as an name.
  ///
  /// *   `image-id` \- The ID of the image used to launch the instance.
  ///
  /// *   `instance-id` \- The ID of the instance.
  ///
  /// *   `instance-lifecycle` \- Indicates whether this is a Spot Instance or a Scheduled Instance (`spot` | `scheduled`).
  ///
  /// *   `instance-state-code` \- The state of the instance, as a 16-bit unsigned integer. The high byte is used for internal purposes and should be ignored. The low byte is set based on the state represented. The valid values are: 0 (pending), 16 (running), 32 (shutting-down), 48 (terminated), 64 (stopping), and 80 (stopped).
  ///
  /// *   `instance-state-name` \- The state of the instance (`pending` | `running` | `shutting-down` | `terminated` | `stopping` | `stopped`).
  ///
  /// *   `instance-type` \- The type of instance (for example, `t2.micro`).
  ///
  /// *   `instance.group-id` \- The ID of the security group for the instance.
  ///
  /// *   `instance.group-name` \- The name of the security group for the instance.
  ///
  /// *   `ip-address` \- The public IPv4 address of the instance.
  ///
  /// *   `ipv6-address` \- The IPv6 address of the instance.
  ///
  /// *   `kernel-id` \- The kernel ID.
  ///
  /// *   `key-name` \- The name of the key pair used when the instance was launched.
  ///
  /// *   `launch-index` \- When launching multiple instances, this is the index for the instance in the launch group (for example, 0, 1, 2, and so on).
  ///
  /// *   `launch-time` \- The time when the instance was launched, in the ISO 8601 format in the UTC time zone (YYYY-MM-DDThh:mm:ss.sssZ), for example, `2021-09-29T11:04:43.305Z`. You can use a wildcard (`*`), for example, `2021-09-29T*`, which matches an entire day.
  ///
  /// *   `license-pool` -
  ///
  /// *   `maintenance-options.auto-recovery` \- The current automatic recovery behavior of the instance (`disabled` | `default`).
  ///
  /// *   `metadata-options.http-endpoint` \- The status of access to the HTTP metadata endpoint on your instance (`enabled` | `disabled`)
  ///
  /// *   `metadata-options.http-protocol-ipv4` \- Indicates whether the IPv4 endpoint is enabled (`disabled` | `enabled`).
  ///
  /// *   `metadata-options.http-protocol-ipv6` \- Indicates whether the IPv6 endpoint is enabled (`disabled` | `enabled`).
  ///
  /// *   `metadata-options.http-put-response-hop-limit` \- The HTTP metadata request put response hop limit (integer, possible values `1` to `64`)
  ///
  /// *   `metadata-options.http-tokens` \- The metadata request authorization state (`optional` | `required`)
  ///
  /// *   `metadata-options.instance-metadata-tags` \- The status of access to instance tags from the instance metadata (`enabled` | `disabled`)
  ///
  /// *   `metadata-options.state` \- The state of the metadata option changes (`pending` | `applied`).
  ///
  /// *   `monitoring-state` \- Indicates whether detailed monitoring is enabled (`disabled` | `enabled`).
  ///
  /// *   `network-interface.addresses.primary` \- Specifies whether the IPv4 address of the network interface is the primary private IPv4 address.
  ///
  /// *   `network-interface.addresses.private-ip-address` \- The private IPv4 address associated with the network interface.
  ///
  /// *   `network-interface.addresses.association.public-ip` \- The ID of the association of an Elastic IP address (IPv4) with a network interface.
  ///
  /// *   `network-interface.addresses.association.ip-owner-id` \- The owner ID of the private IPv4 address associated with the network interface.
  ///
  /// *   `network-interface.association.public-ip` \- The address of the Elastic IP address (IPv4) bound to the network interface.
  ///
  /// *   `network-interface.association.ip-owner-id` \- The owner of the Elastic IP address (IPv4) associated with the network interface.
  ///
  /// *   `network-interface.association.allocation-id` \- The allocation ID returned when you allocated the Elastic IP address (IPv4) for your network interface.
  ///
  /// *   `network-interface.association.association-id` \- The association ID returned when the network interface was associated with an IPv4 address.
  ///
  /// *   `network-interface.attachment.attachment-id` \- The ID of the interface attachment.
  ///
  /// *   `network-interface.attachment.instance-id` \- The ID of the instance to which the network interface is attached.
  ///
  /// *   `network-interface.attachment.instance-owner-id` \- The owner ID of the instance to which the network interface is attached.
  ///
  /// *   `network-interface.attachment.device-index` \- The device index to which the network interface is attached.
  ///
  /// *   `network-interface.attachment.status` \- The status of the attachment (`attaching` | `attached` | `detaching` | `detached`).
  ///
  /// *   `network-interface.attachment.attach-time` \- The time that the network interface was attached to an instance.
  ///
  /// *   `network-interface.attachment.delete-on-termination` \- Specifies whether the attachment is deleted when an instance is terminated.
  ///
  /// *   `network-interface.availability-zone` \- The Availability Zone for the network interface.
  ///
  /// *   `network-interface.description` \- The description of the network interface.
  ///
  /// *   `network-interface.group-id` \- The ID of a security group associated with the network interface.
  ///
  /// *   `network-interface.group-name` \- The name of a security group associated with the network interface.
  ///
  /// *   `network-interface.ipv6-addresses.ipv6-address` \- The IPv6 address associated with the network interface.
  ///
  /// *   `network-interface.mac-address` \- The MAC address of the network interface.
  ///
  /// *   `network-interface.network-interface-id` \- The ID of the network interface.
  ///
  /// *   `network-interface.owner-id` \- The ID of the owner of the network interface.
  ///
  /// *   `network-interface.private-dns-name` \- The private DNS name of the network interface.
  ///
  /// *   `network-interface.requester-id` \- The requester ID for the network interface.
  ///
  /// *   `network-interface.requester-managed` \- Indicates whether the network interface is being managed by Amazon Web Services.
  ///
  /// *   `network-interface.status` \- The status of the network interface (`available`) | `in-use`).
  ///
  /// *   `network-interface.source-dest-check` \- Whether the network interface performs source/destination checking. A value of `true` means that checking is enabled, and `false` means that checking is disabled. The value must be `false` for the network interface to perform network address translation (NAT) in your VPC.
  ///
  /// *   `network-interface.subnet-id` \- The ID of the subnet for the network interface.
  ///
  /// *   `network-interface.vpc-id` \- The ID of the VPC for the network interface.
  ///
  /// *   `outpost-arn` \- The Amazon Resource Name (ARN) of the Outpost.
  ///
  /// *   `owner-id` \- The Amazon Web Services account ID of the instance owner.
  ///
  /// *   `placement-group-name` \- The name of the placement group for the instance.
  ///
  /// *   `placement-partition-number` \- The partition in which the instance is located.
  ///
  /// *   `platform` \- The platform. To list only Windows instances, use `windows`.
  ///
  /// *   `platform-details` \- The platform (`Linux/UNIX` | `Red Hat BYOL Linux` | `Red Hat Enterprise Linux` | `Red Hat Enterprise Linux with HA` | `Red Hat Enterprise Linux with SQL Server Standard and HA` | `Red Hat Enterprise Linux with SQL Server Enterprise and HA` | `Red Hat Enterprise Linux with SQL Server Standard` | `Red Hat Enterprise Linux with SQL Server Web` | `Red Hat Enterprise Linux with SQL Server Enterprise` | `SQL Server Enterprise` | `SQL Server Standard` | `SQL Server Web` | `SUSE Linux` | `Ubuntu Pro` | `Windows` | `Windows BYOL` | `Windows with SQL Server Enterprise` | `Windows with SQL Server Standard` | `Windows with SQL Server Web`).
  ///
  /// *   `private-dns-name` \- The private IPv4 DNS name of the instance.
  ///
  /// *   `private-dns-name-options.enable-resource-name-dns-a-record` \- A Boolean that indicates whether to respond to DNS queries for instance hostnames with DNS A records.
  ///
  /// *   `private-dns-name-options.enable-resource-name-dns-aaaa-record` \- A Boolean that indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.
  ///
  /// *   `private-dns-name-options.hostname-type` \- The type of hostname (`ip-name` | `resource-name`).
  ///
  /// *   `private-ip-address` \- The private IPv4 address of the instance.
  ///
  /// *   `product-code` \- The product code associated with the AMI used to launch the instance.
  ///
  /// *   `product-code.type` \- The type of product code (`devpay` | `marketplace`).
  ///
  /// *   `ramdisk-id` \- The RAM disk ID.
  ///
  /// *   `reason` \- The reason for the current state of the instance (for example, shows "User Initiated \[date\]" when you stop or terminate the instance). Similar to the state-reason-code filter.
  ///
  /// *   `requester-id` \- The ID of the entity that launched the instance on your behalf (for example, Amazon Web Services Management Console, Auto Scaling, and so on).
  ///
  /// *   `reservation-id` \- The ID of the instance's reservation. A reservation ID is created any time you launch an instance. A reservation ID has a one-to-one relationship with an instance launch request, but can be associated with more than one instance if you launch multiple instances using the same launch request. For example, if you launch one instance, you get one reservation ID. If you launch ten instances using the same launch request, you also get one reservation ID.
  ///
  /// *   `root-device-name` \- The device name of the root device volume (for example, `/dev/sda1`).
  ///
  /// *   `root-device-type` \- The type of the root device volume (`ebs` | `instance-store`).
  ///
  /// *   `source-dest-check` \- Indicates whether the instance performs source/destination checking. A value of `true` means that checking is enabled, and `false` means that checking is disabled. The value must be `false` for the instance to perform network address translation (NAT) in your VPC.
  ///
  /// *   `spot-instance-request-id` \- The ID of the Spot Instance request.
  ///
  /// *   `state-reason-code` \- The reason code for the state change.
  ///
  /// *   `state-reason-message` \- A message that describes the state change.
  ///
  /// *   `subnet-id` \- The ID of the subnet for the instance.
  ///
  /// *   `tag:` \- The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  ///
  /// *   `tag-key` \- The key of a tag assigned to the resource. Use this filter to find all resources that have a tag with a specific key, regardless of the tag value.
  ///
  /// *   `tenancy` \- The tenancy of an instance (`dedicated` | `default` | `host`).
  ///
  /// *   `tpm-support` \- Indicates if the instance is configured for NitroTPM support (`v2.0`).
  ///
  /// *   `usage-operation` \- The usage operation value for the instance (`RunInstances` | `RunInstances:00g0` | `RunInstances:0010` | `RunInstances:1010` | `RunInstances:1014` | `RunInstances:1110` | `RunInstances:0014` | `RunInstances:0210` | `RunInstances:0110` | `RunInstances:0100` | `RunInstances:0004` | `RunInstances:0200` | `RunInstances:000g` | `RunInstances:0g00` | `RunInstances:0002` | `RunInstances:0800` | `RunInstances:0102` | `RunInstances:0006` | `RunInstances:0202`).
  ///
  /// *   `usage-operation-update-time` \- The time that the usage operation was last updated, for example, `2022-09-15T17:15:20.000Z`.
  ///
  /// *   `virtualization-type` \- The virtualization type of the instance (`paravirtual` | `hvm`).
  ///
  /// *   `vpc-id` \- The ID of the VPC that the instance is running in.
  _i3.BuiltList<Filter>? get filters;

  /// The instance IDs.
  ///
  /// Default: Describes all your instances.
  _i3.BuiltList<String>? get instanceIds;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The maximum number of items to return for this request. To get the next page of items, make another request with the token returned in the output. For more information, see [Pagination](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).
  ///
  /// You cannot specify this parameter and the instance IDs parameter in the same request.
  int get maxResults;

  /// The token returned from a previous paginated request. Pagination continues from the end of the items returned by the previous request.
  String? get nextToken;
  @override
  DescribeInstancesRequest getPayload() => this;
  @override
  List<Object?> get props => [
        filters,
        instanceIds,
        dryRun,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeInstancesRequest')
      ..add(
        'filters',
        filters,
      )
      ..add(
        'instanceIds',
        instanceIds,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeInstancesRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeInstancesRequest> {
  const DescribeInstancesRequestEc2QuerySerializer()
      : super('DescribeInstancesRequest');

  @override
  Iterable<Type> get types => const [
        DescribeInstancesRequest,
        _$DescribeInstancesRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeInstancesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeInstancesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Filter':
          result.filters.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'Filter',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(Filter)],
            ),
          ) as _i3.BuiltList<Filter>));
        case 'InstanceId':
          result.instanceIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'InstanceId',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'maxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeInstancesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeInstancesRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeInstancesRequest(
      :filters,
      :instanceIds,
      :dryRun,
      :maxResults,
      :nextToken
    ) = object;
    if (filters != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'Filter',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          filters,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(Filter)],
          ),
        ));
    }
    if (instanceIds != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceId'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'InstanceId',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
