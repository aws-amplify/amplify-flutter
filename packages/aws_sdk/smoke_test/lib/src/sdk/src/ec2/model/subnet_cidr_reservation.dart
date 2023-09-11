// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.subnet_cidr_reservation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/subnet_cidr_reservation_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'subnet_cidr_reservation.g.dart';

/// Describes a subnet CIDR reservation.
abstract class SubnetCidrReservation
    with _i1.AWSEquatable<SubnetCidrReservation>
    implements Built<SubnetCidrReservation, SubnetCidrReservationBuilder> {
  /// Describes a subnet CIDR reservation.
  factory SubnetCidrReservation({
    String? subnetCidrReservationId,
    String? subnetId,
    String? cidr,
    SubnetCidrReservationType? reservationType,
    String? ownerId,
    String? description,
    List<Tag>? tags,
  }) {
    return _$SubnetCidrReservation._(
      subnetCidrReservationId: subnetCidrReservationId,
      subnetId: subnetId,
      cidr: cidr,
      reservationType: reservationType,
      ownerId: ownerId,
      description: description,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Describes a subnet CIDR reservation.
  factory SubnetCidrReservation.build(
          [void Function(SubnetCidrReservationBuilder) updates]) =
      _$SubnetCidrReservation;

  const SubnetCidrReservation._();

  static const List<_i3.SmithySerializer<SubnetCidrReservation>> serializers = [
    SubnetCidrReservationEc2QuerySerializer()
  ];

  /// The ID of the subnet CIDR reservation.
  String? get subnetCidrReservationId;

  /// The ID of the subnet.
  String? get subnetId;

  /// The CIDR that has been reserved.
  String? get cidr;

  /// The type of reservation.
  SubnetCidrReservationType? get reservationType;

  /// The ID of the account that owns the subnet CIDR reservation.
  String? get ownerId;

  /// The description assigned to the subnet CIDR reservation.
  String? get description;

  /// The tags assigned to the subnet CIDR reservation.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        subnetCidrReservationId,
        subnetId,
        cidr,
        reservationType,
        ownerId,
        description,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SubnetCidrReservation')
      ..add(
        'subnetCidrReservationId',
        subnetCidrReservationId,
      )
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'cidr',
        cidr,
      )
      ..add(
        'reservationType',
        reservationType,
      )
      ..add(
        'ownerId',
        ownerId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class SubnetCidrReservationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SubnetCidrReservation> {
  const SubnetCidrReservationEc2QuerySerializer()
      : super('SubnetCidrReservation');

  @override
  Iterable<Type> get types => const [
        SubnetCidrReservation,
        _$SubnetCidrReservation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SubnetCidrReservation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubnetCidrReservationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'subnetCidrReservationId':
          result.subnetCidrReservationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'cidr':
          result.cidr = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'reservationType':
          result.reservationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(SubnetCidrReservationType),
          ) as SubnetCidrReservationType);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'description':
          result.description = (serializers.deserialize(
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
    SubnetCidrReservation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SubnetCidrReservationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SubnetCidrReservation(
      :subnetCidrReservationId,
      :subnetId,
      :cidr,
      :reservationType,
      :ownerId,
      :description,
      :tags
    ) = object;
    if (subnetCidrReservationId != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetCidrReservationId'))
        ..add(serializers.serialize(
          subnetCidrReservationId,
          specifiedType: const FullType(String),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i3.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (cidr != null) {
      result$
        ..add(const _i3.XmlElementName('Cidr'))
        ..add(serializers.serialize(
          cidr,
          specifiedType: const FullType(String),
        ));
    }
    if (reservationType != null) {
      result$
        ..add(const _i3.XmlElementName('ReservationType'))
        ..add(serializers.serialize(
          reservationType,
          specifiedType: const FullType(SubnetCidrReservationType),
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
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
