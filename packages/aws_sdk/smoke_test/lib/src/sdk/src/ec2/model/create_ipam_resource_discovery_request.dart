// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_ipam_resource_discovery_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/add_ipam_operating_region.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_ipam_resource_discovery_request.g.dart';

abstract class CreateIpamResourceDiscoveryRequest
    with
        _i1.HttpInput<CreateIpamResourceDiscoveryRequest>,
        _i2.AWSEquatable<CreateIpamResourceDiscoveryRequest>
    implements
        Built<CreateIpamResourceDiscoveryRequest,
            CreateIpamResourceDiscoveryRequestBuilder> {
  factory CreateIpamResourceDiscoveryRequest({
    bool? dryRun,
    String? description,
    List<AddIpamOperatingRegion>? operatingRegions,
    List<TagSpecification>? tagSpecifications,
    String? clientToken,
  }) {
    dryRun ??= false;
    return _$CreateIpamResourceDiscoveryRequest._(
      dryRun: dryRun,
      description: description,
      operatingRegions:
          operatingRegions == null ? null : _i3.BuiltList(operatingRegions),
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      clientToken: clientToken,
    );
  }

  factory CreateIpamResourceDiscoveryRequest.build(
          [void Function(CreateIpamResourceDiscoveryRequestBuilder) updates]) =
      _$CreateIpamResourceDiscoveryRequest;

  const CreateIpamResourceDiscoveryRequest._();

  factory CreateIpamResourceDiscoveryRequest.fromRequest(
    CreateIpamResourceDiscoveryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateIpamResourceDiscoveryRequest>>
      serializers = [CreateIpamResourceDiscoveryRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateIpamResourceDiscoveryRequestBuilder b) {
    b
      ..dryRun = false
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A description for the IPAM resource discovery.
  String? get description;

  /// Operating Regions for the IPAM resource discovery. Operating Regions are Amazon Web Services Regions where the IPAM is allowed to manage IP address CIDRs. IPAM only discovers and monitors resources in the Amazon Web Services Regions you select as operating Regions.
  _i3.BuiltList<AddIpamOperatingRegion>? get operatingRegions;

  /// Tag specifications for the IPAM resource discovery.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// A client token for the IPAM resource discovery.
  String? get clientToken;
  @override
  CreateIpamResourceDiscoveryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        description,
        operatingRegions,
        tagSpecifications,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateIpamResourceDiscoveryRequest')
          ..add(
            'dryRun',
            dryRun,
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
            'tagSpecifications',
            tagSpecifications,
          )
          ..add(
            'clientToken',
            clientToken,
          );
    return helper.toString();
  }
}

class CreateIpamResourceDiscoveryRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateIpamResourceDiscoveryRequest> {
  const CreateIpamResourceDiscoveryRequestEc2QuerySerializer()
      : super('CreateIpamResourceDiscoveryRequest');

  @override
  Iterable<Type> get types => const [
        CreateIpamResourceDiscoveryRequest,
        _$CreateIpamResourceDiscoveryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateIpamResourceDiscoveryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateIpamResourceDiscoveryRequestBuilder();
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
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OperatingRegion':
          result.operatingRegions.replace((const _i1.XmlBuiltListSerializer(
                  indexer: _i1.XmlIndexer.ec2QueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(AddIpamOperatingRegion)],
            ),
          ) as _i3.BuiltList<AddIpamOperatingRegion>));
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateIpamResourceDiscoveryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateIpamResourceDiscoveryRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateIpamResourceDiscoveryRequest(
      :dryRun,
      :description,
      :operatingRegions,
      :tagSpecifications,
      :clientToken
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (description != null) {
      result$
        ..add(const _i1.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (operatingRegions != null) {
      result$
        ..add(const _i1.XmlElementName('OperatingRegion'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          operatingRegions,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(AddIpamOperatingRegion)],
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
    return result$;
  }
}
