// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_xml_v1.s3.model.owner; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'owner.g.dart';

abstract class Owner
    with _i1.AWSEquatable<Owner>
    implements Built<Owner, OwnerBuilder> {
  factory Owner({
    String? displayName,
    String? id,
  }) {
    return _$Owner._(
      displayName: displayName,
      id: id,
    );
  }

  factory Owner.build([void Function(OwnerBuilder) updates]) = _$Owner;

  const Owner._();

  static const List<_i2.SmithySerializer> serializers = [
    OwnerRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OwnerBuilder b) {}
  String? get displayName;
  String? get id;
  @override
  List<Object?> get props => [
        displayName,
        id,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Owner');
    helper.add(
      'displayName',
      displayName,
    );
    helper.add(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'DisplayName':
          if (value != null) {
            result.displayName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ID':
          if (value != null) {
            result.id = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as Owner);
    final result = <Object?>[
      const _i2.XmlElementName(
        'Owner',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.displayName != null) {
      result
        ..add(const _i2.XmlElementName('DisplayName'))
        ..add(serializers.serialize(
          payload.displayName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.id != null) {
      result
        ..add(const _i2.XmlElementName('ID'))
        ..add(serializers.serialize(
          payload.id!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
