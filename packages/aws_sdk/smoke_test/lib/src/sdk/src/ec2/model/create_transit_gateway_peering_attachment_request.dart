// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_peering_attachment_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_peering_attachment_request_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_transit_gateway_peering_attachment_request.g.dart';

abstract class CreateTransitGatewayPeeringAttachmentRequest
    with
        _i1.HttpInput<CreateTransitGatewayPeeringAttachmentRequest>,
        _i2.AWSEquatable<CreateTransitGatewayPeeringAttachmentRequest>
    implements
        Built<CreateTransitGatewayPeeringAttachmentRequest,
            CreateTransitGatewayPeeringAttachmentRequestBuilder> {
  factory CreateTransitGatewayPeeringAttachmentRequest({
    String? transitGatewayId,
    String? peerTransitGatewayId,
    String? peerAccountId,
    String? peerRegion,
    CreateTransitGatewayPeeringAttachmentRequestOptions? options,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateTransitGatewayPeeringAttachmentRequest._(
      transitGatewayId: transitGatewayId,
      peerTransitGatewayId: peerTransitGatewayId,
      peerAccountId: peerAccountId,
      peerRegion: peerRegion,
      options: options,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateTransitGatewayPeeringAttachmentRequest.build(
      [void Function(CreateTransitGatewayPeeringAttachmentRequestBuilder)
          updates]) = _$CreateTransitGatewayPeeringAttachmentRequest;

  const CreateTransitGatewayPeeringAttachmentRequest._();

  factory CreateTransitGatewayPeeringAttachmentRequest.fromRequest(
    CreateTransitGatewayPeeringAttachmentRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<CreateTransitGatewayPeeringAttachmentRequest>>
      serializers = [
    CreateTransitGatewayPeeringAttachmentRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayPeeringAttachmentRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The ID of the peer transit gateway with which to create the peering attachment.
  String? get peerTransitGatewayId;

  /// The ID of the Amazon Web Services account that owns the peer transit gateway.
  String? get peerAccountId;

  /// The Region where the peer transit gateway is located.
  String? get peerRegion;

  /// Requests a transit gateway peering attachment.
  CreateTransitGatewayPeeringAttachmentRequestOptions? get options;

  /// The tags to apply to the transit gateway peering attachment.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateTransitGatewayPeeringAttachmentRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayId,
        peerTransitGatewayId,
        peerAccountId,
        peerRegion,
        options,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateTransitGatewayPeeringAttachmentRequest')
      ..add(
        'transitGatewayId',
        transitGatewayId,
      )
      ..add(
        'peerTransitGatewayId',
        peerTransitGatewayId,
      )
      ..add(
        'peerAccountId',
        peerAccountId,
      )
      ..add(
        'peerRegion',
        peerRegion,
      )
      ..add(
        'options',
        options,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      )
      ..add(
        'dryRun',
        dryRun,
      );
    return helper.toString();
  }
}

class CreateTransitGatewayPeeringAttachmentRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateTransitGatewayPeeringAttachmentRequest> {
  const CreateTransitGatewayPeeringAttachmentRequestEc2QuerySerializer()
      : super('CreateTransitGatewayPeeringAttachmentRequest');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayPeeringAttachmentRequest,
        _$CreateTransitGatewayPeeringAttachmentRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayPeeringAttachmentRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayPeeringAttachmentRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayId':
          result.transitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PeerTransitGatewayId':
          result.peerTransitGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PeerAccountId':
          result.peerAccountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PeerRegion':
          result.peerRegion = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
                CreateTransitGatewayPeeringAttachmentRequestOptions),
          ) as CreateTransitGatewayPeeringAttachmentRequestOptions));
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateTransitGatewayPeeringAttachmentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateTransitGatewayPeeringAttachmentRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayPeeringAttachmentRequest(
      :transitGatewayId,
      :peerTransitGatewayId,
      :peerAccountId,
      :peerRegion,
      :options,
      :tagSpecifications,
      :dryRun
    ) = object;
    if (transitGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayId'))
        ..add(serializers.serialize(
          transitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (peerTransitGatewayId != null) {
      result$
        ..add(const _i1.XmlElementName('PeerTransitGatewayId'))
        ..add(serializers.serialize(
          peerTransitGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (peerAccountId != null) {
      result$
        ..add(const _i1.XmlElementName('PeerAccountId'))
        ..add(serializers.serialize(
          peerAccountId,
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
    if (options != null) {
      result$
        ..add(const _i1.XmlElementName('Options'))
        ..add(serializers.serialize(
          options,
          specifiedType: const FullType(
              CreateTransitGatewayPeeringAttachmentRequestOptions),
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
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
