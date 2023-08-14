// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_ipam_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/add_ipam_operating_region.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/remove_ipam_operating_region.dart';

part 'modify_ipam_request.g.dart';

abstract class ModifyIpamRequest
    with _i1.HttpInput<ModifyIpamRequest>, _i2.AWSEquatable<ModifyIpamRequest>
    implements Built<ModifyIpamRequest, ModifyIpamRequestBuilder> {
  factory ModifyIpamRequest({
    bool? dryRun,
    String? ipamId,
    String? description,
    List<AddIpamOperatingRegion>? addOperatingRegions,
    List<RemoveIpamOperatingRegion>? removeOperatingRegions,
  }) {
    dryRun ??= false;
    return _$ModifyIpamRequest._(
      dryRun: dryRun,
      ipamId: ipamId,
      description: description,
      addOperatingRegions: addOperatingRegions == null
          ? null
          : _i3.BuiltList(addOperatingRegions),
      removeOperatingRegions: removeOperatingRegions == null
          ? null
          : _i3.BuiltList(removeOperatingRegions),
    );
  }

  factory ModifyIpamRequest.build(
      [void Function(ModifyIpamRequestBuilder) updates]) = _$ModifyIpamRequest;

  const ModifyIpamRequest._();

  factory ModifyIpamRequest.fromRequest(
    ModifyIpamRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyIpamRequest>> serializers = [
    ModifyIpamRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyIpamRequestBuilder b) {
    b.dryRun = false;
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The ID of the IPAM you want to modify.
  String? get ipamId;

  /// The description of the IPAM you want to modify.
  String? get description;

  /// Choose the operating Regions for the IPAM. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.
  ///
  /// For more information about operating Regions, see [Create an IPAM](https://docs.aws.amazon.com/vpc/latest/ipam/create-ipam.html) in the _Amazon VPC IPAM User Guide_.
  _i3.BuiltList<AddIpamOperatingRegion>? get addOperatingRegions;

  /// The operating Regions to remove.
  _i3.BuiltList<RemoveIpamOperatingRegion>? get removeOperatingRegions;
  @override
  ModifyIpamRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamId,
        description,
        addOperatingRegions,
        removeOperatingRegions,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyIpamRequest')
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'ipamId',
        ipamId,
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

class ModifyIpamRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<ModifyIpamRequest> {
  const ModifyIpamRequestEc2QuerySerializer() : super('ModifyIpamRequest');

  @override
  Iterable<Type> get types => const [
        ModifyIpamRequest,
        _$ModifyIpamRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyIpamRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyIpamRequestBuilder();
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
        case 'IpamId':
          result.ipamId = (serializers.deserialize(
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
    ModifyIpamRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyIpamRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyIpamRequest(
      :dryRun,
      :ipamId,
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
    if (ipamId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamId'))
        ..add(serializers.serialize(
          ipamId,
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
          specifiedType: const FullType.nullable(
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
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(RemoveIpamOperatingRegion)],
          ),
        ));
    }
    return result$;
  }
}
