// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.analytics_export_destination; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_s3_bucket_destination.dart';

part 'analytics_export_destination.g.dart';

/// Where to publish the analytics results.
abstract class AnalyticsExportDestination
    with _i1.AWSEquatable<AnalyticsExportDestination>
    implements
        Built<AnalyticsExportDestination, AnalyticsExportDestinationBuilder> {
  /// Where to publish the analytics results.
  factory AnalyticsExportDestination(
      {required AnalyticsS3BucketDestination s3BucketDestination}) {
    return _$AnalyticsExportDestination._(
        s3BucketDestination: s3BucketDestination);
  }

  /// Where to publish the analytics results.
  factory AnalyticsExportDestination.build(
          [void Function(AnalyticsExportDestinationBuilder) updates]) =
      _$AnalyticsExportDestination;

  const AnalyticsExportDestination._();

  static const List<_i2.SmithySerializer<AnalyticsExportDestination>>
      serializers = [AnalyticsExportDestinationRestXmlSerializer()];

  /// A destination signifying output to an S3 bucket.
  AnalyticsS3BucketDestination get s3BucketDestination;
  @override
  List<Object?> get props => [s3BucketDestination];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalyticsExportDestination')
      ..add(
        's3BucketDestination',
        s3BucketDestination,
      );
    return helper.toString();
  }
}

class AnalyticsExportDestinationRestXmlSerializer
    extends _i2.StructuredSmithySerializer<AnalyticsExportDestination> {
  const AnalyticsExportDestinationRestXmlSerializer()
      : super('AnalyticsExportDestination');

  @override
  Iterable<Type> get types => const [
        AnalyticsExportDestination,
        _$AnalyticsExportDestination,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  AnalyticsExportDestination deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalyticsExportDestinationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'S3BucketDestination':
          result.s3BucketDestination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(AnalyticsS3BucketDestination),
          ) as AnalyticsS3BucketDestination));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AnalyticsExportDestination object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'AnalyticsExportDestination',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final AnalyticsExportDestination(:s3BucketDestination) = object;
    result$
      ..add(const _i2.XmlElementName('S3BucketDestination'))
      ..add(serializers.serialize(
        s3BucketDestination,
        specifiedType: const FullType(AnalyticsS3BucketDestination),
      ));
    return result$;
  }
}
