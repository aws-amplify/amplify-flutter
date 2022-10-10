// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.analytics_export_destination; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_s3_bucket_destination.dart'
    as _i2;

part 'analytics_export_destination.g.dart';

/// Where to publish the analytics results.
abstract class AnalyticsExportDestination
    with _i1.AWSEquatable<AnalyticsExportDestination>
    implements
        Built<AnalyticsExportDestination, AnalyticsExportDestinationBuilder> {
  /// Where to publish the analytics results.
  factory AnalyticsExportDestination(
      {required _i2.AnalyticsS3BucketDestination s3BucketDestination}) {
    return _$AnalyticsExportDestination._(
        s3BucketDestination: s3BucketDestination);
  }

  /// Where to publish the analytics results.
  factory AnalyticsExportDestination.build(
          [void Function(AnalyticsExportDestinationBuilder) updates]) =
      _$AnalyticsExportDestination;

  const AnalyticsExportDestination._();

  static const List<_i3.SmithySerializer> serializers = [
    AnalyticsExportDestinationRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AnalyticsExportDestinationBuilder b) {}

  /// A destination signifying output to an S3 bucket.
  _i2.AnalyticsS3BucketDestination get s3BucketDestination;
  @override
  List<Object?> get props => [s3BucketDestination];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalyticsExportDestination');
    helper.add(
      's3BucketDestination',
      s3BucketDestination,
    );
    return helper.toString();
  }
}

class AnalyticsExportDestinationRestXmlSerializer
    extends _i3.StructuredSmithySerializer<AnalyticsExportDestination> {
  const AnalyticsExportDestinationRestXmlSerializer()
      : super('AnalyticsExportDestination');

  @override
  Iterable<Type> get types => const [
        AnalyticsExportDestination,
        _$AnalyticsExportDestination,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'S3BucketDestination':
          result.s3BucketDestination.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalyticsS3BucketDestination),
          ) as _i2.AnalyticsS3BucketDestination));
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
    final payload = (object as AnalyticsExportDestination);
    final result = <Object?>[
      const _i3.XmlElementName(
        'AnalyticsExportDestination',
        _i3.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i3.XmlElementName('S3BucketDestination'))
      ..add(serializers.serialize(
        payload.s3BucketDestination,
        specifiedType: const FullType(_i2.AnalyticsS3BucketDestination),
      ));
    return result;
  }
}
