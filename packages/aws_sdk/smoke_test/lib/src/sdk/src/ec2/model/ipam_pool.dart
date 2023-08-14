// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam_pool; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/address_family.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_aws_service.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_public_ip_source.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_resource_tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'ipam_pool.g.dart';

/// In IPAM, a pool is a collection of contiguous IP addresses CIDRs. Pools enable you to organize your IP addresses according to your routing and security needs. For example, if you have separate routing and security needs for development and production applications, you can create a pool for each.
abstract class IpamPool
    with _i1.AWSEquatable<IpamPool>
    implements Built<IpamPool, IpamPoolBuilder> {
  /// In IPAM, a pool is a collection of contiguous IP addresses CIDRs. Pools enable you to organize your IP addresses according to your routing and security needs. For example, if you have separate routing and security needs for development and production applications, you can create a pool for each.
  factory IpamPool({
    String? ownerId,
    String? ipamPoolId,
    String? sourceIpamPoolId,
    String? ipamPoolArn,
    String? ipamScopeArn,
    IpamScopeType? ipamScopeType,
    String? ipamArn,
    String? ipamRegion,
    String? locale,
    int? poolDepth,
    IpamPoolState? state,
    String? stateMessage,
    String? description,
    bool? autoImport,
    bool? publiclyAdvertisable,
    AddressFamily? addressFamily,
    int? allocationMinNetmaskLength,
    int? allocationMaxNetmaskLength,
    int? allocationDefaultNetmaskLength,
    List<IpamResourceTag>? allocationResourceTags,
    List<Tag>? tags,
    IpamPoolAwsService? awsService,
    IpamPoolPublicIpSource? publicIpSource,
  }) {
    poolDepth ??= 0;
    autoImport ??= false;
    publiclyAdvertisable ??= false;
    allocationMinNetmaskLength ??= 0;
    allocationMaxNetmaskLength ??= 0;
    allocationDefaultNetmaskLength ??= 0;
    return _$IpamPool._(
      ownerId: ownerId,
      ipamPoolId: ipamPoolId,
      sourceIpamPoolId: sourceIpamPoolId,
      ipamPoolArn: ipamPoolArn,
      ipamScopeArn: ipamScopeArn,
      ipamScopeType: ipamScopeType,
      ipamArn: ipamArn,
      ipamRegion: ipamRegion,
      locale: locale,
      poolDepth: poolDepth,
      state: state,
      stateMessage: stateMessage,
      description: description,
      autoImport: autoImport,
      publiclyAdvertisable: publiclyAdvertisable,
      addressFamily: addressFamily,
      allocationMinNetmaskLength: allocationMinNetmaskLength,
      allocationMaxNetmaskLength: allocationMaxNetmaskLength,
      allocationDefaultNetmaskLength: allocationDefaultNetmaskLength,
      allocationResourceTags: allocationResourceTags == null
          ? null
          : _i2.BuiltList(allocationResourceTags),
      tags: tags == null ? null : _i2.BuiltList(tags),
      awsService: awsService,
      publicIpSource: publicIpSource,
    );
  }

  /// In IPAM, a pool is a collection of contiguous IP addresses CIDRs. Pools enable you to organize your IP addresses according to your routing and security needs. For example, if you have separate routing and security needs for development and production applications, you can create a pool for each.
  factory IpamPool.build([void Function(IpamPoolBuilder) updates]) = _$IpamPool;

  const IpamPool._();

  static const List<_i3.SmithySerializer<IpamPool>> serializers = [
    IpamPoolEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpamPoolBuilder b) {
    b
      ..poolDepth = 0
      ..autoImport = false
      ..publiclyAdvertisable = false
      ..allocationMinNetmaskLength = 0
      ..allocationMaxNetmaskLength = 0
      ..allocationDefaultNetmaskLength = 0;
  }

  /// The Amazon Web Services account ID of the owner of the IPAM pool.
  String? get ownerId;

  /// The ID of the IPAM pool.
  String? get ipamPoolId;

  /// The ID of the source IPAM pool. You can use this option to create an IPAM pool within an existing source pool.
  String? get sourceIpamPoolId;

  /// The Amazon Resource Name (ARN) of the IPAM pool.
  String? get ipamPoolArn;

  /// The ARN of the scope of the IPAM pool.
  String? get ipamScopeArn;

  /// In IPAM, a scope is the highest-level container within IPAM. An IPAM contains two default scopes. Each scope represents the IP space for a single network. The private scope is intended for all private IP address space. The public scope is intended for all public IP address space. Scopes enable you to reuse IP addresses across multiple unconnected networks without causing IP address overlap or conflict.
  IpamScopeType? get ipamScopeType;

  /// The ARN of the IPAM.
  String? get ipamArn;

  /// The Amazon Web Services Region of the IPAM pool.
  String? get ipamRegion;

  /// The locale of the IPAM pool. In IPAM, the locale is the Amazon Web Services Region where you want to make an IPAM pool available for allocations. Only resources in the same Region as the locale of the pool can get IP address allocations from the pool. You can only allocate a CIDR for a VPC, for example, from an IPAM pool that shares a locale with the VPC’s Region. Note that once you choose a Locale for a pool, you cannot modify it. If you choose an Amazon Web Services Region for locale that has not been configured as an operating Region for the IPAM, you'll get an error.
  String? get locale;

  /// The depth of pools in your IPAM pool. The pool depth quota is 10. For more information, see [Quotas in IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) in the _Amazon VPC IPAM User Guide_.
  int get poolDepth;

  /// The state of the IPAM pool.
  IpamPoolState? get state;

  /// A message related to the failed creation of an IPAM pool.
  String? get stateMessage;

  /// The description of the IPAM pool.
  String? get description;

  /// If selected, IPAM will continuously look for resources within the CIDR range of this pool and automatically import them as allocations into your IPAM. The CIDRs that will be allocated for these resources must not already be allocated to other resources in order for the import to succeed. IPAM will import a CIDR regardless of its compliance with the pool's allocation rules, so a resource might be imported and subsequently marked as noncompliant. If IPAM discovers multiple CIDRs that overlap, IPAM will import the largest CIDR only. If IPAM discovers multiple CIDRs with matching CIDRs, IPAM will randomly import one of them only.
  ///
  /// A locale must be set on the pool for this feature to work.
  bool get autoImport;

  /// Determines if a pool is publicly advertisable. This option is not available for pools with AddressFamily set to `ipv4`.
  bool get publiclyAdvertisable;

  /// The address family of the pool.
  AddressFamily? get addressFamily;

  /// The minimum netmask length required for CIDR allocations in this IPAM pool to be compliant. The minimum netmask length must be less than the maximum netmask length. Possible netmask lengths for IPv4 addresses are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.
  int get allocationMinNetmaskLength;

  /// The maximum netmask length possible for CIDR allocations in this IPAM pool to be compliant. The maximum netmask length must be greater than the minimum netmask length. Possible netmask lengths for IPv4 addresses are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.
  int get allocationMaxNetmaskLength;

  /// The default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16.
  int get allocationDefaultNetmaskLength;

  /// Tags that are required for resources that use CIDRs from this IPAM pool. Resources that do not have these tags will not be allowed to allocate space from the pool. If the resources have their tags changed after they have allocated space or if the allocation tagging requirements are changed on the pool, the resource may be marked as noncompliant.
  _i2.BuiltList<IpamResourceTag>? get allocationResourceTags;

  /// The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  _i2.BuiltList<Tag>? get tags;

  /// Limits which service in Amazon Web Services that the pool can be used in. "ec2", for example, allows users to use space for Elastic IP addresses and VPCs.
  IpamPoolAwsService? get awsService;

  /// The IP address source for pools in the public scope. Only used for provisioning IP address CIDRs to pools in the public scope. Default is `BYOIP`. For more information, see [Create IPv6 pools](https://docs.aws.amazon.com/vpc/latest/ipam/intro-create-ipv6-pools.html) in the _Amazon VPC IPAM User Guide_. By default, you can add only one Amazon-provided IPv6 CIDR block to a top-level IPv6 pool. For information on increasing the default limit, see [Quotas for your IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) in the _Amazon VPC IPAM User Guide_.
  IpamPoolPublicIpSource? get publicIpSource;
  @override
  List<Object?> get props => [
        ownerId,
        ipamPoolId,
        sourceIpamPoolId,
        ipamPoolArn,
        ipamScopeArn,
        ipamScopeType,
        ipamArn,
        ipamRegion,
        locale,
        poolDepth,
        state,
        stateMessage,
        description,
        autoImport,
        publiclyAdvertisable,
        addressFamily,
        allocationMinNetmaskLength,
        allocationMaxNetmaskLength,
        allocationDefaultNetmaskLength,
        allocationResourceTags,
        tags,
        awsService,
        publicIpSource,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('IpamPool')
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'ipamPoolId',
        ipamPoolId,
      )
      ..add(
        'sourceIpamPoolId',
        sourceIpamPoolId,
      )
      ..add(
        'ipamPoolArn',
        ipamPoolArn,
      )
      ..add(
        'ipamScopeArn',
        ipamScopeArn,
      )
      ..add(
        'ipamScopeType',
        ipamScopeType,
      )
      ..add(
        'ipamArn',
        ipamArn,
      )
      ..add(
        'ipamRegion',
        ipamRegion,
      )
      ..add(
        'locale',
        locale,
      )
      ..add(
        'poolDepth',
        poolDepth,
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
        'description',
        description,
      )
      ..add(
        'autoImport',
        autoImport,
      )
      ..add(
        'publiclyAdvertisable',
        publiclyAdvertisable,
      )
      ..add(
        'addressFamily',
        addressFamily,
      )
      ..add(
        'allocationMinNetmaskLength',
        allocationMinNetmaskLength,
      )
      ..add(
        'allocationMaxNetmaskLength',
        allocationMaxNetmaskLength,
      )
      ..add(
        'allocationDefaultNetmaskLength',
        allocationDefaultNetmaskLength,
      )
      ..add(
        'allocationResourceTags',
        allocationResourceTags,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'awsService',
        awsService,
      )
      ..add(
        'publicIpSource',
        publicIpSource,
      );
    return helper.toString();
  }
}

class IpamPoolEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<IpamPool> {
  const IpamPoolEc2QuerySerializer() : super('IpamPool');

  @override
  Iterable<Type> get types => const [
        IpamPool,
        _$IpamPool,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  IpamPool deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamPoolBuilder();
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
        case 'ipamPoolId':
          result.ipamPoolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'sourceIpamPoolId':
          result.sourceIpamPoolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamPoolArn':
          result.ipamPoolArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamScopeArn':
          result.ipamScopeArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamScopeType':
          result.ipamScopeType = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamScopeType),
          ) as IpamScopeType);
        case 'ipamArn':
          result.ipamArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamRegion':
          result.ipamRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'locale':
          result.locale = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'poolDepth':
          result.poolDepth = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamPoolState),
          ) as IpamPoolState);
        case 'stateMessage':
          result.stateMessage = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'autoImport':
          result.autoImport = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'publiclyAdvertisable':
          result.publiclyAdvertisable = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'addressFamily':
          result.addressFamily = (serializers.deserialize(
            value,
            specifiedType: const FullType(AddressFamily),
          ) as AddressFamily);
        case 'allocationMinNetmaskLength':
          result.allocationMinNetmaskLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'allocationMaxNetmaskLength':
          result.allocationMaxNetmaskLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'allocationDefaultNetmaskLength':
          result.allocationDefaultNetmaskLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'allocationResourceTagSet':
          result.allocationResourceTags
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpamResourceTag)],
            ),
          ) as _i2.BuiltList<IpamResourceTag>));
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
        case 'awsService':
          result.awsService = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamPoolAwsService),
          ) as IpamPoolAwsService);
        case 'publicIpSource':
          result.publicIpSource = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamPoolPublicIpSource),
          ) as IpamPoolPublicIpSource);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IpamPool object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'IpamPoolResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final IpamPool(
      :ownerId,
      :ipamPoolId,
      :sourceIpamPoolId,
      :ipamPoolArn,
      :ipamScopeArn,
      :ipamScopeType,
      :ipamArn,
      :ipamRegion,
      :locale,
      :poolDepth,
      :state,
      :stateMessage,
      :description,
      :autoImport,
      :publiclyAdvertisable,
      :addressFamily,
      :allocationMinNetmaskLength,
      :allocationMaxNetmaskLength,
      :allocationDefaultNetmaskLength,
      :allocationResourceTags,
      :tags,
      :awsService,
      :publicIpSource
    ) = object;
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamPoolId != null) {
      result$
        ..add(const _i3.XmlElementName('IpamPoolId'))
        ..add(serializers.serialize(
          ipamPoolId,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceIpamPoolId != null) {
      result$
        ..add(const _i3.XmlElementName('SourceIpamPoolId'))
        ..add(serializers.serialize(
          sourceIpamPoolId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamPoolArn != null) {
      result$
        ..add(const _i3.XmlElementName('IpamPoolArn'))
        ..add(serializers.serialize(
          ipamPoolArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamScopeArn != null) {
      result$
        ..add(const _i3.XmlElementName('IpamScopeArn'))
        ..add(serializers.serialize(
          ipamScopeArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamScopeType != null) {
      result$
        ..add(const _i3.XmlElementName('IpamScopeType'))
        ..add(serializers.serialize(
          ipamScopeType,
          specifiedType: const FullType.nullable(IpamScopeType),
        ));
    }
    if (ipamArn != null) {
      result$
        ..add(const _i3.XmlElementName('IpamArn'))
        ..add(serializers.serialize(
          ipamArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamRegion != null) {
      result$
        ..add(const _i3.XmlElementName('IpamRegion'))
        ..add(serializers.serialize(
          ipamRegion,
          specifiedType: const FullType(String),
        ));
    }
    if (locale != null) {
      result$
        ..add(const _i3.XmlElementName('Locale'))
        ..add(serializers.serialize(
          locale,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('PoolDepth'))
      ..add(serializers.serialize(
        poolDepth,
        specifiedType: const FullType(int),
      ));
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(IpamPoolState),
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
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('AutoImport'))
      ..add(serializers.serialize(
        autoImport,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i3.XmlElementName('PubliclyAdvertisable'))
      ..add(serializers.serialize(
        publiclyAdvertisable,
        specifiedType: const FullType(bool),
      ));
    if (addressFamily != null) {
      result$
        ..add(const _i3.XmlElementName('AddressFamily'))
        ..add(serializers.serialize(
          addressFamily,
          specifiedType: const FullType.nullable(AddressFamily),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('AllocationMinNetmaskLength'))
      ..add(serializers.serialize(
        allocationMinNetmaskLength,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('AllocationMaxNetmaskLength'))
      ..add(serializers.serialize(
        allocationMaxNetmaskLength,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('AllocationDefaultNetmaskLength'))
      ..add(serializers.serialize(
        allocationDefaultNetmaskLength,
        specifiedType: const FullType(int),
      ));
    if (allocationResourceTags != null) {
      result$
        ..add(const _i3.XmlElementName('AllocationResourceTagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          allocationResourceTags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(IpamResourceTag)],
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
    if (awsService != null) {
      result$
        ..add(const _i3.XmlElementName('AwsService'))
        ..add(serializers.serialize(
          awsService,
          specifiedType: const FullType.nullable(IpamPoolAwsService),
        ));
    }
    if (publicIpSource != null) {
      result$
        ..add(const _i3.XmlElementName('PublicIpSource'))
        ..add(serializers.serialize(
          publicIpSource,
          specifiedType: const FullType.nullable(IpamPoolPublicIpSource),
        ));
    }
    return result$;
  }
}
