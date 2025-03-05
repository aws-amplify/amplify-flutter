// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v2.s3.model.object; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v2/src/s3/model/object_storage_class.dart';
import 'package:rest_xml_v2/src/s3/model/owner.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'object.g.dart';

abstract class S3Object
    with _i1.AWSEquatable<S3Object>
    implements Built<S3Object, S3ObjectBuilder> {
  factory S3Object({
    String? key,
    DateTime? lastModified,
    String? eTag,
    int? size,
    ObjectStorageClass? storageClass,
    Owner? owner,
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

  static const List<_i2.SmithySerializer<S3Object>> serializers = [
    ObjectRestXmlSerializer()
  ];

  String? get key;
  DateTime? get lastModified;
  String? get eTag;
  int? get size;
  ObjectStorageClass? get storageClass;
  Owner? get owner;
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

class ObjectRestXmlSerializer extends _i2.StructuredSmithySerializer<S3Object> {
  const ObjectRestXmlSerializer() : super('Object');

  @override
  Iterable<Type> get types => const [
        S3Object,
        _$S3Object,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
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
            specifiedType: const FullType(Owner),
          ) as Owner));
        case 'Size':
          result.size = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'StorageClass':
          result.storageClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectStorageClass),
          ) as ObjectStorageClass);
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
      const _i2.XmlElementName(
        'Object',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final S3Object(:eTag, :key, :lastModified, :owner, :size, :storageClass) =
        object;
    if (eTag != null) {
      result$
        ..add(const _i2.XmlElementName('ETag'))
        ..add(serializers.serialize(
          eTag,
          specifiedType: const FullType(String),
        ));
    }
    if (key != null) {
      result$
        ..add(const _i2.XmlElementName('Key'))
        ..add(serializers.serialize(
          key,
          specifiedType: const FullType(String),
        ));
    }
    if (lastModified != null) {
      result$
        ..add(const _i2.XmlElementName('LastModified'))
        ..add(serializers.serialize(
          lastModified,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (owner != null) {
      result$
        ..add(const _i2.XmlElementName('Owner'))
        ..add(serializers.serialize(
          owner,
          specifiedType: const FullType(Owner),
        ));
    }
    if (size != null) {
      result$
        ..add(const _i2.XmlElementName('Size'))
        ..add(serializers.serialize(
          size,
          specifiedType: const FullType(int),
        ));
    }
    if (storageClass != null) {
      result$
        ..add(const _i2.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          storageClass,
          specifiedType: const FullType(ObjectStorageClass),
        ));
    }
    return result$;
  }
}
