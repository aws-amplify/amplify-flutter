// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.dynamo_db.model.s3_bucket_source; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 's3_bucket_source.g.dart';

/// The S3 bucket that is being imported from.
abstract class S3BucketSource
    with _i1.AWSEquatable<S3BucketSource>
    implements Built<S3BucketSource, S3BucketSourceBuilder> {
  /// The S3 bucket that is being imported from.
  factory S3BucketSource({
    String? s3BucketOwner,
    required String s3Bucket,
    String? s3KeyPrefix,
  }) {
    return _$S3BucketSource._(
      s3BucketOwner: s3BucketOwner,
      s3Bucket: s3Bucket,
      s3KeyPrefix: s3KeyPrefix,
    );
  }

  /// The S3 bucket that is being imported from.
  factory S3BucketSource.build([void Function(S3BucketSourceBuilder) updates]) =
      _$S3BucketSource;

  const S3BucketSource._();

  static const List<_i2.SmithySerializer<S3BucketSource>> serializers = [
    S3BucketSourceAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(S3BucketSourceBuilder b) {}

  /// The account number of the S3 bucket that is being imported from. If the bucket is owned by the requester this is optional.
  String? get s3BucketOwner;

  /// The S3 bucket that is being imported from.
  String get s3Bucket;

  /// The key prefix shared by all S3 Objects that are being imported.
  String? get s3KeyPrefix;
  @override
  List<Object?> get props => [
        s3BucketOwner,
        s3Bucket,
        s3KeyPrefix,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('S3BucketSource')
      ..add(
        's3BucketOwner',
        s3BucketOwner,
      )
      ..add(
        's3Bucket',
        s3Bucket,
      )
      ..add(
        's3KeyPrefix',
        s3KeyPrefix,
      );
    return helper.toString();
  }
}

class S3BucketSourceAwsJson10Serializer
    extends _i2.StructuredSmithySerializer<S3BucketSource> {
  const S3BucketSourceAwsJson10Serializer() : super('S3BucketSource');

  @override
  Iterable<Type> get types => const [
        S3BucketSource,
        _$S3BucketSource,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  S3BucketSource deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = S3BucketSourceBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'S3BucketOwner':
          result.s3BucketOwner = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'S3Bucket':
          result.s3Bucket = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'S3KeyPrefix':
          result.s3KeyPrefix = (serializers.deserialize(
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
    S3BucketSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final S3BucketSource(:s3BucketOwner, :s3Bucket, :s3KeyPrefix) = object;
    result$.addAll([
      'S3Bucket',
      serializers.serialize(
        s3Bucket,
        specifiedType: const FullType(String),
      ),
    ]);
    if (s3BucketOwner != null) {
      result$
        ..add('S3BucketOwner')
        ..add(serializers.serialize(
          s3BucketOwner,
          specifiedType: const FullType(String),
        ));
    }
    if (s3KeyPrefix != null) {
      result$
        ..add('S3KeyPrefix')
        ..add(serializers.serialize(
          s3KeyPrefix,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
