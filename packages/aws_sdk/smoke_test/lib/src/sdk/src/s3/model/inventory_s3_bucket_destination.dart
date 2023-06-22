// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.inventory_s3_bucket_destination; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_encryption.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_format.dart' as _i2;

part 'inventory_s3_bucket_destination.g.dart';

/// Contains the bucket name, file format, bucket owner (optional), and prefix (optional) where inventory results are published.
abstract class InventoryS3BucketDestination
    with
        _i1.AWSEquatable<InventoryS3BucketDestination>
    implements
        Built<InventoryS3BucketDestination,
            InventoryS3BucketDestinationBuilder> {
  /// Contains the bucket name, file format, bucket owner (optional), and prefix (optional) where inventory results are published.
  factory InventoryS3BucketDestination({
    String? accountId,
    required String bucket,
    required _i2.InventoryFormat format,
    String? prefix,
    _i3.InventoryEncryption? encryption,
  }) {
    return _$InventoryS3BucketDestination._(
      accountId: accountId,
      bucket: bucket,
      format: format,
      prefix: prefix,
      encryption: encryption,
    );
  }

  /// Contains the bucket name, file format, bucket owner (optional), and prefix (optional) where inventory results are published.
  factory InventoryS3BucketDestination.build(
          [void Function(InventoryS3BucketDestinationBuilder) updates]) =
      _$InventoryS3BucketDestination;

  const InventoryS3BucketDestination._();

  static const List<_i4.SmithySerializer<InventoryS3BucketDestination>>
      serializers = [InventoryS3BucketDestinationRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InventoryS3BucketDestinationBuilder b) {}

  /// The account ID that owns the destination S3 bucket. If no account ID is provided, the owner is not validated before exporting data.
  ///
  /// Although this value is optional, we strongly recommend that you set it to help prevent problems if the destination bucket ownership changes.
  String? get accountId;

  /// The Amazon Resource Name (ARN) of the bucket where inventory results will be published.
  String get bucket;

  /// Specifies the output format of the inventory results.
  _i2.InventoryFormat get format;

  /// The prefix that is prepended to all inventory results.
  String? get prefix;

  /// Contains the type of server-side encryption used to encrypt the inventory results.
  _i3.InventoryEncryption? get encryption;
  @override
  List<Object?> get props => [
        accountId,
        bucket,
        format,
        prefix,
        encryption,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InventoryS3BucketDestination')
      ..add(
        'accountId',
        accountId,
      )
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'format',
        format,
      )
      ..add(
        'prefix',
        prefix,
      )
      ..add(
        'encryption',
        encryption,
      );
    return helper.toString();
  }
}

class InventoryS3BucketDestinationRestXmlSerializer
    extends _i4.StructuredSmithySerializer<InventoryS3BucketDestination> {
  const InventoryS3BucketDestinationRestXmlSerializer()
      : super('InventoryS3BucketDestination');

  @override
  Iterable<Type> get types => const [
        InventoryS3BucketDestination,
        _$InventoryS3BucketDestination,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  InventoryS3BucketDestination deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InventoryS3BucketDestinationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AccountId':
          result.accountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Bucket':
          result.bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Encryption':
          result.encryption.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.InventoryEncryption),
          ) as _i3.InventoryEncryption));
        case 'Format':
          result.format = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.InventoryFormat),
          ) as _i2.InventoryFormat);
        case 'Prefix':
          result.prefix = (serializers.deserialize(
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
    InventoryS3BucketDestination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'InventoryS3BucketDestination',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final InventoryS3BucketDestination(
      :accountId,
      :bucket,
      :encryption,
      :format,
      :prefix
    ) = object;
    if (accountId != null) {
      result$
        ..add(const _i4.XmlElementName('AccountId'))
        ..add(serializers.serialize(
          accountId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('Bucket'))
      ..add(serializers.serialize(
        bucket,
        specifiedType: const FullType(String),
      ));
    if (encryption != null) {
      result$
        ..add(const _i4.XmlElementName('Encryption'))
        ..add(serializers.serialize(
          encryption,
          specifiedType: const FullType(_i3.InventoryEncryption),
        ));
    }
    result$
      ..add(const _i4.XmlElementName('Format'))
      ..add(serializers.serialize(
        format,
        specifiedType: const FullType.nullable(_i2.InventoryFormat),
      ));
    if (prefix != null) {
      result$
        ..add(const _i4.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
