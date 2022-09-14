// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_xml_v1.s3.model.object; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/s3/model/object_storage_class.dart' as _i3;
import 'package:rest_xml_v1/src/s3/model/owner.dart' as _i2;
import 'package:smithy/smithy.dart' as _i4;

part 'object.g.dart';

abstract class S3Object
    with _i1.AWSEquatable<S3Object>
    implements Built<S3Object, S3ObjectBuilder> {
  factory S3Object(
      {String? eTag,
      String? key,
      DateTime? lastModified,
      _i2.Owner? owner,
      int? size,
      _i3.ObjectStorageClass? storageClass}) {
    return _$S3Object._(
        eTag: eTag,
        key: key,
        lastModified: lastModified,
        owner: owner,
        size: size,
        storageClass: storageClass);
  }

  factory S3Object.build([void Function(S3ObjectBuilder) updates]) = _$S3Object;

  const S3Object._();

  static const List<_i4.SmithySerializer> serializers = [
    ObjectRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(S3ObjectBuilder b) {}
  String? get eTag;
  String? get key;
  DateTime? get lastModified;
  _i2.Owner? get owner;
  int? get size;
  _i3.ObjectStorageClass? get storageClass;
  @override
  List<Object?> get props =>
      [eTag, key, lastModified, owner, size, storageClass];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('S3Object');
    helper.add('eTag', eTag);
    helper.add('key', key);
    helper.add('lastModified', lastModified);
    helper.add('owner', owner);
    helper.add('size', size);
    helper.add('storageClass', storageClass);
    return helper.toString();
  }
}

class ObjectRestXmlSerializer extends _i4.StructuredSmithySerializer<S3Object> {
  const ObjectRestXmlSerializer() : super('Object');

  @override
  Iterable<Type> get types => const [S3Object, _$S3Object];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols =>
      const [_i4.ShapeId(namespace: 'aws.protocols', shape: 'restXml')];
  @override
  S3Object deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = S3ObjectBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ETag':
          if (value != null) {
            result.eTag = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'Key':
          if (value != null) {
            result.key = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'LastModified':
          if (value != null) {
            result.lastModified = (serializers.deserialize(value,
                specifiedType: const FullType(DateTime)) as DateTime);
          }
          break;
        case 'Owner':
          if (value != null) {
            result.owner.replace((serializers.deserialize(value,
                specifiedType: const FullType(_i2.Owner)) as _i2.Owner));
          }
          break;
        case 'Size':
          if (value != null) {
            result.size = (serializers.deserialize(value,
                specifiedType: const FullType(int)) as int);
          }
          break;
        case 'StorageClass':
          if (value != null) {
            result.storageClass = (serializers.deserialize(value,
                    specifiedType: const FullType(_i3.ObjectStorageClass))
                as _i3.ObjectStorageClass);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as S3Object);
    final result = <Object?>[
      const _i4.XmlElementName(
          'Object', _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'))
    ];
    if (payload.eTag != null) {
      result
        ..add(const _i4.XmlElementName('ETag'))
        ..add(serializers.serialize(payload.eTag!,
            specifiedType: const FullType(String)));
    }
    if (payload.key != null) {
      result
        ..add(const _i4.XmlElementName('Key'))
        ..add(serializers.serialize(payload.key!,
            specifiedType: const FullType(String)));
    }
    if (payload.lastModified != null) {
      result
        ..add(const _i4.XmlElementName('LastModified'))
        ..add(serializers.serialize(payload.lastModified!,
            specifiedType: const FullType.nullable(DateTime)));
    }
    if (payload.owner != null) {
      result
        ..add(const _i4.XmlElementName('Owner'))
        ..add(serializers.serialize(payload.owner!,
            specifiedType: const FullType(_i2.Owner)));
    }
    if (payload.size != null) {
      result
        ..add(const _i4.XmlElementName('Size'))
        ..add(serializers.serialize(payload.size!,
            specifiedType: const FullType.nullable(int)));
    }
    if (payload.storageClass != null) {
      result
        ..add(const _i4.XmlElementName('StorageClass'))
        ..add(serializers.serialize(payload.storageClass!,
            specifiedType: const FullType.nullable(_i3.ObjectStorageClass)));
    }
    return result;
  }
}
