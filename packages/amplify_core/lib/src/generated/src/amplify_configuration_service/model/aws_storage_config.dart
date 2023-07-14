// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_storage_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_storage_s3_bucket.dart'
    as _i2;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_storage_s3_config.dart'
    as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class AWSStorageConfig extends _i1.SmithyUnion<AWSStorageConfig> {
  const AWSStorageConfig._();

  factory AWSStorageConfig.s3(
          {required Map<String, _i2.AWSStorageS3Bucket> buckets}) =>
      AWSStorageConfigS3$(_i3.AWSStorageS3Config(buckets: buckets));

  const factory AWSStorageConfig.sdkUnknown(
    String name,
    Object value,
  ) = AWSStorageConfigSdkUnknown$;

  static const List<_i1.SmithySerializer<AWSStorageConfig>> serializers = [
    AWSStorageConfigSerializer()
  ];

  _i3.AWSStorageS3Config? get s3 => null;
  @override
  Object get value => (s3)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AWSStorageConfig');
    if (s3 != null) {
      helper.add(
        r's3',
        s3,
      );
    }
    return helper.toString();
  }
}

final class AWSStorageConfigS3$ extends AWSStorageConfig {
  const AWSStorageConfigS3$(this.s3) : super._();

  @override
  final _i3.AWSStorageS3Config s3;

  @override
  String get name => 's3';
}

final class AWSStorageConfigSdkUnknown$ extends AWSStorageConfig {
  const AWSStorageConfigSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class AWSStorageConfigSerializer
    extends _i1.StructuredSmithySerializer<AWSStorageConfig> {
  const AWSStorageConfigSerializer() : super('AWSStorageConfig');

  @override
  Iterable<Type> get types => const [
        AWSStorageConfig,
        AWSStorageConfigS3$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSStorageConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 's3':
        return AWSStorageConfigS3$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i3.AWSStorageS3Config),
        ) as _i3.AWSStorageS3Config));
    }
    return AWSStorageConfig.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSStorageConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        AWSStorageConfigS3$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i3.AWSStorageS3Config),
          ),
        AWSStorageConfigSdkUnknown$(:final value) => value,
      },
    ];
  }
}
