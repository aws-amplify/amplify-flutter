// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.s3_location; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i8;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i9;
import 'package:smoke_test/src/sdk/src/s3/model/encryption.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/grant.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/metadata_entry.dart' as _i6;
import 'package:smoke_test/src/sdk/src/s3/model/object_canned_acl.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class.dart' as _i7;
import 'package:smoke_test/src/sdk/src/s3/model/tagging.dart' as _i5;

part 's3_location.g.dart';

/// Describes an Amazon S3 location that will receive the results of the restore request.
abstract class S3Location
    with _i1.AWSEquatable<S3Location>
    implements Built<S3Location, S3LocationBuilder> {
  /// Describes an Amazon S3 location that will receive the results of the restore request.
  factory S3Location({
    required String bucketName,
    required String prefix,
    _i2.Encryption? encryption,
    _i3.ObjectCannedAcl? cannedAcl,
    List<_i4.Grant>? accessControlList,
    _i5.Tagging? tagging,
    List<_i6.MetadataEntry>? userMetadata,
    _i7.StorageClass? storageClass,
  }) {
    return _$S3Location._(
      bucketName: bucketName,
      prefix: prefix,
      encryption: encryption,
      cannedAcl: cannedAcl,
      accessControlList:
          accessControlList == null ? null : _i8.BuiltList(accessControlList),
      tagging: tagging,
      userMetadata: userMetadata == null ? null : _i8.BuiltList(userMetadata),
      storageClass: storageClass,
    );
  }

  /// Describes an Amazon S3 location that will receive the results of the restore request.
  factory S3Location.build([void Function(S3LocationBuilder) updates]) =
      _$S3Location;

  const S3Location._();

  static const List<_i9.SmithySerializer<S3Location>> serializers = [
    S3LocationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(S3LocationBuilder b) {}

  /// The name of the bucket where the restore results will be placed.
  String get bucketName;

  /// The prefix that is prepended to the restore results for this request.
  String get prefix;

  /// Contains the type of server-side encryption used.
  _i2.Encryption? get encryption;

  /// The canned ACL to apply to the restore results.
  _i3.ObjectCannedAcl? get cannedAcl;

  /// A list of grants that control access to the staged results.
  _i8.BuiltList<_i4.Grant>? get accessControlList;

  /// The tag-set that is applied to the restore results.
  _i5.Tagging? get tagging;

  /// A list of metadata to store with the restore results in S3.
  _i8.BuiltList<_i6.MetadataEntry>? get userMetadata;

  /// The class of storage used to store the restore results.
  _i7.StorageClass? get storageClass;
  @override
  List<Object?> get props => [
        bucketName,
        prefix,
        encryption,
        cannedAcl,
        accessControlList,
        tagging,
        userMetadata,
        storageClass,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('S3Location')
      ..add(
        'bucketName',
        bucketName,
      )
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'encryption',
        encryption,
      )
      ..add(
        'cannedAcl',
        cannedAcl,
      )
      ..add(
        'accessControlList',
        accessControlList,
      )
      ..add(
        'tagging',
        tagging,
      )
      ..add(
        'userMetadata',
        userMetadata,
      )
      ..add(
        'storageClass',
        storageClass,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccessControlList':
          result.accessControlList.replace(
              (const _i9.XmlBuiltListSerializer(memberName: 'Grant')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i4.Grant)],
            ),
          ) as _i8.BuiltList<_i4.Grant>));
        case 'BucketName':
          result.bucketName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CannedACL':
          result.cannedAcl = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ObjectCannedAcl),
          ) as _i3.ObjectCannedAcl);
        case 'Encryption':
          result.encryption.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.Encryption),
          ) as _i2.Encryption));
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StorageClass':
          result.storageClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i7.StorageClass),
          ) as _i7.StorageClass);
        case 'Tagging':
          result.tagging.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.Tagging),
          ) as _i5.Tagging));
        case 'UserMetadata':
          result.userMetadata.replace(
              (const _i9.XmlBuiltListSerializer(memberName: 'MetadataEntry')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i8.BuiltList,
              [FullType(_i6.MetadataEntry)],
            ),
          ) as _i8.BuiltList<_i6.MetadataEntry>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    S3Location object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i9.XmlElementName(
        'S3Location',
        _i9.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final S3Location(
      :accessControlList,
      :bucketName,
      :cannedAcl,
      :encryption,
      :prefix,
      :storageClass,
      :tagging,
      :userMetadata
    ) = object;
    if (accessControlList != null) {
      result$
        ..add(const _i9.XmlElementName('AccessControlList'))
        ..add(const _i9.XmlBuiltListSerializer(memberName: 'Grant').serialize(
          serializers,
          accessControlList,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i4.Grant)],
          ),
        ));
    }
    result$
      ..add(const _i9.XmlElementName('BucketName'))
      ..add(serializers.serialize(
        bucketName,
        specifiedType: const FullType(String),
      ));
    if (cannedAcl != null) {
      result$
        ..add(const _i9.XmlElementName('CannedACL'))
        ..add(serializers.serialize(
          cannedAcl,
          specifiedType: const FullType.nullable(_i3.ObjectCannedAcl),
        ));
    }
    if (encryption != null) {
      result$
        ..add(const _i9.XmlElementName('Encryption'))
        ..add(serializers.serialize(
          encryption,
          specifiedType: const FullType(_i2.Encryption),
        ));
    }
    result$
      ..add(const _i9.XmlElementName('Prefix'))
      ..add(serializers.serialize(
        prefix,
        specifiedType: const FullType(String),
      ));
    if (storageClass != null) {
      result$
        ..add(const _i9.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          storageClass,
          specifiedType: const FullType.nullable(_i7.StorageClass),
        ));
    }
    if (tagging != null) {
      result$
        ..add(const _i9.XmlElementName('Tagging'))
        ..add(serializers.serialize(
          tagging,
          specifiedType: const FullType(_i5.Tagging),
        ));
    }
    if (userMetadata != null) {
      result$
        ..add(const _i9.XmlElementName('UserMetadata'))
        ..add(const _i9.XmlBuiltListSerializer(memberName: 'MetadataEntry')
            .serialize(
          serializers,
          userMetadata,
          specifiedType: const FullType.nullable(
            _i8.BuiltList,
            [FullType(_i6.MetadataEntry)],
          ),
        ));
    }
    return result$;
  }
}
