// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_ipam_pool_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/address_family.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_aws_service.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_pool_public_ip_source.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/request_ipam_resource_tag.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_ipam_pool_request.g.dart';

abstract class CreateIpamPoolRequest
    with
        _i1.HttpInput<CreateIpamPoolRequest>,
        _i2.AWSEquatable<CreateIpamPoolRequest>
    implements Built<CreateIpamPoolRequest, CreateIpamPoolRequestBuilder> {
  factory CreateIpamPoolRequest({
    bool? dryRun,
    String? ipamScopeId,
    String? locale,
    String? sourceIpamPoolId,
    String? description,
    AddressFamily? addressFamily,
    bool? autoImport,
    bool? publiclyAdvertisable,
    int? allocationMinNetmaskLength,
    int? allocationMaxNetmaskLength,
    int? allocationDefaultNetmaskLength,
    List<RequestIpamResourceTag>? allocationResourceTags,
    List<TagSpecification>? tagSpecifications,
    String? clientToken,
    IpamPoolAwsService? awsService,
    IpamPoolPublicIpSource? publicIpSource,
  }) {
    dryRun ??= false;
    autoImport ??= false;
    publiclyAdvertisable ??= false;
    allocationMinNetmaskLength ??= 0;
    allocationMaxNetmaskLength ??= 0;
    allocationDefaultNetmaskLength ??= 0;
    return _$CreateIpamPoolRequest._(
      dryRun: dryRun,
      ipamScopeId: ipamScopeId,
      locale: locale,
      sourceIpamPoolId: sourceIpamPoolId,
      description: description,
      addressFamily: addressFamily,
      autoImport: autoImport,
      publiclyAdvertisable: publiclyAdvertisable,
      allocationMinNetmaskLength: allocationMinNetmaskLength,
      allocationMaxNetmaskLength: allocationMaxNetmaskLength,
      allocationDefaultNetmaskLength: allocationDefaultNetmaskLength,
      allocationResourceTags: allocationResourceTags == null
          ? null
          : _i3.BuiltList(allocationResourceTags),
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      clientToken: clientToken,
      awsService: awsService,
      publicIpSource: publicIpSource,
    );
  }

  factory CreateIpamPoolRequest.build(
          [void Function(CreateIpamPoolRequestBuilder) updates]) =
      _$CreateIpamPoolRequest;

  const CreateIpamPoolRequest._();

  factory CreateIpamPoolRequest.fromRequest(
    CreateIpamPoolRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateIpamPoolRequest>> serializers = [
    CreateIpamPoolRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateIpamPoolRequestBuilder b) {
    b
      ..dryRun = false
      ..autoImport = false
      ..publiclyAdvertisable = false
      ..allocationMinNetmaskLength = 0
      ..allocationMaxNetmaskLength = 0
      ..allocationDefaultNetmaskLength = 0
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the scope in which you would like to create the IPAM pool.
  String? get ipamScopeId;

  /// In IPAM, the locale is the Amazon Web Services Region where you want to make an IPAM pool available for allocations. Only resources in the same Region as the locale of the pool can get IP address allocations from the pool. You can only allocate a CIDR for a VPC, for example, from an IPAM pool that shares a locale with the VPC’s Region. Note that once you choose a Locale for a pool, you cannot modify it. If you do not choose a locale, resources in Regions others than the IPAM's home region cannot use CIDRs from this pool.
  ///
  /// Possible values: Any Amazon Web Services Region, such as us-east-1.
  String? get locale;

  /// The ID of the source IPAM pool. Use this option to create a pool within an existing pool. Note that the CIDR you provision for the pool within the source pool must be available in the source pool's CIDR range.
  String? get sourceIpamPoolId;

  /// A description for the IPAM pool.
  String? get description;

  /// The IP protocol assigned to this IPAM pool. You must choose either IPv4 or IPv6 protocol for a pool.
  AddressFamily? get addressFamily;

  /// If selected, IPAM will continuously look for resources within the CIDR range of this pool and automatically import them as allocations into your IPAM. The CIDRs that will be allocated for these resources must not already be allocated to other resources in order for the import to succeed. IPAM will import a CIDR regardless of its compliance with the pool's allocation rules, so a resource might be imported and subsequently marked as noncompliant. If IPAM discovers multiple CIDRs that overlap, IPAM will import the largest CIDR only. If IPAM discovers multiple CIDRs with matching CIDRs, IPAM will randomly import one of them only.
  ///
  /// A locale must be set on the pool for this feature to work.
  bool get autoImport;

  /// Determines if the pool is publicly advertisable. This option is not available for pools with AddressFamily set to `ipv4`.
  bool get publiclyAdvertisable;

  /// The minimum netmask length required for CIDR allocations in this IPAM pool to be compliant. The minimum netmask length must be less than the maximum netmask length. Possible netmask lengths for IPv4 addresses are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.
  int get allocationMinNetmaskLength;

  /// The maximum netmask length possible for CIDR allocations in this IPAM pool to be compliant. The maximum netmask length must be greater than the minimum netmask length. Possible netmask lengths for IPv4 addresses are 0 - 32. Possible netmask lengths for IPv6 addresses are 0 - 128.
  int get allocationMaxNetmaskLength;

  /// The default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16.
  int get allocationDefaultNetmaskLength;

  /// Tags that are required for resources that use CIDRs from this IPAM pool. Resources that do not have these tags will not be allowed to allocate space from the pool. If the resources have their tags changed after they have allocated space or if the allocation tagging requirements are changed on the pool, the resource may be marked as noncompliant.
  _i3.BuiltList<RequestIpamResourceTag>? get allocationResourceTags;

  /// The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Limits which service in Amazon Web Services that the pool can be used in. "ec2", for example, allows users to use space for Elastic IP addresses and VPCs.
  IpamPoolAwsService? get awsService;

  /// The IP address source for pools in the public scope. Only used for provisioning IP address CIDRs to pools in the public scope. Default is `byoip`. For more information, see [Create IPv6 pools](https://docs.aws.amazon.com/vpc/latest/ipam/intro-create-ipv6-pools.html) in the _Amazon VPC IPAM User Guide_. By default, you can add only one Amazon-provided IPv6 CIDR block to a top-level IPv6 pool if PublicIpSource is `amazon`. For information on increasing the default limit, see [Quotas for your IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) in the _Amazon VPC IPAM User Guide_.
  IpamPoolPublicIpSource? get publicIpSource;
  @override
  CreateIpamPoolRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamScopeId,
        locale,
        sourceIpamPoolId,
        description,
        addressFamily,
        autoImport,
        publiclyAdvertisable,
        allocationMinNetmaskLength,
        allocationMaxNetmaskLength,
        allocationDefaultNetmaskLength,
        allocationResourceTags,
        tagSpecifications,
        clientToken,
        awsService,
        publicIpSource,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateIpamPoolRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'ipamScopeId',
        ipamScopeId,
      )
      ..add(
        'locale',
        locale,
      )
      ..add(
        'sourceIpamPoolId',
        sourceIpamPoolId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'addressFamily',
        addressFamily,
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
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'clientToken',
        clientToken,
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

class CreateIpamPoolRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateIpamPoolRequest> {
  const CreateIpamPoolRequestEc2QuerySerializer()
      : super('CreateIpamPoolRequest');

  @override
  Iterable<Type> get types => const [
        CreateIpamPoolRequest,
        _$CreateIpamPoolRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateIpamPoolRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateIpamPoolRequestBuilder();
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
        case 'IpamScopeId':
          result.ipamScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Locale':
          result.locale = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourceIpamPoolId':
          result.sourceIpamPoolId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AddressFamily':
          result.addressFamily = (serializers.deserialize(
            value,
            specifiedType: const FullType(AddressFamily),
          ) as AddressFamily);
        case 'AutoImport':
          result.autoImport = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'PubliclyAdvertisable':
          result.publiclyAdvertisable = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'AllocationMinNetmaskLength':
          result.allocationMinNetmaskLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'AllocationMaxNetmaskLength':
          result.allocationMaxNetmaskLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'AllocationDefaultNetmaskLength':
          result.allocationDefaultNetmaskLength = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'AllocationResourceTag':
          result.allocationResourceTags
              .replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(RequestIpamResourceTag)],
            ),
          ) as _i3.BuiltList<RequestIpamResourceTag>));
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
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AwsService':
          result.awsService = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamPoolAwsService),
          ) as IpamPoolAwsService);
        case 'PublicIpSource':
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
    CreateIpamPoolRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateIpamPoolRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateIpamPoolRequest(
      :dryRun,
      :ipamScopeId,
      :locale,
      :sourceIpamPoolId,
      :description,
      :addressFamily,
      :autoImport,
      :publiclyAdvertisable,
      :allocationMinNetmaskLength,
      :allocationMaxNetmaskLength,
      :allocationDefaultNetmaskLength,
      :allocationResourceTags,
      :tagSpecifications,
      :clientToken,
      :awsService,
      :publicIpSource
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (ipamScopeId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamScopeId'))
        ..add(serializers.serialize(
          ipamScopeId,
          specifiedType: const FullType(String),
        ));
    }
    if (locale != null) {
      result$
        ..add(const _i1.XmlElementName('Locale'))
        ..add(serializers.serialize(
          locale,
          specifiedType: const FullType(String),
        ));
    }
    if (sourceIpamPoolId != null) {
      result$
        ..add(const _i1.XmlElementName('SourceIpamPoolId'))
        ..add(serializers.serialize(
          sourceIpamPoolId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (addressFamily != null) {
      result$
        ..add(const _i1.XmlElementName('AddressFamily'))
        ..add(serializers.serialize(
          addressFamily,
          specifiedType: const FullType(AddressFamily),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('AutoImport'))
      ..add(serializers.serialize(
        autoImport,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('PubliclyAdvertisable'))
      ..add(serializers.serialize(
        publiclyAdvertisable,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('AllocationMinNetmaskLength'))
      ..add(serializers.serialize(
        allocationMinNetmaskLength,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('AllocationMaxNetmaskLength'))
      ..add(serializers.serialize(
        allocationMaxNetmaskLength,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i1.XmlElementName('AllocationDefaultNetmaskLength'))
      ..add(serializers.serialize(
        allocationDefaultNetmaskLength,
        specifiedType: const FullType(int),
      ));
    if (allocationResourceTags != null) {
      result$
        ..add(const _i1.XmlElementName('AllocationResourceTag'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          allocationResourceTags,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(RequestIpamResourceTag)],
          ),
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
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (awsService != null) {
      result$
        ..add(const _i1.XmlElementName('AwsService'))
        ..add(serializers.serialize(
          awsService,
          specifiedType: const FullType(IpamPoolAwsService),
        ));
    }
    if (publicIpSource != null) {
      result$
        ..add(const _i1.XmlElementName('PublicIpSource'))
        ..add(serializers.serialize(
          publicIpSource,
          specifiedType: const FullType(IpamPoolPublicIpSource),
        ));
    }
    return result$;
  }
}
