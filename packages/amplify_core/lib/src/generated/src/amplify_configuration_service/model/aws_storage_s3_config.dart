// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_storage_s3_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_storage_s3_bucket.dart'
    as _i2;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;

part 'aws_storage_s3_config.g.dart';

/// The Amplify Storage S3 plugin configuration.
abstract class AWSStorageS3Config
    with _i1.AWSEquatable<AWSStorageS3Config>
    implements Built<AWSStorageS3Config, AWSStorageS3ConfigBuilder> {
  /// The Amplify Storage S3 plugin configuration.
  factory AWSStorageS3Config(
      {required Map<String, _i2.AWSStorageS3Bucket> buckets}) {
    return _$AWSStorageS3Config._(buckets: _i3.BuiltMap(buckets));
  }

  /// The Amplify Storage S3 plugin configuration.
  factory AWSStorageS3Config.build(
          [void Function(AWSStorageS3ConfigBuilder) updates]) =
      _$AWSStorageS3Config;

  const AWSStorageS3Config._();

  static const List<_i4.SmithySerializer<AWSStorageS3Config>> serializers = [
    AWSStorageS3ConfigSerializer()
  ];

  _i3.BuiltMap<String, _i2.AWSStorageS3Bucket> get buckets;
  @override
  List<Object?> get props => [buckets];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AWSStorageS3Config')
      ..add(
        'buckets',
        buckets,
      );
    return helper.toString();
  }
}

class AWSStorageS3ConfigSerializer
    extends _i4.StructuredSmithySerializer<AWSStorageS3Config> {
  const AWSStorageS3ConfigSerializer() : super('AWSStorageS3Config');

  @override
  Iterable<Type> get types => const [
        AWSStorageS3Config,
        _$AWSStorageS3Config,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSStorageS3Config deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSStorageS3ConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'buckets':
          result.buckets.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(_i2.AWSStorageS3Bucket),
              ],
            ),
          ) as _i3.BuiltMap<String, _i2.AWSStorageS3Bucket>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSStorageS3Config object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSStorageS3Config(:buckets) = object;
    result$.addAll([
      'buckets',
      serializers.serialize(
        buckets,
        specifiedType: const FullType(
          _i3.BuiltMap,
          [
            FullType(String),
            FullType(_i2.AWSStorageS3Bucket),
          ],
        ),
      ),
    ]);
    return result$;
  }
}
