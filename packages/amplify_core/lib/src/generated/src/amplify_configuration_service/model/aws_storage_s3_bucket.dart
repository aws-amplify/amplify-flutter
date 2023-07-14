// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_storage_s3_bucket; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_core.dart' as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;

part 'aws_storage_s3_bucket.g.dart';

abstract class AWSStorageS3Bucket
    with _i1.AWSEquatable<AWSStorageS3Bucket>
    implements Built<AWSStorageS3Bucket, AWSStorageS3BucketBuilder> {
  factory AWSStorageS3Bucket({
    required String bucketName,
    required String region,
    _i2.StorageAccessLevel? defaultAccessLevel,
  }) {
    defaultAccessLevel ??= _i2.StorageAccessLevel.guest;
    return _$AWSStorageS3Bucket._(
      bucketName: bucketName,
      region: region,
      defaultAccessLevel: defaultAccessLevel,
    );
  }

  factory AWSStorageS3Bucket.build(
          [void Function(AWSStorageS3BucketBuilder) updates]) =
      _$AWSStorageS3Bucket;

  const AWSStorageS3Bucket._();

  static const List<_i3.SmithySerializer<AWSStorageS3Bucket>> serializers = [
    AWSStorageS3BucketSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSStorageS3BucketBuilder b) {
    b.defaultAccessLevel = _i2.StorageAccessLevel.guest;
  }

  String get bucketName;
  String get region;
  _i2.StorageAccessLevel get defaultAccessLevel;
  @override
  List<Object?> get props => [
        bucketName,
        region,
        defaultAccessLevel,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSStorageS3Bucket')
      ..add(
        'bucketName',
        bucketName,
      )
      ..add(
        'region',
        region,
      )
      ..add(
        'defaultAccessLevel',
        defaultAccessLevel,
      );
    return helper.toString();
  }
}

class AWSStorageS3BucketSerializer
    extends _i3.StructuredSmithySerializer<AWSStorageS3Bucket> {
  const AWSStorageS3BucketSerializer() : super('AWSStorageS3Bucket');

  @override
  Iterable<Type> get types => const [
        AWSStorageS3Bucket,
        _$AWSStorageS3Bucket,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSStorageS3Bucket deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSStorageS3BucketBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'bucketName':
          result.bucketName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'defaultAccessLevel':
          result.defaultAccessLevel = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StorageAccessLevel),
          ) as _i2.StorageAccessLevel);
        case 'region':
          result.region = (serializers.deserialize(
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
    AWSStorageS3Bucket object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSStorageS3Bucket(:bucketName, :defaultAccessLevel, :region) =
        object;
    result$.addAll([
      'bucketName',
      serializers.serialize(
        bucketName,
        specifiedType: const FullType(String),
      ),
      'defaultAccessLevel',
      serializers.serialize(
        defaultAccessLevel,
        specifiedType: const FullType(_i2.StorageAccessLevel),
      ),
      'region',
      serializers.serialize(
        region,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
