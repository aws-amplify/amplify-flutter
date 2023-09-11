// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_vpc_attachment_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/create_transit_gateway_vpc_attachment_request_options.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_transit_gateway_vpc_attachment_request.g.dart';

abstract class CreateTransitGatewayVpcAttachmentRequest
    with
        _i1.HttpInput<CreateTransitGatewayVpcAttachmentRequest>,
        _i2.AWSEquatable<CreateTransitGatewayVpcAttachmentRequest>
    implements
        Built<CreateTransitGatewayVpcAttachmentRequest,
            CreateTransitGatewayVpcAttachmentRequestBuilder> {
  factory CreateTransitGatewayVpcAttachmentRequest({
    String? transitGatewayId,
    String? vpcId,
    List<String>? subnetIds,
    CreateTransitGatewayVpcAttachmentRequestOptions? options,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateTransitGatewayVpcAttachmentRequest._(
      transitGatewayId: transitGatewayId,
      vpcId: vpcId,
      subnetIds: subnetIds == null ? null : _i3.BuiltList(subnetIds),
      options: options,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateTransitGatewayVpcAttachmentRequest.build(
      [void Function(CreateTransitGatewayVpcAttachmentRequestBuilder)
          updates]) = _$CreateTransitGatewayVpcAttachmentRequest;

  const CreateTransitGatewayVpcAttachmentRequest._();

  factory CreateTransitGatewayVpcAttachmentRequest.fromRequest(
    CreateTransitGatewayVpcAttachmentRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<CreateTransitGatewayVpcAttachmentRequest>>
      serializers = [
    CreateTransitGatewayVpcAttachmentRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateTransitGatewayVpcAttachmentRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the transit gateway.
  String? get transitGatewayId;

  /// The ID of the VPC.
  String? get vpcId;

  /// The IDs of one or more subnets. You can specify only one subnet per Availability Zone. You must specify at least one subnet, but we recommend that you specify two subnets for better availability. The transit gateway uses one IP address from each specified subnet.
  _i3.BuiltList<String>? get subnetIds;

  /// The VPC attachment options.
  CreateTransitGatewayVpcAttachmentRequestOptions? get options;

  /// The tags to apply to the VPC attachment.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateTransitGatewayVpcAttachmentRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayId,
        vpcId,
        subnetIds,
        options,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayVpcAttachmentRequest')
          ..add(
            'transitGatewayId',
            transitGatewayId,
          )
          ..add(
            'vpcId',
            vpcId,
          )
          ..add(
            'subnetIds',
            subnetIds,
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

class CreateTransitGatewayVpcAttachmentRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateTransitGatewayVpcAttachmentRequest> {
  const CreateTransitGatewayVpcAttachmentRequestEc2QuerySerializer()
      : super('CreateTransitGatewayVpcAttachmentRequest');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayVpcAttachmentRequest,
        _$CreateTransitGatewayVpcAttachmentRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayVpcAttachmentRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayVpcAttachmentRequestBuilder();
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
        case 'VpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SubnetIds':
          result.subnetIds.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'Options':
          result.options.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(CreateTransitGatewayVpcAttachmentRequestOptions),
          ) as CreateTransitGatewayVpcAttachmentRequestOptions));
        case 'TagSpecifications':
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
    CreateTransitGatewayVpcAttachmentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateTransitGatewayVpcAttachmentRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayVpcAttachmentRequest(
      :transitGatewayId,
      :vpcId,
      :subnetIds,
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
    if (vpcId != null) {
      result$
        ..add(const _i1.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (subnetIds != null) {
      result$
        ..add(const _i1.XmlElementName('SubnetIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          subnetIds,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (options != null) {
      result$
        ..add(const _i1.XmlElementName('Options'))
        ..add(serializers.serialize(
          options,
          specifiedType:
              const FullType(CreateTransitGatewayVpcAttachmentRequestOptions),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecifications'))
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
