// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.storage_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/storage_s3_bucket.dart'
    as _i2;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/storage_s3_config.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

/// The Amplify Storage category configuration.
sealed class StorageConfig extends _i1.SmithyUnion<StorageConfig> {
  const StorageConfig._();

  factory StorageConfig.s3({required List<_i2.StorageS3Bucket> buckets}) =>
      StorageConfigS3$(_i3.StorageS3Config(buckets: buckets));

  const factory StorageConfig.sdkUnknown(
    String name,
    Object value,
  ) = StorageConfigSdkUnknown$;

  static const List<_i1.SmithySerializer<StorageConfig>> serializers = [
    StorageConfigSerializer()
  ];

  /// The Amplify Storage S3 plugin configuration.
  _i3.StorageS3Config? get s3 => null;
  @override
  Object get value => (s3)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'StorageConfig');
    if (s3 != null) {
      helper.add(
        r's3',
        s3,
      );
    }
    return helper.toString();
  }
}

final class StorageConfigS3$ extends StorageConfig {
  const StorageConfigS3$(this.s3) : super._();

  @override
  final _i3.StorageS3Config s3;

  @override
  String get name => 's3';
}

final class StorageConfigSdkUnknown$ extends StorageConfig {
  const StorageConfigSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class StorageConfigSerializer
    extends _i1.StructuredSmithySerializer<StorageConfig> {
  const StorageConfigSerializer() : super('StorageConfig');

  @override
  Iterable<Type> get types => const [
        StorageConfig,
        StorageConfigS3$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  StorageConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 's3':
        return StorageConfigS3$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.StorageS3Config),
        ) as _i3.StorageS3Config));
    }
    return StorageConfig.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StorageConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        StorageConfigS3$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i3.StorageS3Config),
          ),
        StorageConfigSdkUnknown$(:final value) => value,
      },
    ];
  }
}
