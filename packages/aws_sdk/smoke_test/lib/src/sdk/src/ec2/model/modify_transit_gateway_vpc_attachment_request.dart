// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_transit_gateway_vpc_attachment_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/modify_transit_gateway_vpc_attachment_request_options.dart';

part 'modify_transit_gateway_vpc_attachment_request.g.dart';

abstract class ModifyTransitGatewayVpcAttachmentRequest
    with
        _i1.HttpInput<ModifyTransitGatewayVpcAttachmentRequest>,
        _i2.AWSEquatable<ModifyTransitGatewayVpcAttachmentRequest>
    implements
        Built<ModifyTransitGatewayVpcAttachmentRequest,
            ModifyTransitGatewayVpcAttachmentRequestBuilder> {
  factory ModifyTransitGatewayVpcAttachmentRequest({
    String? transitGatewayAttachmentId,
    List<String>? addSubnetIds,
    List<String>? removeSubnetIds,
    ModifyTransitGatewayVpcAttachmentRequestOptions? options,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$ModifyTransitGatewayVpcAttachmentRequest._(
      transitGatewayAttachmentId: transitGatewayAttachmentId,
      addSubnetIds: addSubnetIds == null ? null : _i3.BuiltList(addSubnetIds),
      removeSubnetIds:
          removeSubnetIds == null ? null : _i3.BuiltList(removeSubnetIds),
      options: options,
      dryRun: dryRun,
    );
  }

  factory ModifyTransitGatewayVpcAttachmentRequest.build(
      [void Function(ModifyTransitGatewayVpcAttachmentRequestBuilder)
          updates]) = _$ModifyTransitGatewayVpcAttachmentRequest;

  const ModifyTransitGatewayVpcAttachmentRequest._();

  factory ModifyTransitGatewayVpcAttachmentRequest.fromRequest(
    ModifyTransitGatewayVpcAttachmentRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<ModifyTransitGatewayVpcAttachmentRequest>>
      serializers = [
    ModifyTransitGatewayVpcAttachmentRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyTransitGatewayVpcAttachmentRequestBuilder b) {
    b.dryRun = false;
  }

  /// The ID of the attachment.
  String? get transitGatewayAttachmentId;

  /// The IDs of one or more subnets to add. You can specify at most one subnet per Availability Zone.
  _i3.BuiltList<String>? get addSubnetIds;

  /// The IDs of one or more subnets to remove.
  _i3.BuiltList<String>? get removeSubnetIds;

  /// The new VPC attachment options.
  ModifyTransitGatewayVpcAttachmentRequestOptions? get options;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  ModifyTransitGatewayVpcAttachmentRequest getPayload() => this;
  @override
  List<Object?> get props => [
        transitGatewayAttachmentId,
        addSubnetIds,
        removeSubnetIds,
        options,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyTransitGatewayVpcAttachmentRequest')
          ..add(
            'transitGatewayAttachmentId',
            transitGatewayAttachmentId,
          )
          ..add(
            'addSubnetIds',
            addSubnetIds,
          )
          ..add(
            'removeSubnetIds',
            removeSubnetIds,
          )
          ..add(
            'options',
            options,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class ModifyTransitGatewayVpcAttachmentRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyTransitGatewayVpcAttachmentRequest> {
  const ModifyTransitGatewayVpcAttachmentRequestEc2QuerySerializer()
      : super('ModifyTransitGatewayVpcAttachmentRequest');

  @override
  Iterable<Type> get types => const [
        ModifyTransitGatewayVpcAttachmentRequest,
        _$ModifyTransitGatewayVpcAttachmentRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTransitGatewayVpcAttachmentRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTransitGatewayVpcAttachmentRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'TransitGatewayAttachmentId':
          result.transitGatewayAttachmentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AddSubnetIds':
          result.addSubnetIds.replace((const _i1.XmlBuiltListSerializer(
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
        case 'RemoveSubnetIds':
          result.removeSubnetIds.replace((const _i1.XmlBuiltListSerializer(
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
                const FullType(ModifyTransitGatewayVpcAttachmentRequestOptions),
          ) as ModifyTransitGatewayVpcAttachmentRequestOptions));
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
    ModifyTransitGatewayVpcAttachmentRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyTransitGatewayVpcAttachmentRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyTransitGatewayVpcAttachmentRequest(
      :transitGatewayAttachmentId,
      :addSubnetIds,
      :removeSubnetIds,
      :options,
      :dryRun
    ) = object;
    if (transitGatewayAttachmentId != null) {
      result$
        ..add(const _i1.XmlElementName('TransitGatewayAttachmentId'))
        ..add(serializers.serialize(
          transitGatewayAttachmentId,
          specifiedType: const FullType(String),
        ));
    }
    if (addSubnetIds != null) {
      result$
        ..add(const _i1.XmlElementName('AddSubnetIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          addSubnetIds,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (removeSubnetIds != null) {
      result$
        ..add(const _i1.XmlElementName('RemoveSubnetIds'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          removeSubnetIds,
          specifiedType: const FullType.nullable(
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
              const FullType(ModifyTransitGatewayVpcAttachmentRequestOptions),
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
