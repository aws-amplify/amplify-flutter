// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.analytics_s3_bucket_destination; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_s3_export_file_format.dart'
    as _i2;

part 'analytics_s3_bucket_destination.g.dart';

/// Contains information about where to publish the analytics results.
abstract class AnalyticsS3BucketDestination
    with
        _i1.AWSEquatable<AnalyticsS3BucketDestination>
    implements
        Built<AnalyticsS3BucketDestination,
            AnalyticsS3BucketDestinationBuilder> {
  /// Contains information about where to publish the analytics results.
  factory AnalyticsS3BucketDestination({
    required _i2.AnalyticsS3ExportFileFormat format,
    String? bucketAccountId,
    required String bucket,
    String? prefix,
  }) {
    return _$AnalyticsS3BucketDestination._(
      format: format,
      bucketAccountId: bucketAccountId,
      bucket: bucket,
      prefix: prefix,
    );
  }

  /// Contains information about where to publish the analytics results.
  factory AnalyticsS3BucketDestination.build(
          [void Function(AnalyticsS3BucketDestinationBuilder) updates]) =
      _$AnalyticsS3BucketDestination;

  const AnalyticsS3BucketDestination._();

  static const List<_i3.SmithySerializer<AnalyticsS3BucketDestination>>
      serializers = [AnalyticsS3BucketDestinationRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AnalyticsS3BucketDestinationBuilder b) {}

  /// Specifies the file format used when exporting data to Amazon S3.
  _i2.AnalyticsS3ExportFileFormat get format;

  /// The account ID that owns the destination S3 bucket. If no account ID is provided, the owner is not validated before exporting data.
  ///
  /// Although this value is optional, we strongly recommend that you set it to help prevent problems if the destination bucket ownership changes.
  String? get bucketAccountId;

  /// The Amazon Resource Name (ARN) of the bucket to which data is exported.
  String get bucket;

  /// The prefix to use when exporting data. The prefix is prepended to all results.
  String? get prefix;
  @override
  List<Object?> get props => [
        format,
        bucketAccountId,
        bucket,
        prefix,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalyticsS3BucketDestination')
      ..add(
        'format',
        format,
      )
      ..add(
        'bucketAccountId',
        bucketAccountId,
      )
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'prefix',
        prefix,
      );
    return helper.toString();
  }
}

class AnalyticsS3BucketDestinationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<AnalyticsS3BucketDestination> {
  const AnalyticsS3BucketDestinationRestXmlSerializer()
      : super('AnalyticsS3BucketDestination');

  @override
  Iterable<Type> get types => const [
        AnalyticsS3BucketDestination,
        _$AnalyticsS3BucketDestination,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  AnalyticsS3BucketDestination deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalyticsS3BucketDestinationBuilder();
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
        case 'BucketAccountId':
          result.bucketAccountId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Format':
          result.format = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalyticsS3ExportFileFormat),
          ) as _i2.AnalyticsS3ExportFileFormat);
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
    AnalyticsS3BucketDestination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'AnalyticsS3BucketDestination',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final AnalyticsS3BucketDestination(
      :bucket,
      :bucketAccountId,
      :format,
      :prefix
    ) = object;
    result$
      ..add(const _i3.XmlElementName('Bucket'))
      ..add(serializers.serialize(
        bucket,
        specifiedType: const FullType(String),
      ));
    if (bucketAccountId != null) {
      result$
        ..add(const _i3.XmlElementName('BucketAccountId'))
        ..add(serializers.serialize(
          bucketAccountId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('Format'))
      ..add(serializers.serialize(
        format,
        specifiedType: const FullType.nullable(_i2.AnalyticsS3ExportFileFormat),
      ));
    if (prefix != null) {
      result$
        ..add(const _i3.XmlElementName('Prefix'))
        ..add(serializers.serialize(
          prefix,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
