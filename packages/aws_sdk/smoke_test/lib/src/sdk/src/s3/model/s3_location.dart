// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.s3_location; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/encryption.dart';
import 'package:smoke_test/src/sdk/src/s3/model/grant.dart';
import 'package:smoke_test/src/sdk/src/s3/model/metadata_entry.dart';
import 'package:smoke_test/src/sdk/src/s3/model/object_canned_acl.dart';
import 'package:smoke_test/src/sdk/src/s3/model/storage_class.dart';
import 'package:smoke_test/src/sdk/src/s3/model/tagging.dart';

part 's3_location.g.dart';

/// Describes an Amazon S3 location that will receive the results of the restore request.
abstract class S3Location
    with _i1.AWSEquatable<S3Location>
    implements Built<S3Location, S3LocationBuilder> {
  /// Describes an Amazon S3 location that will receive the results of the restore request.
  factory S3Location({
    required String bucketName,
    required String prefix,
    Encryption? encryption,
    ObjectCannedAcl? cannedAcl,
    List<Grant>? accessControlList,
    Tagging? tagging,
    List<MetadataEntry>? userMetadata,
    StorageClass? storageClass,
  }) {
    return _$S3Location._(
      bucketName: bucketName,
      prefix: prefix,
      encryption: encryption,
      cannedAcl: cannedAcl,
      accessControlList:
          accessControlList == null ? null : _i2.BuiltList(accessControlList),
      tagging: tagging,
      userMetadata: userMetadata == null ? null : _i2.BuiltList(userMetadata),
      storageClass: storageClass,
    );
  }

  /// Describes an Amazon S3 location that will receive the results of the restore request.
  factory S3Location.build([void Function(S3LocationBuilder) updates]) =
      _$S3Location;

  const S3Location._();

  static const List<_i3.SmithySerializer<S3Location>> serializers = [
    S3LocationRestXmlSerializer()
  ];

  /// The name of the bucket where the restore results will be placed.
  String get bucketName;

  /// The prefix that is prepended to the restore results for this request.
  String get prefix;

  /// Contains the type of server-side encryption used.
  Encryption? get encryption;

  /// The canned ACL to apply to the restore results.
  ObjectCannedAcl? get cannedAcl;

  /// A list of grants that control access to the staged results.
  _i2.BuiltList<Grant>? get accessControlList;

  /// The tag-set that is applied to the restore results.
  Tagging? get tagging;

  /// A list of metadata to store with the restore results in S3.
  _i2.BuiltList<MetadataEntry>? get userMetadata;

  /// The class of storage used to store the restore results.
  StorageClass? get storageClass;
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
    extends _i3.StructuredSmithySerializer<S3Location> {
  const S3LocationRestXmlSerializer() : super('S3Location');

  @override
  Iterable<Type> get types => const [
        S3Location,
        _$S3Location,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
              (const _i3.XmlBuiltListSerializer(memberName: 'Grant')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Grant)],
            ),
          ) as _i2.BuiltList<Grant>));
        case 'BucketName':
          result.bucketName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CannedACL':
          result.cannedAcl = (serializers.deserialize(
            value,
            specifiedType: const FullType(ObjectCannedAcl),
          ) as ObjectCannedAcl);
        case 'Encryption':
          result.encryption.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Encryption),
          ) as Encryption));
        case 'Prefix':
          result.prefix = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StorageClass':
          result.storageClass = (serializers.deserialize(
            value,
            specifiedType: const FullType(StorageClass),
          ) as StorageClass);
        case 'Tagging':
          result.tagging.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Tagging),
          ) as Tagging));
        case 'UserMetadata':
          result.userMetadata.replace(
              (const _i3.XmlBuiltListSerializer(memberName: 'MetadataEntry')
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(MetadataEntry)],
            ),
          ) as _i2.BuiltList<MetadataEntry>));
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
      const _i3.XmlElementName(
        'S3Location',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
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
        ..add(const _i3.XmlElementName('AccessControlList'))
        ..add(const _i3.XmlBuiltListSerializer(memberName: 'Grant').serialize(
          serializers,
          accessControlList,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Grant)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('BucketName'))
      ..add(serializers.serialize(
        bucketName,
        specifiedType: const FullType(String),
      ));
    if (cannedAcl != null) {
      result$
        ..add(const _i3.XmlElementName('CannedACL'))
        ..add(serializers.serialize(
          cannedAcl,
          specifiedType: const FullType(ObjectCannedAcl),
        ));
    }
    if (encryption != null) {
      result$
        ..add(const _i3.XmlElementName('Encryption'))
        ..add(serializers.serialize(
          encryption,
          specifiedType: const FullType(Encryption),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Prefix'))
      ..add(serializers.serialize(
        prefix,
        specifiedType: const FullType(String),
      ));
    if (storageClass != null) {
      result$
        ..add(const _i3.XmlElementName('StorageClass'))
        ..add(serializers.serialize(
          storageClass,
          specifiedType: const FullType(StorageClass),
        ));
    }
    if (tagging != null) {
      result$
        ..add(const _i3.XmlElementName('Tagging'))
        ..add(serializers.serialize(
          tagging,
          specifiedType: const FullType(Tagging),
        ));
    }
    if (userMetadata != null) {
      result$
        ..add(const _i3.XmlElementName('UserMetadata'))
        ..add(const _i3.XmlBuiltListSerializer(memberName: 'MetadataEntry')
            .serialize(
          serializers,
          userMetadata,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(MetadataEntry)],
          ),
        ));
    }
    return result$;
  }
}
