// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.allowed_principal; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/principal_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'allowed_principal.g.dart';

/// Describes a principal.
abstract class AllowedPrincipal
    with _i1.AWSEquatable<AllowedPrincipal>
    implements Built<AllowedPrincipal, AllowedPrincipalBuilder> {
  /// Describes a principal.
  factory AllowedPrincipal({
    PrincipalType? principalType,
    String? principal,
    String? servicePermissionId,
    List<Tag>? tags,
    String? serviceId,
  }) {
    return _$AllowedPrincipal._(
      principalType: principalType,
      principal: principal,
      servicePermissionId: servicePermissionId,
      tags: tags == null ? null : _i2.BuiltList(tags),
      serviceId: serviceId,
    );
  }

  /// Describes a principal.
  factory AllowedPrincipal.build(
      [void Function(AllowedPrincipalBuilder) updates]) = _$AllowedPrincipal;

  const AllowedPrincipal._();

  static const List<_i3.SmithySerializer<AllowedPrincipal>> serializers = [
    AllowedPrincipalEc2QuerySerializer()
  ];

  /// The type of principal.
  PrincipalType? get principalType;

  /// The Amazon Resource Name (ARN) of the principal.
  String? get principal;

  /// The ID of the service permission.
  String? get servicePermissionId;

  /// The tags.
  _i2.BuiltList<Tag>? get tags;

  /// The ID of the service.
  String? get serviceId;
  @override
  List<Object?> get props => [
        principalType,
        principal,
        servicePermissionId,
        tags,
        serviceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AllowedPrincipal')
      ..add(
        'principalType',
        principalType,
      )
      ..add(
        'principal',
        principal,
      )
      ..add(
        'servicePermissionId',
        servicePermissionId,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'serviceId',
        serviceId,
      );
    return helper.toString();
  }
}

class AllowedPrincipalEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<AllowedPrincipal> {
  const AllowedPrincipalEc2QuerySerializer() : super('AllowedPrincipal');

  @override
  Iterable<Type> get types => const [
        AllowedPrincipal,
        _$AllowedPrincipal,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  AllowedPrincipal deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AllowedPrincipalBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'principalType':
          result.principalType = (serializers.deserialize(
            value,
            specifiedType: const FullType(PrincipalType),
          ) as PrincipalType);
        case 'principal':
          result.principal = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'servicePermissionId':
          result.servicePermissionId = (serializers.deserialize(
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
        case 'serviceId':
          result.serviceId = (serializers.deserialize(
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
    AllowedPrincipal object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AllowedPrincipalResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final AllowedPrincipal(
      :principalType,
      :principal,
      :servicePermissionId,
      :tags,
      :serviceId
    ) = object;
    if (principalType != null) {
      result$
        ..add(const _i3.XmlElementName('PrincipalType'))
        ..add(serializers.serialize(
          principalType,
          specifiedType: const FullType(PrincipalType),
        ));
    }
    if (principal != null) {
      result$
        ..add(const _i3.XmlElementName('Principal'))
        ..add(serializers.serialize(
          principal,
          specifiedType: const FullType(String),
        ));
    }
    if (servicePermissionId != null) {
      result$
        ..add(const _i3.XmlElementName('ServicePermissionId'))
        ..add(serializers.serialize(
          servicePermissionId,
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
    if (serviceId != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceId'))
        ..add(serializers.serialize(
          serviceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
