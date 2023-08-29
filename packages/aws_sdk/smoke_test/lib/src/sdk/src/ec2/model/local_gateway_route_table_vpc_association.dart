// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.local_gateway_route_table_vpc_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'local_gateway_route_table_vpc_association.g.dart';

/// Describes an association between a local gateway route table and a VPC.
abstract class LocalGatewayRouteTableVpcAssociation
    with
        _i1.AWSEquatable<LocalGatewayRouteTableVpcAssociation>
    implements
        Built<LocalGatewayRouteTableVpcAssociation,
            LocalGatewayRouteTableVpcAssociationBuilder> {
  /// Describes an association between a local gateway route table and a VPC.
  factory LocalGatewayRouteTableVpcAssociation({
    String? localGatewayRouteTableVpcAssociationId,
    String? localGatewayRouteTableId,
    String? localGatewayRouteTableArn,
    String? localGatewayId,
    String? vpcId,
    String? ownerId,
    String? state,
    List<Tag>? tags,
  }) {
    return _$LocalGatewayRouteTableVpcAssociation._(
      localGatewayRouteTableVpcAssociationId:
          localGatewayRouteTableVpcAssociationId,
      localGatewayRouteTableId: localGatewayRouteTableId,
      localGatewayRouteTableArn: localGatewayRouteTableArn,
      localGatewayId: localGatewayId,
      vpcId: vpcId,
      ownerId: ownerId,
      state: state,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes an association between a local gateway route table and a VPC.
  factory LocalGatewayRouteTableVpcAssociation.build(
      [void Function(LocalGatewayRouteTableVpcAssociationBuilder)
          updates]) = _$LocalGatewayRouteTableVpcAssociation;

  const LocalGatewayRouteTableVpcAssociation._();

  static const List<_i3.SmithySerializer<LocalGatewayRouteTableVpcAssociation>>
      serializers = [LocalGatewayRouteTableVpcAssociationEc2QuerySerializer()];

  /// The ID of the association.
  String? get localGatewayRouteTableVpcAssociationId;

  /// The ID of the local gateway route table.
  String? get localGatewayRouteTableId;

  /// The Amazon Resource Name (ARN) of the local gateway route table for the association.
  String? get localGatewayRouteTableArn;

  /// The ID of the local gateway.
  String? get localGatewayId;

  /// The ID of the VPC.
  String? get vpcId;

  /// The ID of the Amazon Web Services account that owns the local gateway route table for the association.
  String? get ownerId;

  /// The state of the association.
  String? get state;

  /// The tags assigned to the association.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        localGatewayRouteTableVpcAssociationId,
        localGatewayRouteTableId,
        localGatewayRouteTableArn,
        localGatewayId,
        vpcId,
        ownerId,
        state,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('LocalGatewayRouteTableVpcAssociation')
          ..add(
            'localGatewayRouteTableVpcAssociationId',
            localGatewayRouteTableVpcAssociationId,
          )
          ..add(
            'localGatewayRouteTableId',
            localGatewayRouteTableId,
          )
          ..add(
            'localGatewayRouteTableArn',
            localGatewayRouteTableArn,
          )
          ..add(
            'localGatewayId',
            localGatewayId,
          )
          ..add(
            'vpcId',
            vpcId,
          )
          ..add(
            'ownerId',
            ownerId,
          )
          ..add(
            'state',
            state,
          )
          ..add(
            'tags',
            tags,
          );
    return helper.toString();
  }
}

class LocalGatewayRouteTableVpcAssociationEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<LocalGatewayRouteTableVpcAssociation> {
  const LocalGatewayRouteTableVpcAssociationEc2QuerySerializer()
      : super('LocalGatewayRouteTableVpcAssociation');

  @override
  Iterable<Type> get types => const [
        LocalGatewayRouteTableVpcAssociation,
        _$LocalGatewayRouteTableVpcAssociation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LocalGatewayRouteTableVpcAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LocalGatewayRouteTableVpcAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'localGatewayRouteTableVpcAssociationId':
          result.localGatewayRouteTableVpcAssociationId =
              (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localGatewayRouteTableId':
          result.localGatewayRouteTableId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localGatewayRouteTableArn':
          result.localGatewayRouteTableArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'localGatewayId':
          result.localGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LocalGatewayRouteTableVpcAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'LocalGatewayRouteTableVpcAssociationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LocalGatewayRouteTableVpcAssociation(
      :localGatewayRouteTableVpcAssociationId,
      :localGatewayRouteTableId,
      :localGatewayRouteTableArn,
      :localGatewayId,
      :vpcId,
      :ownerId,
      :state,
      :tags
    ) = object;
    if (localGatewayRouteTableVpcAssociationId != null) {
      result$
        ..add(
            const _i3.XmlElementName('LocalGatewayRouteTableVpcAssociationId'))
        ..add(serializers.serialize(
          localGatewayRouteTableVpcAssociationId,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayRouteTableId != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayRouteTableId'))
        ..add(serializers.serialize(
          localGatewayRouteTableId,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayRouteTableArn != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayRouteTableArn'))
        ..add(serializers.serialize(
          localGatewayRouteTableArn,
          specifiedType: const FullType(String),
        ));
    }
    if (localGatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('LocalGatewayId'))
        ..add(serializers.serialize(
          localGatewayId,
          specifiedType: const FullType(String),
        ));
    }
    if (vpcId != null) {
      result$
        ..add(const _i3.XmlElementName('VpcId'))
        ..add(serializers.serialize(
          vpcId,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i3.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(String),
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
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
