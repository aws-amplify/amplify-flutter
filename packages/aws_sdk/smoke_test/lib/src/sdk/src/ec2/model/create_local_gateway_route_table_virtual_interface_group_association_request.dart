// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_local_gateway_route_table_virtual_interface_group_association_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_local_gateway_route_table_virtual_interface_group_association_request.g.dart';

abstract class CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
    with
        _i1.HttpInput<
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest>,
        _i2.AWSEquatable<
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest>
    implements
        Built<
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest,
            CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder> {
  factory CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest({
    String? localGatewayRouteTableId,
    String? localGatewayVirtualInterfaceGroupId,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    dryRun ??= false;
    return _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
        ._(
      localGatewayRouteTableId: localGatewayRouteTableId,
      localGatewayVirtualInterfaceGroupId: localGatewayVirtualInterfaceGroupId,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest.build(
          [void Function(
                  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder)
              updates]) =
      _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest;

  const CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest._();

  factory CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest.fromRequest(
    CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<
              CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest>>
      serializers = [
    CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder
          b) {
    b.dryRun = false;
  }

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;

  /// The ID of the local gateway route table virtual interface group association.
  String? get localGatewayVirtualInterfaceGroupId;

  /// The tags assigned to the local gateway route table virtual interface group association.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
      getPayload() => this;
  @override
  List<Object?> get props => [
        localGatewayRouteTableId,
        localGatewayVirtualInterfaceGroupId,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest')
      ..add(
        'localGatewayRouteTableId',
        localGatewayRouteTableId,
      )
      ..add(
        'localGatewayVirtualInterfaceGroupId',
        localGatewayVirtualInterfaceGroupId,
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

class CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest> {
  const CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestEc2QuerySerializer()
      : super(
            'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest');

  @override
  Iterable<Type> get types => const [
        CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest,
        _$CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
      deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'LocalGatewayRouteTableId':
          result.localGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LocalGatewayVirtualInterfaceGroupId':
          result.localGatewayVirtualInterfaceGroupId = (serializers.deserialize(
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
    CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest
        object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateLocalGatewayRouteTableVirtualInterfaceGroupAssociationRequest(
      :localGatewayRouteTableId,
      :localGatewayVirtualInterfaceGroupId,
      :tagSpecifications,
      :dryRun
    ) = object;
    if (localGatewayRouteTableId != null) {
      result$
        ..add(const _i1.XmlElementName('LocalGatewayRouteTableId'))
        ..add(serializers.serialize(
          localGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayVirtualInterfaceGroupId != null) {
      result$
        ..add(const _i1.XmlElementName('LocalGatewayVirtualInterfaceGroupId'))
        ..add(serializers.serialize(
          localGatewayVirtualInterfaceGroupId,
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
