// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.trunk_interface_association; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/interface_protocol_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'trunk_interface_association.g.dart';

/// Currently available in **limited preview only**. If you are interested in using this feature, contact your account manager.
///
/// Information about an association between a branch network interface with a trunk network interface.
abstract class TrunkInterfaceAssociation
    with _i1.AWSEquatable<TrunkInterfaceAssociation>
    implements
        Built<TrunkInterfaceAssociation, TrunkInterfaceAssociationBuilder> {
  /// Currently available in **limited preview only**. If you are interested in using this feature, contact your account manager.
  ///
  /// Information about an association between a branch network interface with a trunk network interface.
  factory TrunkInterfaceAssociation({
    String? associationId,
    String? branchInterfaceId,
    String? trunkInterfaceId,
    InterfaceProtocolType? interfaceProtocol,
    int? vlanId,
    int? greKey,
    List<Tag>? tags,
  }) {
    vlanId ??= 0;
    greKey ??= 0;
    return _$TrunkInterfaceAssociation._(
      associationId: associationId,
      branchInterfaceId: branchInterfaceId,
      trunkInterfaceId: trunkInterfaceId,
      interfaceProtocol: interfaceProtocol,
      vlanId: vlanId,
      greKey: greKey,
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Currently available in **limited preview only**. If you are interested in using this feature, contact your account manager.
  ///
  /// Information about an association between a branch network interface with a trunk network interface.
  factory TrunkInterfaceAssociation.build(
          [void Function(TrunkInterfaceAssociationBuilder) updates]) =
      _$TrunkInterfaceAssociation;

  const TrunkInterfaceAssociation._();

  static const List<_i3.SmithySerializer<TrunkInterfaceAssociation>>
      serializers = [TrunkInterfaceAssociationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TrunkInterfaceAssociationBuilder b) {
    b
      ..vlanId = 0
      ..greKey = 0;
  }

  /// The ID of the association.
  String? get associationId;

  /// The ID of the branch network interface.
  String? get branchInterfaceId;

  /// The ID of the trunk network interface.
  String? get trunkInterfaceId;

  /// The interface protocol. Valid values are `VLAN` and `GRE`.
  InterfaceProtocolType? get interfaceProtocol;

  /// The ID of the VLAN when you use the VLAN protocol.
  int get vlanId;

  /// The application key when you use the GRE protocol.
  int get greKey;

  /// The tags for the trunk interface association.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        associationId,
        branchInterfaceId,
        trunkInterfaceId,
        interfaceProtocol,
        vlanId,
        greKey,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TrunkInterfaceAssociation')
      ..add(
        'associationId',
        associationId,
      )
      ..add(
        'branchInterfaceId',
        branchInterfaceId,
      )
      ..add(
        'trunkInterfaceId',
        trunkInterfaceId,
      )
      ..add(
        'interfaceProtocol',
        interfaceProtocol,
      )
      ..add(
        'vlanId',
        vlanId,
      )
      ..add(
        'greKey',
        greKey,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class TrunkInterfaceAssociationEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<TrunkInterfaceAssociation> {
  const TrunkInterfaceAssociationEc2QuerySerializer()
      : super('TrunkInterfaceAssociation');

  @override
  Iterable<Type> get types => const [
        TrunkInterfaceAssociation,
        _$TrunkInterfaceAssociation,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  TrunkInterfaceAssociation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrunkInterfaceAssociationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'associationId':
          result.associationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'branchInterfaceId':
          result.branchInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'trunkInterfaceId':
          result.trunkInterfaceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'interfaceProtocol':
          result.interfaceProtocol = (serializers.deserialize(
            value,
            specifiedType: const FullType(InterfaceProtocolType),
          ) as InterfaceProtocolType);
        case 'vlanId':
          result.vlanId = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'greKey':
          result.greKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    TrunkInterfaceAssociation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'TrunkInterfaceAssociationResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final TrunkInterfaceAssociation(
      :associationId,
      :branchInterfaceId,
      :trunkInterfaceId,
      :interfaceProtocol,
      :vlanId,
      :greKey,
      :tags
    ) = object;
    if (associationId != null) {
      result$
        ..add(const _i3.XmlElementName('AssociationId'))
        ..add(serializers.serialize(
          associationId,
          specifiedType: const FullType(String),
        ));
    }
    if (branchInterfaceId != null) {
      result$
        ..add(const _i3.XmlElementName('BranchInterfaceId'))
        ..add(serializers.serialize(
          branchInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (trunkInterfaceId != null) {
      result$
        ..add(const _i3.XmlElementName('TrunkInterfaceId'))
        ..add(serializers.serialize(
          trunkInterfaceId,
          specifiedType: const FullType(String),
        ));
    }
    if (interfaceProtocol != null) {
      result$
        ..add(const _i3.XmlElementName('InterfaceProtocol'))
        ..add(serializers.serialize(
          interfaceProtocol,
          specifiedType: const FullType.nullable(InterfaceProtocolType),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('VlanId'))
      ..add(serializers.serialize(
        vlanId,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('GreKey'))
      ..add(serializers.serialize(
        greKey,
        specifiedType: const FullType(int),
      ));
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
