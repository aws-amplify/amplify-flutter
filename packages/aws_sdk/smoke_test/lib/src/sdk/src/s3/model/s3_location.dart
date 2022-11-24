// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.s3_location; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/s3/model/encryption.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/grant.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/metadata_entry.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/object_canned_acl.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/tagging.dart' as _i6;

part 's3_location.g.dart';

/// Describes an Amazon S3 location that will receive the results of the restore request.
abstract class S3Location
    with _i1.AWSEquatable<S3Location>
    implements Built<S3Location, S3LocationBuilder> {
  /// Describes an Amazon S3 location that will receive the results of the restore request.
  factory S3Location({
    List<_i2.Grant>? accessControlList,
    required String bucketName,
    _i3.ObjectCannedAcl? cannedAcl,
    _i4.Encryption? encryption,
    required String prefix,
    _i5.StorageClass? storageClass,
    _i6.Tagging? tagging,
    List<_i7.MetadataEntry>? userMetadata,
  }) {
    return _$S3Location._(
      accessControlList:
          accessControlList == null ? null : _i8.BuiltList(accessControlList),
      bucketName: bucketName,
      cannedAcl: cannedAcl,
      encryption: encryption,
      prefix: prefix,
      storageClass: storageClass,
      tagging: tagging,
      userMetadata: userMetadata == null ? null : _i8.BuiltList(userMetadata),
    );
  }

  /// Describes an Amazon S3 location that will receive the results of the restore request.
  factory S3Location.build([void Function(S3LocationBuilder) updates]) =
      _$S3Location;

  const S3Location._();

  static const List<_i9.SmithySerializer> serializers = [
    S3LocationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(S3LocationBuilder b) {}

  /// A list of grants that control access to the staged results.
  _i8.BuiltList<_i2.Grant>? get accessControlList;

  /// The name of the bucket where the restore results will be placed.
  String get bucketName;

  /// The canned ACL to apply to the restore results.
  _i3.ObjectCannedAcl? get cannedAcl;

  /// Contains the type of server-side encryption used.
  _i4.Encryption? get encryption;

  /// The prefix that is prepended to the restore results for this request.
  String get prefix;

  /// The class of storage used to store the restore results.
  _i5.StorageClass? get storageClass;

  /// The tag-set that is applied to the restore results.
  _i6.Tagging? get tagging;

  /// A list of metadata to store with the restore results in S3.
  _i8.BuiltList<_i7.MetadataEntry>? get userMetadata;
  @override
  List<Object?> get props => [
        accessControlList,
        bucketName,
        cannedAcl,
        encryption,
        prefix,
        storageClass,
        tagging,
        userMetadata,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('S3Location');
    helper.add(
      'accessControlList',
      accessControlList,
    );
    helper.add(
      'bucketName',
      bucketName,
    );
    helper.add(
      'cannedAcl',
      cannedAcl,
    );
    helper.add(
      'encryption',
      encryption,
    );
    helper.add(
      'prefix',
      prefix,
    );
    helper.add(
      'storageClass',
      storageClass,
    );
    helper.add(
      'tagging',
      tagging,
    );
    helper.add(
      'userMetadata',
      userMetadata,
    );
    return helper.toString();
  }
}

class S3LocationRestXmlSerializer
    extends _i9.StructuredSmithySerializer<S3Location> {
  const S3LocationRestXmlSerializer() : super('S3Location');

  @override
  Iterable<Type> get types => const [
        S3Location,
        _$S3Location,
      ];
  @override
  Iterable<_i9.ShapeId> get supportedProtocols => const [
        _i9.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  S3Location deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = S3LocationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AccessControlList':
          if (value != null) {
            result.accessControlList.replace(
                (const _i9.XmlBuiltListSerializer(memberName: 'Grant')
                    .deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i2.Grant)],
              ),
            ) as _i8.BuiltList<_i2.Grant>));
          }
          break;
        case 'BucketName':
          result.bucketName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'CannedACL':
          if (value != null) {
            result.cannedAcl = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.ObjectCannedAcl),
            ) as _i3.ObjectCannedAcl);
          }
          break;
        case 'Encryption':
          if (value != null) {
            result.encryption.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.Encryption),
            ) as _i4.Encryption));
          }
          break;
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'StorageClass':
          if (value != null) {
            result.storageClass = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.StorageClass),
            ) as _i5.StorageClass);
          }
          break;
        case 'Tagging':
          if (value != null) {
            result.tagging.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i6.Tagging),
            ) as _i6.Tagging));
          }
          break;
        case 'UserMetadata':
          if (value != null) {
            result.userMetadata.replace(
                (const _i9.XmlBuiltListSerializer(memberName: 'MetadataEntry')
                    .deserialize(
              serializers,
              (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i8.BuiltList,
                [FullType(_i7.MetadataEntry)],
              ),
            ) as _i8.BuiltList<_i7.MetadataEntry>));
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
    final payload = (object as S3Location);
    final result = <Object?>[
      const _i9.XmlElementName(
        'S3Location',
        _i9.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.accessControlList != null) {
      result
        ..add(const _i9.XmlElementName('AccessControlList'))
        ..add(const _i9.XmlBuiltListSerializer(memberName: 'Grant').serialize(
          serializers,
          payload.accessControlList!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i2.Grant)],
          ),
        ));
    }
    result
      ..add(const _i9.XmlElementName('BucketName'))
      ..add(serializers.serialize(
        payload.bucketName,
        specifiedType: const FullType(String),
      ));
    if (payload.cannedAcl != null) {
      result
        ..add(const _i9.XmlElementName('CannedACL'))
        ..add(serializers.serialize(
          payload.cannedAcl!,
          specifiedType: const FullType.nullable(_i3.ObjectCannedAcl),
        ));
    }
    if (payload.encryption != null) {
      result
        ..add(const _i9.XmlElementName('Encryption'))
        ..add(serializers.serialize(
          payload.encryption!,
          specifiedType: const FullType(_i4.Encryption),
        ));
    }
    result
      ..add(const _i9.XmlElementName('Prefix'))
      ..add(serializers.serialize(
        payload.prefix,
        specifiedType: const FullType(String),
      ));
    if (payload.storageClass != null) {
      result
        ..add(const _i9.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          payload.storageClass!,
          specifiedType: const FullType.nullable(_i5.StorageClass),
        ));
    }
    if (payload.tagging != null) {
      result
        ..add(const _i9.XmlElementName('Tagging'))
        ..add(serializers.serialize(
          payload.tagging!,
          specifiedType: const FullType(_i6.Tagging),
        ));
    }
    if (payload.userMetadata != null) {
      result
        ..add(const _i9.XmlElementName('UserMetadata'))
        ..add(const _i9.XmlBuiltListSerializer(memberName: 'MetadataEntry')
            .serialize(
          serializers,
          payload.userMetadata!,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i7.MetadataEntry)],
          ),
        ));
    }
    return result;
  }
}
