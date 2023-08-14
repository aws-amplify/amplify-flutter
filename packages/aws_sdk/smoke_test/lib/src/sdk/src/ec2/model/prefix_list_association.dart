// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.prefix_list_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'prefix_list_association.g.dart';

/// Describes the resource with which a prefix list is associated.
abstract class PrefixListAssociation
    with _i1.AWSEquatable<PrefixListAssociation>
    implements Built<PrefixListAssociation, PrefixListAssociationBuilder> {
  /// Describes the resource with which a prefix list is associated.
  factory PrefixListAssociation({
    String? resourceId,
    String? resourceOwner,
  }) {
    return _$PrefixListAssociation._(
      resourceId: resourceId,
      resourceOwner: resourceOwner,
    );
  }

  /// Describes the resource with which a prefix list is associated.
  factory PrefixListAssociation.build(
          [void Function(PrefixListAssociationBuilder) updates]) =
      _$PrefixListAssociation;

  const PrefixListAssociation._();

  static const List<_i2.SmithySerializer<PrefixListAssociation>> serializers = [
    PrefixListAssociationEc2QuerySerializer()
  ];

  /// The ID of the resource.
  String? get resourceId;

  /// The owner of the resource.
  String? get resourceOwner;
  @override
  List<Object?> get props => [
        resourceId,
        resourceOwner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('PrefixListAssociation')
      ..add(
        'resourceId',
        resourceId,
      )
      ..add(
        'resourceOwner',
        resourceOwner,
      );
    return helper.toString();
  }
}

class PrefixListAssociationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<PrefixListAssociation> {
  const PrefixListAssociationEc2QuerySerializer()
      : super('PrefixListAssociation');

  @override
  Iterable<Type> get types => const [
        PrefixListAssociation,
        _$PrefixListAssociation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  PrefixListAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrefixListAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'resourceId':
          result.resourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'resourceOwner':
          result.resourceOwner = (serializers.deserialize(
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
    PrefixListAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'PrefixListAssociationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final PrefixListAssociation(:resourceId, :resourceOwner) = object;
    if (resourceId != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceId'))
        ..add(serializers.serialize(
          resourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (resourceOwner != null) {
      result$
        ..add(const _i2.XmlElementName('ResourceOwner'))
        ..add(serializers.serialize(
          resourceOwner,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
