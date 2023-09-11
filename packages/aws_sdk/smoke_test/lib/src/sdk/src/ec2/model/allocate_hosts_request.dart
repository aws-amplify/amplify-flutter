// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.allocate_hosts_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/auto_placement.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_maintenance.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/host_recovery.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'allocate_hosts_request.g.dart';

abstract class AllocateHostsRequest
    with
        _i1.HttpInput<AllocateHostsRequest>,
        _i2.AWSEquatable<AllocateHostsRequest>
    implements Built<AllocateHostsRequest, AllocateHostsRequestBuilder> {
  factory AllocateHostsRequest({
    AutoPlacement? autoPlacement,
    String? availabilityZone,
    String? clientToken,
    String? instanceType,
    String? instanceFamily,
    int? quantity,
    List<TagSpecification>? tagSpecifications,
    HostRecovery? hostRecovery,
    String? outpostArn,
    HostMaintenance? hostMaintenance,
    List<String>? assetIds,
  }) {
    quantity ??= 0;
    return _$AllocateHostsRequest._(
      autoPlacement: autoPlacement,
      availabilityZone: availabilityZone,
      clientToken: clientToken,
      instanceType: instanceType,
      instanceFamily: instanceFamily,
      quantity: quantity,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      hostRecovery: hostRecovery,
      outpostArn: outpostArn,
      hostMaintenance: hostMaintenance,
      assetIds: assetIds == null ? null : _i3.BuiltList(assetIds),
    );
  }

  factory AllocateHostsRequest.build(
          [void Function(AllocateHostsRequestBuilder) updates]) =
      _$AllocateHostsRequest;

  const AllocateHostsRequest._();

  factory AllocateHostsRequest.fromRequest(
    AllocateHostsRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AllocateHostsRequest>> serializers = [
    AllocateHostsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AllocateHostsRequestBuilder b) {
    b.quantity = 0;
  }

  /// Indicates whether the host accepts any untargeted instance launches that match its instance type configuration, or if it only accepts Host tenancy instance launches that specify its unique host ID. For more information, see [Understanding auto-placement and affinity](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/how-dedicated-hosts-work.html#dedicated-hosts-understanding) in the _Amazon EC2 User Guide_.
  ///
  /// Default: `on`
  AutoPlacement? get autoPlacement;

  /// The Availability Zone in which to allocate the Dedicated Host.
  String? get availabilityZone;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Specifies the instance type to be supported by the Dedicated Hosts. If you specify an instance type, the Dedicated Hosts support instances of the specified instance type only.
  ///
  /// If you want the Dedicated Hosts to support multiple instance types in a specific instance family, omit this parameter and specify **InstanceFamily** instead. You cannot specify **InstanceType** and **InstanceFamily** in the same request.
  String? get instanceType;

  /// Specifies the instance family to be supported by the Dedicated Hosts. If you specify an instance family, the Dedicated Hosts support multiple instance types within that instance family.
  ///
  /// If you want the Dedicated Hosts to support a specific instance type only, omit this parameter and specify **InstanceType** instead. You cannot specify **InstanceFamily** and **InstanceType** in the same request.
  String? get instanceFamily;

  /// The number of Dedicated Hosts to allocate to your account with these parameters. If you are allocating the Dedicated Hosts on an Outpost, and you specify **AssetIds**, you can omit this parameter. In this case, Amazon EC2 allocates a Dedicated Host on each specified hardware asset. If you specify both **AssetIds** and **Quantity**, then the value that you specify for **Quantity** must be equal to the number of asset IDs specified.
  int get quantity;

  /// The tags to apply to the Dedicated Host during creation.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Indicates whether to enable or disable host recovery for the Dedicated Host. Host recovery is disabled by default. For more information, see [Host recovery](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-recovery.html) in the _Amazon EC2 User Guide_.
  ///
  /// Default: `off`
  HostRecovery? get hostRecovery;

  /// The Amazon Resource Name (ARN) of the Amazon Web Services Outpost on which to allocate the Dedicated Host. If you specify **OutpostArn**, you can optionally specify **AssetIds**.
  ///
  /// If you are allocating the Dedicated Host in a Region, omit this parameter.
  String? get outpostArn;

  /// Indicates whether to enable or disable host maintenance for the Dedicated Host. For more information, see [Host maintenance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-maintenance.html) in the _Amazon EC2 User Guide_.
  HostMaintenance? get hostMaintenance;

  /// The IDs of the Outpost hardware assets on which to allocate the Dedicated Hosts. Targeting specific hardware assets on an Outpost can help to minimize latency between your workloads. This parameter is supported only if you specify **OutpostArn**. If you are allocating the Dedicated Hosts in a Region, omit this parameter.
  ///
  /// *   If you specify this parameter, you can omit **Quantity**. In this case, Amazon EC2 allocates a Dedicated Host on each specified hardware asset.
  ///
  /// *   If you specify both **AssetIds** and **Quantity**, then the value for **Quantity** must be equal to the number of asset IDs specified.
  _i3.BuiltList<String>? get assetIds;
  @override
  AllocateHostsRequest getPayload() => this;
  @override
  List<Object?> get props => [
        autoPlacement,
        availabilityZone,
        clientToken,
        instanceType,
        instanceFamily,
        quantity,
        tagSpecifications,
        hostRecovery,
        outpostArn,
        hostMaintenance,
        assetIds,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllocateHostsRequest')
      ..add(
        'autoPlacement',
        autoPlacement,
      )
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'instanceFamily',
        instanceFamily,
      )
      ..add(
        'quantity',
        quantity,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'hostRecovery',
        hostRecovery,
      )
      ..add(
        'outpostArn',
        outpostArn,
      )
      ..add(
        'hostMaintenance',
        hostMaintenance,
      )
      ..add(
        'assetIds',
        assetIds,
      );
    return helper.toString();
  }
}

class AllocateHostsRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<AllocateHostsRequest> {
  const AllocateHostsRequestEc2QuerySerializer()
      : super('AllocateHostsRequest');

  @override
  Iterable<Type> get types => const [
        AllocateHostsRequest,
        _$AllocateHostsRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AllocateHostsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllocateHostsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'autoPlacement':
          result.autoPlacement = (serializers.deserialize(
            value,
            specifiedType: const FullType(AutoPlacement),
          ) as AutoPlacement);
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InstanceFamily':
          result.instanceFamily = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'quantity':
          result.quantity = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
        case 'HostRecovery':
          result.hostRecovery = (serializers.deserialize(
            value,
            specifiedType: const FullType(HostRecovery),
          ) as HostRecovery);
        case 'OutpostArn':
          result.outpostArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'HostMaintenance':
          result.hostMaintenance = (serializers.deserialize(
            value,
            specifiedType: const FullType(HostMaintenance),
          ) as HostMaintenance);
        case 'AssetId':
          result.assetIds.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
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
    AllocateHostsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AllocateHostsRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AllocateHostsRequest(
      :autoPlacement,
      :availabilityZone,
      :clientToken,
      :instanceType,
      :instanceFamily,
      :quantity,
      :tagSpecifications,
      :hostRecovery,
      :outpostArn,
      :hostMaintenance,
      :assetIds
    ) = object;
    if (autoPlacement != null) {
      result$
        ..add(const _i1.XmlElementName('AutoPlacement'))
        ..add(serializers.serialize(
          autoPlacement,
          specifiedType: const FullType(AutoPlacement),
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
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceFamily != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceFamily'))
        ..add(serializers.serialize(
          instanceFamily,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Quantity'))
      ..add(serializers.serialize(
        quantity,
        specifiedType: const FullType(int),
      ));
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
    if (hostRecovery != null) {
      result$
        ..add(const _i1.XmlElementName('HostRecovery'))
        ..add(serializers.serialize(
          hostRecovery,
          specifiedType: const FullType(HostRecovery),
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
    if (hostMaintenance != null) {
      result$
        ..add(const _i1.XmlElementName('HostMaintenance'))
        ..add(serializers.serialize(
          hostMaintenance,
          specifiedType: const FullType(HostMaintenance),
        ));
    }
    if (assetIds != null) {
      result$
        ..add(const _i1.XmlElementName('AssetId'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          assetIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    return result$;
  }
}
