// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.associate_ipam_resource_discovery_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'associate_ipam_resource_discovery_request.g.dart';

abstract class AssociateIpamResourceDiscoveryRequest
    with
        _i1.HttpInput<AssociateIpamResourceDiscoveryRequest>,
        _i2.AWSEquatable<AssociateIpamResourceDiscoveryRequest>
    implements
        Built<AssociateIpamResourceDiscoveryRequest,
            AssociateIpamResourceDiscoveryRequestBuilder> {
  factory AssociateIpamResourceDiscoveryRequest({
    bool? dryRun,
    String? ipamId,
    String? ipamResourceDiscoveryId,
    List<TagSpecification>? tagSpecifications,
    String? clientToken,
  }) {
    dryRun ??= false;
    return _$AssociateIpamResourceDiscoveryRequest._(
      dryRun: dryRun,
      ipamId: ipamId,
      ipamResourceDiscoveryId: ipamResourceDiscoveryId,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      clientToken: clientToken,
    );
  }

  factory AssociateIpamResourceDiscoveryRequest.build(
      [void Function(AssociateIpamResourceDiscoveryRequestBuilder)
          updates]) = _$AssociateIpamResourceDiscoveryRequest;

  const AssociateIpamResourceDiscoveryRequest._();

  factory AssociateIpamResourceDiscoveryRequest.fromRequest(
    AssociateIpamResourceDiscoveryRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<AssociateIpamResourceDiscoveryRequest>>
      serializers = [AssociateIpamResourceDiscoveryRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AssociateIpamResourceDiscoveryRequestBuilder b) {
    b
      ..dryRun = false
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// A check for whether you have the required permissions for the action without actually making the request and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// An IPAM ID.
  String? get ipamId;

  /// A resource discovery ID.
  String? get ipamResourceDiscoveryId;

  /// Tag specifications.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// A client token.
  String? get clientToken;
  @override
  AssociateIpamResourceDiscoveryRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        ipamId,
        ipamResourceDiscoveryId,
        tagSpecifications,
        clientToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('AssociateIpamResourceDiscoveryRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'ipamId',
            ipamId,
          )
          ..add(
            'ipamResourceDiscoveryId',
            ipamResourceDiscoveryId,
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

class AssociateIpamResourceDiscoveryRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<AssociateIpamResourceDiscoveryRequest> {
  const AssociateIpamResourceDiscoveryRequestEc2QuerySerializer()
      : super('AssociateIpamResourceDiscoveryRequest');

  @override
  Iterable<Type> get types => const [
        AssociateIpamResourceDiscoveryRequest,
        _$AssociateIpamResourceDiscoveryRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AssociateIpamResourceDiscoveryRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssociateIpamResourceDiscoveryRequestBuilder();
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
        case 'IpamResourceDiscoveryId':
          result.ipamResourceDiscoveryId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    AssociateIpamResourceDiscoveryRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AssociateIpamResourceDiscoveryRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AssociateIpamResourceDiscoveryRequest(
      :dryRun,
      :ipamId,
      :ipamResourceDiscoveryId,
      :tagSpecifications,
      :clientToken
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
    if (ipamResourceDiscoveryId != null) {
      result$
        ..add(const _i1.XmlElementName('IpamResourceDiscoveryId'))
        ..add(serializers.serialize(
          ipamResourceDiscoveryId,
          specifiedType: const FullType(String),
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
          specifiedType: const FullType.nullable(
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
