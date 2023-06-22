// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_storage_s3_dart.s3.model.owner; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'owner.g.dart';

/// Container for the owner's display name and ID.
abstract class Owner
    with _i1.AWSEquatable<Owner>
    implements Built<Owner, OwnerBuilder> {
  /// Container for the owner's display name and ID.
  factory Owner({
    String? displayName,
    String? id,
  }) {
    return _$Owner._(
      displayName: displayName,
      id: id,
    );
  }

  /// Container for the owner's display name and ID.
  factory Owner.build([void Function(OwnerBuilder) updates]) = _$Owner;

  const Owner._();

  static const List<_i2.SmithySerializer<Owner>> serializers = [
    OwnerRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OwnerBuilder b) {}

  /// Container for the display name of the owner. This value is only supported in the following Amazon Web Services Regions:
  ///
  /// *   US East (N. Virginia)
  ///
  /// *   US West (N. California)
  ///
  /// *   US West (Oregon)
  ///
  /// *   Asia Pacific (Singapore)
  ///
  /// *   Asia Pacific (Sydney)
  ///
  /// *   Asia Pacific (Tokyo)
  ///
  /// *   Europe (Ireland)
  ///
  /// *   South America (São Paulo)
  String? get displayName;

  /// Container for the ID of the owner.
  String? get id;
  @override
  List<Object?> get props => [
        displayName,
        id,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Owner')
      ..add(
        'displayName',
        displayName,
      )
      ..add(
        'id',
        id,
      );
    return helper.toString();
  }
}

class OwnerRestXmlSerializer extends _i2.StructuredSmithySerializer<Owner> {
  const OwnerRestXmlSerializer() : super('Owner');

  @override
  Iterable<Type> get types => const [
        Owner,
        _$Owner,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  Owner deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OwnerBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'DisplayName':
          result.displayName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ID':
          result.id = (serializers.deserialize(
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
    Owner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'Owner',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final Owner(:displayName, :id) = object;
    if (displayName != null) {
      result$
        ..add(const _i2.XmlElementName('DisplayName'))
        ..add(serializers.serialize(
          displayName,
          specifiedType: const FullType(String),
        ));
    }
    if (id != null) {
      result$
        ..add(const _i2.XmlElementName('ID'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
