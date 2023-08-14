// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.carrier_gateway; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/carrier_gateway_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'carrier_gateway.g.dart';

/// Describes a carrier gateway.
abstract class CarrierGateway
    with _i1.AWSEquatable<CarrierGateway>
    implements Built<CarrierGateway, CarrierGatewayBuilder> {
  /// Describes a carrier gateway.
  factory CarrierGateway({
    String? carrierGatewayId,
    String? vpcId,
    CarrierGatewayState? state,
    String? ownerId,
    List<Tag>? tags,
  }) {
    return _$CarrierGateway._(
      carrierGatewayId: carrierGatewayId,
      vpcId: vpcId,
      state: state,
      ownerId: ownerId,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a carrier gateway.
  factory CarrierGateway.build([void Function(CarrierGatewayBuilder) updates]) =
      _$CarrierGateway;

  const CarrierGateway._();

  static const List<_i3.SmithySerializer<CarrierGateway>> serializers = [
    CarrierGatewayEc2QuerySerializer()
  ];

  /// The ID of the carrier gateway.
  String? get carrierGatewayId;

  /// The ID of the VPC associated with the carrier gateway.
  String? get vpcId;

  /// The state of the carrier gateway.
  CarrierGatewayState? get state;

  /// The Amazon Web Services account ID of the owner of the carrier gateway.
  String? get ownerId;

  /// The tags assigned to the carrier gateway.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        carrierGatewayId,
        vpcId,
        state,
        ownerId,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CarrierGateway')
      ..add(
        'carrierGatewayId',
        carrierGatewayId,
      )
      ..add(
        'vpcId',
        vpcId,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class CarrierGatewayEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CarrierGateway> {
  const CarrierGatewayEc2QuerySerializer() : super('CarrierGateway');

  @override
  Iterable<Type> get types => const [
        CarrierGateway,
        _$CarrierGateway,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CarrierGateway deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CarrierGatewayBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'carrierGatewayId':
          result.carrierGatewayId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'vpcId':
          result.vpcId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(CarrierGatewayState),
          ) as CarrierGatewayState);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
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
    CarrierGateway object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CarrierGatewayResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CarrierGateway(:carrierGatewayId, :vpcId, :state, :ownerId, :tags) =
        object;
    if (carrierGatewayId != null) {
      result$
        ..add(const _i3.XmlElementName('CarrierGatewayId'))
        ..add(serializers.serialize(
          carrierGatewayId,
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
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(CarrierGatewayState),
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
