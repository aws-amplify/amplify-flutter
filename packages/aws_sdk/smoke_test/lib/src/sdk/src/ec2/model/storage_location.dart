// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.storage_location; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'storage_location.g.dart';

/// Describes a storage location in Amazon S3.
abstract class StorageLocation
    with _i1.AWSEquatable<StorageLocation>
    implements Built<StorageLocation, StorageLocationBuilder> {
  /// Describes a storage location in Amazon S3.
  factory StorageLocation({
    String? bucket,
    String? key,
  }) {
    return _$StorageLocation._(
      bucket: bucket,
      key: key,
    );
  }

  /// Describes a storage location in Amazon S3.
  factory StorageLocation.build(
      [void Function(StorageLocationBuilder) updates]) = _$StorageLocation;

  const StorageLocation._();

  static const List<_i2.SmithySerializer<StorageLocation>> serializers = [
    StorageLocationEc2QuerySerializer()
  ];

  /// The name of the S3 bucket.
  String? get bucket;

  /// The key.
  String? get key;
  @override
  List<Object?> get props => [
        bucket,
        key,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StorageLocation')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'key',
        key,
      );
    return helper.toString();
  }
}

class StorageLocationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<StorageLocation> {
  const StorageLocationEc2QuerySerializer() : super('StorageLocation');

  @override
  Iterable<Type> get types => const [
        StorageLocation,
        _$StorageLocation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  StorageLocation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StorageLocationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Bucket':
          result.bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Key':
          result.key = (serializers.deserialize(
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
    StorageLocation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StorageLocationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final StorageLocation(:bucket, :key) = object;
    if (bucket != null) {
      result$
        ..add(const _i2.XmlElementName('Bucket'))
        ..add(serializers.serialize(
          bucket,
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
    return result$;
  }
}
