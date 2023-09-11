// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_ipam_resource_discovery_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/add_ipam_operating_region.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/remove_ipam_operating_region.dart';

part 'modify_ipam_resource_discovery_request.g.dart';

abstract class ModifyIpamResourceDiscoveryRequest
    with
        _i1.HttpInput<ModifyIpamResourceDiscoveryRequest>,
        _i2.AWSEquatable<ModifyIpamResourceDiscoveryRequest>
    implements
        Built<ModifyIpamResourceDiscoveryRequest,
            ModifyIpamResourceDiscoveryRequestBuilder> {
  factory ModifyIpamResourceDiscoveryRequest({
    bool? dryRun,
    String? ipamResourceDiscoveryId,
    String? description,
    List<AddIpamOperatingRegion>? addOperatingRegions,
    List<RemoveIpamOperatingRegion>? removeOperatingRegions,
  }) {
    dryRun ??= false;
    return _$ModifyIpamResourceDiscoveryRequest._(
      dryRun: dryRun,
      ipamResourceDiscoveryId: ipamResourceDiscoveryId,
      description: description,
      addOperatingRegions: addOperatingRegions == null
          ? null
          : _i3.BuiltList(addOperatingRegions),
      removeOperatingRegions: removeOperatingRegions == null
          ? null
          : _i3.BuiltList(removeOperatingRegions),
    );
  }

  factory ModifyIpamResourceDiscoveryRequest.build(
          [void Function(ModifyIpamResourceDiscoveryRequestBuilder) updates]) =
      _$ModifyIpamResourceDiscoveryRequest;

  const ModifyIpamResourceDiscoveryRequest._();

  factory ModifyIpamResourceDiscoveryRequest.fromRequest(
    ModifyIpamResourceDiscoveryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyIpamResourceDiscoveryRequest>>
      serializers = [ModifyIpamResourceDiscoveryRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyIpamResourceDiscoveryRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A resource discovery ID.
  String? get ipamResourceDiscoveryId;

  /// A resource discovery description.
  String? get description;

  /// Add operating Regions to the resource discovery. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.
  _i3.BuiltList<AddIpamOperatingRegion>? get addOperatingRegions;

  /// Remove operating Regions.
  _i3.BuiltList<RemoveIpamOperatingRegion>? get removeOperatingRegions;
  @override
  ModifyIpamResourceDiscoveryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamResourceDiscoveryId,
        description,
        addOperatingRegions,
        removeOperatingRegions,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyIpamResourceDiscoveryRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'ipamResourceDiscoveryId',
            ipamResourceDiscoveryId,
          )
          ..add(
            'description',
            description,
          )
          ..add(
            'addOperatingRegions',
            addOperatingRegions,
          )
          ..add(
            'removeOperatingRegions',
            removeOperatingRegions,
          );
    return helper.toString();
  }
}

class ModifyIpamResourceDiscoveryRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyIpamResourceDiscoveryRequest> {
  const ModifyIpamResourceDiscoveryRequestEc2QuerySerializer()
      : super('ModifyIpamResourceDiscoveryRequest');

  @override
  Iterable<Type> get types => const [
        ModifyIpamResourceDiscoveryRequest,
        _$ModifyIpamResourceDiscoveryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIpamResourceDiscoveryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIpamResourceDiscoveryRequestBuilder();
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
        case 'IpamResourceDiscoveryId':
          result.ipamResourceDiscoveryId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AddOperatingRegion':
          result.addOperatingRegions.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(AddIpamOperatingRegion)],
            ),
          ) as _i3.BuiltList<AddIpamOperatingRegion>));
        case 'RemoveOperatingRegion':
          result.removeOperatingRegions.replace(
              (const _i1.XmlBuiltListSerializer(
                      indexer: _i1.XmlIndexer.ec2QueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(RemoveIpamOperatingRegion)],
            ),
          ) as _i3.BuiltList<RemoveIpamOperatingRegion>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyIpamResourceDiscoveryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyIpamResourceDiscoveryRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyIpamResourceDiscoveryRequest(
      :dryRun,
      :ipamResourceDiscoveryId,
      :description,
      :addOperatingRegions,
      :removeOperatingRegions
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (ipamResourceDiscoveryId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamResourceDiscoveryId'))
        ..add(serializers.serialize(
          ipamResourceDiscoveryId,
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
    if (addOperatingRegions != null) {
      result$
        ..add(const _i1.XmlElementName('AddOperatingRegion'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          addOperatingRegions,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(AddIpamOperatingRegion)],
          ),
        ));
    }
    if (removeOperatingRegions != null) {
      result$
        ..add(const _i1.XmlElementName('RemoveOperatingRegion'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          removeOperatingRegions,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(RemoveIpamOperatingRegion)],
          ),
        ));
    }
    return result$;
  }
}
