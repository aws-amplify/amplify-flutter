// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.inventory_s3_bucket_destination; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_encryption.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/inventory_format.dart' as _i3;

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
    _i2.InventoryEncryption? encryption,
    required _i3.InventoryFormat format,
    String? prefix,
  }) {
    return _$InventoryS3BucketDestination._(
      accountId: accountId,
      bucket: bucket,
      encryption: encryption,
      format: format,
      prefix: prefix,
    );
  }

  /// Contains the bucket name, file format, bucket owner (optional), and prefix (optional) where inventory results are published.
  factory InventoryS3BucketDestination.build(
          [void Function(InventoryS3BucketDestinationBuilder) updates]) =
      _$InventoryS3BucketDestination;

  const InventoryS3BucketDestination._();

  static const List<_i4.SmithySerializer> serializers = [
    InventoryS3BucketDestinationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InventoryS3BucketDestinationBuilder b) {}

  /// The account ID that owns the destination S3 bucket. If no account ID is provided, the owner is not validated before exporting data.
  ///
  /// Although this value is optional, we strongly recommend that you set it to help prevent problems if the destination bucket ownership changes.
  String? get accountId;

  /// The Amazon Resource Name (ARN) of the bucket where inventory results will be published.
  String get bucket;

  /// Contains the type of server-side encryption used to encrypt the inventory results.
  _i2.InventoryEncryption? get encryption;

  /// Specifies the output format of the inventory results.
  _i3.InventoryFormat get format;

  /// The prefix that is prepended to all inventory results.
  String? get prefix;
  @override
  List<Object?> get props => [
        accountId,
        bucket,
        encryption,
        format,
        prefix,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InventoryS3BucketDestination');
    helper.add(
      'accountId',
      accountId,
    );
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'encryption',
      encryption,
    );
    helper.add(
      'format',
      format,
    );
    helper.add(
      'prefix',
      prefix,
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AccountId':
          if (value != null) {
            result.accountId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'Bucket':
          result.bucket = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Encryption':
          if (value != null) {
            result.encryption.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.InventoryEncryption),
            ) as _i2.InventoryEncryption));
          }
          break;
        case 'Format':
          result.format = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i3.InventoryFormat),
          ) as _i3.InventoryFormat);
          break;
        case 'Prefix':
          if (value != null) {
            result.prefix = (serializers.deserialize(
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
    final payload = (object as InventoryS3BucketDestination);
    final result = <Object?>[
      const _i4.XmlElementName(
        'InventoryS3BucketDestination',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.accountId != null) {
      result
        ..add(const _i4.XmlElementName('AccountId'))
        ..add(serializers.serialize(
          payload.accountId!,
          specifiedType: const FullType(String),
        ));
    }
    result
      ..add(const _i4.XmlElementName('Bucket'))
      ..add(serializers.serialize(
        payload.bucket,
        specifiedType: const FullType(String),
      ));
    if (payload.encryption != null) {
      result
        ..add(const _i4.XmlElementName('Encryption'))
        ..add(serializers.serialize(
          payload.encryption!,
          specifiedType: const FullType(_i2.InventoryEncryption),
        ));
    }
    result
      ..add(const _i4.XmlElementName('Format'))
      ..add(serializers.serialize(
        payload.format,
        specifiedType: const FullType.nullable(_i3.InventoryFormat),
      ));
    if (payload.prefix != null) {
      result
        ..add(const _i4.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          payload.prefix!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
