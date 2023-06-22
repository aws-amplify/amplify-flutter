// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v1.s3.model.object; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/s3/model/object_storage_class.dart' as _i2;
import 'package:rest_xml_v1/src/s3/model/owner.dart' as _i3;
import 'package:smithy/smithy.dart' as _i4;

part 'object.g.dart';

abstract class S3Object
    with _i1.AWSEquatable<S3Object>
    implements Built<S3Object, S3ObjectBuilder> {
  factory S3Object({
    String? key,
    DateTime? lastModified,
    String? eTag,
    int? size,
    _i2.ObjectStorageClass? storageClass,
    _i3.Owner? owner,
  }) {
    return _$S3Object._(
      key: key,
      lastModified: lastModified,
      eTag: eTag,
      size: size,
      storageClass: storageClass,
      owner: owner,
    );
  }

  factory S3Object.build([void Function(S3ObjectBuilder) updates]) = _$S3Object;

  const S3Object._();

  static const List<_i4.SmithySerializer<S3Object>> serializers = [
    ObjectRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(S3ObjectBuilder b) {}
  String? get key;
  DateTime? get lastModified;
  String? get eTag;
  int? get size;
  _i2.ObjectStorageClass? get storageClass;
  _i3.Owner? get owner;
  @override
  List<Object?> get props => [
        key,
        lastModified,
        eTag,
        size,
        storageClass,
        owner,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('S3Object')
      ..add(
        'key',
        key,
      )
      ..add(
        'lastModified',
        lastModified,
      )
      ..add(
        'eTag',
        eTag,
      )
      ..add(
        'size',
        size,
      )
      ..add(
        'storageClass',
        storageClass,
      )
      ..add(
        'owner',
        owner,
      );
    return helper.toString();
  }
}

class ObjectRestXmlSerializer extends _i4.StructuredSmithySerializer<S3Object> {
  const ObjectRestXmlSerializer() : super('Object');

  @override
  Iterable<Type> get types => const [
        S3Object,
        _$S3Object,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  S3Object deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = S3ObjectBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ETag':
          result.eTag = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Key':
          result.key = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LastModified':
          result.lastModified = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'Owner':
          result.owner.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Owner),
          ) as _i3.Owner));
        case 'Size':
          result.size = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'StorageClass':
          result.storageClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ObjectStorageClass),
          ) as _i2.ObjectStorageClass);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    S3Object object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'Object',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final S3Object(:eTag, :key, :lastModified, :owner, :size, :storageClass) =
        object;
    if (eTag != null) {
      result$
        ..add(const _i4.XmlElementName('ETag'))
        ..add(serializers.serialize(
          eTag,
          specifiedType: const FullType(String),
        ));
    }
    if (key != null) {
      result$
        ..add(const _i4.XmlElementName('Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(String),
        ));
    }
    if (lastModified != null) {
      result$
        ..add(const _i4.XmlElementName('LastModified'))
        ..add(serializers.serialize(
          lastModified,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (owner != null) {
      result$
        ..add(const _i4.XmlElementName('Owner'))
        ..add(serializers.serialize(
          owner,
          specifiedType: const FullType(_i3.Owner),
        ));
    }
    if (size != null) {
      result$
        ..add(const _i4.XmlElementName('Size'))
        ..add(serializers.serialize(
          size,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (storageClass != null) {
      result$
        ..add(const _i4.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          storageClass,
          specifiedType: const FullType.nullable(_i2.ObjectStorageClass),
        ));
    }
    return result$;
  }
}
