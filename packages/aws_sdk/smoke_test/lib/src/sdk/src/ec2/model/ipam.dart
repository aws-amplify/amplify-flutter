// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.ipam; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_operating_region.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'ipam.g.dart';

/// IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across Amazon Web Services Regions and accounts throughout your Amazon Web Services Organization. For more information, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
abstract class Ipam
    with _i1.AWSEquatable<Ipam>
    implements Built<Ipam, IpamBuilder> {
  /// IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across Amazon Web Services Regions and accounts throughout your Amazon Web Services Organization. For more information, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory Ipam({
    String? ownerId,
    String? ipamId,
    String? ipamArn,
    String? ipamRegion,
    String? publicDefaultScopeId,
    String? privateDefaultScopeId,
    int? scopeCount,
    String? description,
    List<IpamOperatingRegion>? operatingRegions,
    IpamState? state,
    List<Tag>? tags,
    String? defaultResourceDiscoveryId,
    String? defaultResourceDiscoveryAssociationId,
    int? resourceDiscoveryAssociationCount,
  }) {
    scopeCount ??= 0;
    resourceDiscoveryAssociationCount ??= 0;
    return _$Ipam._(
      ownerId: ownerId,
      ipamId: ipamId,
      ipamArn: ipamArn,
      ipamRegion: ipamRegion,
      publicDefaultScopeId: publicDefaultScopeId,
      privateDefaultScopeId: privateDefaultScopeId,
      scopeCount: scopeCount,
      description: description,
      operatingRegions:
          operatingRegions == null ? null : _i2.BuiltList(operatingRegions),
      state: state,
      tags: tags == null ? null : _i2.BuiltList(tags),
      defaultResourceDiscoveryId: defaultResourceDiscoveryId,
      defaultResourceDiscoveryAssociationId:
          defaultResourceDiscoveryAssociationId,
      resourceDiscoveryAssociationCount: resourceDiscoveryAssociationCount,
    );
  }

  /// IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across Amazon Web Services Regions and accounts throughout your Amazon Web Services Organization. For more information, see [What is IPAM?](https://docs.aws.amazon.com/vpc/latest/ipam/what-is-it-ipam.html) in the _Amazon VPC IPAM User Guide_.
  factory Ipam.build([void Function(IpamBuilder) updates]) = _$Ipam;

  const Ipam._();

  static const List<_i3.SmithySerializer<Ipam>> serializers = [
    IpamEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(IpamBuilder b) {
    b
      ..scopeCount = 0
      ..resourceDiscoveryAssociationCount = 0;
  }

  /// The Amazon Web Services account ID of the owner of the IPAM.
  String? get ownerId;

  /// The ID of the IPAM.
  String? get ipamId;

  /// The Amazon Resource Name (ARN) of the IPAM.
  String? get ipamArn;

  /// The Amazon Web Services Region of the IPAM.
  String? get ipamRegion;

  /// The ID of the IPAM's default public scope.
  String? get publicDefaultScopeId;

  /// The ID of the IPAM's default private scope.
  String? get privateDefaultScopeId;

  /// The number of scopes in the IPAM. The scope quota is 5. For more information on quotas, see [Quotas in IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/quotas-ipam.html) in the _Amazon VPC IPAM User Guide_.
  int get scopeCount;

  /// The description for the IPAM.
  String? get description;

  /// The operating Regions for an IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.
  ///
  /// For more information about operating Regions, see [Create an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i2.BuiltList<IpamOperatingRegion>? get operatingRegions;

  /// The state of the IPAM.
  IpamState? get state;

  /// The key/value combination of a tag assigned to the resource. Use the tag key in the filter name and the tag value as the filter value. For example, to find all resources that have a tag with the key `Owner` and the value `TeamA`, specify `tag:Owner` for the filter name and `TeamA` for the filter value.
  _i2.BuiltList<Tag>? get tags;

  /// The IPAM's default resource discovery ID.
  String? get defaultResourceDiscoveryId;

  /// The IPAM's default resource discovery association ID.
  String? get defaultResourceDiscoveryAssociationId;

  /// The IPAM's resource discovery association count.
  int get resourceDiscoveryAssociationCount;
  @override
  List<Object?> get props => [
        ownerId,
        ipamId,
        ipamArn,
        ipamRegion,
        publicDefaultScopeId,
        privateDefaultScopeId,
        scopeCount,
        description,
        operatingRegions,
        state,
        tags,
        defaultResourceDiscoveryId,
        defaultResourceDiscoveryAssociationId,
        resourceDiscoveryAssociationCount,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Ipam')
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'ipamId',
        ipamId,
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
        'publicDefaultScopeId',
        publicDefaultScopeId,
      )
      ..add(
        'privateDefaultScopeId',
        privateDefaultScopeId,
      )
      ..add(
        'scopeCount',
        scopeCount,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'operatingRegions',
        operatingRegions,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'defaultResourceDiscoveryId',
        defaultResourceDiscoveryId,
      )
      ..add(
        'defaultResourceDiscoveryAssociationId',
        defaultResourceDiscoveryAssociationId,
      )
      ..add(
        'resourceDiscoveryAssociationCount',
        resourceDiscoveryAssociationCount,
      );
    return helper.toString();
  }
}

class IpamEc2QuerySerializer extends _i3.StructuredSmithySerializer<Ipam> {
  const IpamEc2QuerySerializer() : super('Ipam');

  @override
  Iterable<Type> get types => const [
        Ipam,
        _$Ipam,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Ipam deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IpamBuilder();
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
        case 'ipamId':
          result.ipamId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'publicDefaultScopeId':
          result.publicDefaultScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'privateDefaultScopeId':
          result.privateDefaultScopeId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'scopeCount':
          result.scopeCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'operatingRegionSet':
          result.operatingRegions.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpamOperatingRegion)],
            ),
          ) as _i2.BuiltList<IpamOperatingRegion>));
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(IpamState),
          ) as IpamState);
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
        case 'defaultResourceDiscoveryId':
          result.defaultResourceDiscoveryId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'defaultResourceDiscoveryAssociationId':
          result.defaultResourceDiscoveryAssociationId =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceDiscoveryAssociationCount':
          result.resourceDiscoveryAssociationCount = (serializers.deserialize(
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
    Ipam object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'IpamResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Ipam(
      :ownerId,
      :ipamId,
      :ipamArn,
      :ipamRegion,
      :publicDefaultScopeId,
      :privateDefaultScopeId,
      :scopeCount,
      :description,
      :operatingRegions,
      :state,
      :tags,
      :defaultResourceDiscoveryId,
      :defaultResourceDiscoveryAssociationId,
      :resourceDiscoveryAssociationCount
    ) = object;
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamId != null) {
      result$
        ..add(const _i3.XmlElementName('IpamId'))
        ..add(serializers.serialize(
          ipamId,
          specifiedType: const FullType(String),
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
    if (publicDefaultScopeId != null) {
      result$
        ..add(const _i3.XmlElementName('PublicDefaultScopeId'))
        ..add(serializers.serialize(
          publicDefaultScopeId,
          specifiedType: const FullType(String),
        ));
    }
    if (privateDefaultScopeId != null) {
      result$
        ..add(const _i3.XmlElementName('PrivateDefaultScopeId'))
        ..add(serializers.serialize(
          privateDefaultScopeId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('ScopeCount'))
      ..add(serializers.serialize(
        scopeCount,
        specifiedType: const FullType(int),
      ));
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (operatingRegions != null) {
      result$
        ..add(const _i3.XmlElementName('OperatingRegionSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          operatingRegions,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(IpamOperatingRegion)],
          ),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(IpamState),
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (defaultResourceDiscoveryId != null) {
      result$
        ..add(const _i3.XmlElementName('DefaultResourceDiscoveryId'))
        ..add(serializers.serialize(
          defaultResourceDiscoveryId,
          specifiedType: const FullType(String),
        ));
    }
    if (defaultResourceDiscoveryAssociationId != null) {
      result$
        ..add(const _i3.XmlElementName('DefaultResourceDiscoveryAssociationId'))
        ..add(serializers.serialize(
          defaultResourceDiscoveryAssociationId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('ResourceDiscoveryAssociationCount'))
      ..add(serializers.serialize(
        resourceDiscoveryAssociationCount,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
