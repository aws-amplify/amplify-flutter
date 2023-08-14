// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_vpc_peering_connection_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_vpc_peering_connection_request.g.dart';

abstract class CreateVpcPeeringConnectionRequest
    with
        _i1.HttpInput<CreateVpcPeeringConnectionRequest>,
        _i2.AWSEquatable<CreateVpcPeeringConnectionRequest>
    implements
        Built<CreateVpcPeeringConnectionRequest,
            CreateVpcPeeringConnectionRequestBuilder> {
  factory CreateVpcPeeringConnectionRequest({
    bool? dryRun,
    String? peerOwnerId,
    String? peerVpcId,
    String? vpcId,
    String? peerRegion,
    List<TagSpecification>? tagSpecifications,
  }) {
    dryRun ??= false;
    return _$CreateVpcPeeringConnectionRequest._(
      dryRun: dryRun,
      peerOwnerId: peerOwnerId,
      peerVpcId: peerVpcId,
      vpcId: vpcId,
      peerRegion: peerRegion,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
    );
  }

  factory CreateVpcPeeringConnectionRequest.build(
          [void Function(CreateVpcPeeringConnectionRequestBuilder) updates]) =
      _$CreateVpcPeeringConnectionRequest;

  const CreateVpcPeeringConnectionRequest._();

  factory CreateVpcPeeringConnectionRequest.fromRequest(
    CreateVpcPeeringConnectionRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateVpcPeeringConnectionRequest>>
      serializers = [CreateVpcPeeringConnectionRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateVpcPeeringConnectionRequestBuilder b) {
    b.dryRun = false;
  }

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// The Amazon Web Services account ID of the owner of the accepter VPC.
  ///
  /// Default: Your Amazon Web Services account ID
  String? get peerOwnerId;

  /// The ID of the VPC with which you are creating the VPC peering connection. You must specify this parameter in the request.
  String? get peerVpcId;

  /// The ID of the requester VPC. You must specify this parameter in the request.
  String? get vpcId;

  /// The Region code for the accepter VPC, if the accepter VPC is located in a Region other than the Region in which you make the request.
  ///
  /// Default: The Region in which you make the request.
  String? get peerRegion;

  /// The tags to assign to the peering connection.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  CreateVpcPeeringConnectionRequest getPayload() => this;
  @override
  List<Object?> get props => [
        dryRun,
        peerOwnerId,
        peerVpcId,
        vpcId,
        peerRegion,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateVpcPeeringConnectionRequest')
          ..add(
            'dryRun',
            dryRun,
          )
          ..add(
            'peerOwnerId',
            peerOwnerId,
          )
          ..add(
            'peerVpcId',
            peerVpcId,
          )
          ..add(
            'vpcId',
            vpcId,
          )
          ..add(
            'peerRegion',
            peerRegion,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          );
    return helper.toString();
  }
}

class CreateVpcPeeringConnectionRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<CreateVpcPeeringConnectionRequest> {
  const CreateVpcPeeringConnectionRequestEc2QuerySerializer()
      : super('CreateVpcPeeringConnectionRequest');

  @override
  Iterable<Type> get types => const [
        CreateVpcPeeringConnectionRequest,
        _$CreateVpcPeeringConnectionRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateVpcPeeringConnectionRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateVpcPeeringConnectionRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'dryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'peerOwnerId':
          result.peerOwnerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'peerVpcId':
          result.peerVpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PeerRegion':
          result.peerRegion = (serializers.deserialize(
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateVpcPeeringConnectionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateVpcPeeringConnectionRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateVpcPeeringConnectionRequest(
      :dryRun,
      :peerOwnerId,
      :peerVpcId,
      :vpcId,
      :peerRegion,
      :tagSpecifications
    ) = object;
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (peerOwnerId != null) {
      result$
        ..add(const _i1.XmlElementName('PeerOwnerId'))
        ..add(serializers.serialize(
          peerOwnerId,
          specifiedType: const FullType(String),
        ));
    }
    if (peerVpcId != null) {
      result$
        ..add(const _i1.XmlElementName('PeerVpcId'))
        ..add(serializers.serialize(
          peerVpcId,
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
    if (peerRegion != null) {
      result$
        ..add(const _i1.XmlElementName('PeerRegion'))
        ..add(serializers.serialize(
          peerRegion,
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
    return result$;
  }
}
