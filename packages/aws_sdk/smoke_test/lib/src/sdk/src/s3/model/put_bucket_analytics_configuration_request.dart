// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.put_bucket_analytics_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_filter.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/storage_class_analysis.dart'
    as _i5;

part 'put_bucket_analytics_configuration_request.g.dart';

abstract class PutBucketAnalyticsConfigurationRequest
    with
        _i1.HttpInput<_i2.AnalyticsConfiguration>,
        _i3.AWSEquatable<PutBucketAnalyticsConfigurationRequest>
    implements
        Built<PutBucketAnalyticsConfigurationRequest,
            PutBucketAnalyticsConfigurationRequestBuilder>,
        _i1.HasPayload<_i2.AnalyticsConfiguration> {
  factory PutBucketAnalyticsConfigurationRequest({
    required _i2.AnalyticsConfiguration analyticsConfiguration,
    required String bucket,
    String? expectedBucketOwner,
    required String id,
  }) {
    return _$PutBucketAnalyticsConfigurationRequest._(
      analyticsConfiguration: analyticsConfiguration,
      bucket: bucket,
      expectedBucketOwner: expectedBucketOwner,
      id: id,
    );
  }

  factory PutBucketAnalyticsConfigurationRequest.build(
      [void Function(PutBucketAnalyticsConfigurationRequestBuilder)
          updates]) = _$PutBucketAnalyticsConfigurationRequest;

  const PutBucketAnalyticsConfigurationRequest._();

  factory PutBucketAnalyticsConfigurationRequest.fromRequest(
    _i2.AnalyticsConfiguration payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketAnalyticsConfigurationRequest.build((b) {
        b.analyticsConfiguration.replace(payload);
        if (request.headers['x-amz-expected-bucket-owner'] != null) {
          b.expectedBucketOwner =
              request.headers['x-amz-expected-bucket-owner']!;
        }
        if (request.queryParameters['id'] != null) {
          b.id = request.queryParameters['id']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    PutBucketAnalyticsConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketAnalyticsConfigurationRequestBuilder b) {}

  /// The configuration and any analyses for the analytics filter.
  _i2.AnalyticsConfiguration get analyticsConfiguration;

  /// The name of the bucket to which an analytics configuration is stored.
  String get bucket;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;

  /// The ID that identifies the analytics configuration.
  String get id;
  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
    }
    throw _i1.MissingLabelException(
      this,
      key,
    );
  }

  @override
  _i2.AnalyticsConfiguration getPayload() => analyticsConfiguration;
  @override
  List<Object?> get props => [
        analyticsConfiguration,
        bucket,
        expectedBucketOwner,
        id,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutBucketAnalyticsConfigurationRequest');
    helper.add(
      'analyticsConfiguration',
      analyticsConfiguration,
    );
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'expectedBucketOwner',
      expectedBucketOwner,
    );
    helper.add(
      'id',
      id,
    );
    return helper.toString();
  }
}

class PutBucketAnalyticsConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<_i2.AnalyticsConfiguration> {
  const PutBucketAnalyticsConfigurationRequestRestXmlSerializer()
      : super('PutBucketAnalyticsConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketAnalyticsConfigurationRequest,
        _$PutBucketAnalyticsConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.AnalyticsConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.AnalyticsConfigurationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Id':
          result.id = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Filter':
          if (value != null) {
            result.filter = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.AnalyticsFilter),
            ) as _i4.AnalyticsFilter);
          }
          break;
        case 'StorageClassAnalysis':
          result.storageClassAnalysis.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.StorageClassAnalysis),
          ) as _i5.StorageClassAnalysis));
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
    final payload = object is PutBucketAnalyticsConfigurationRequest
        ? object.getPayload()
        : (object as _i2.AnalyticsConfiguration);
    final result = <Object?>[
      const _i1.XmlElementName(
        'AnalyticsConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('Id'))
      ..add(serializers.serialize(
        payload.id,
        specifiedType: const FullType(String),
      ));
    if (payload.filter != null) {
      result
        ..add(const _i1.XmlElementName('Filter'))
        ..add(serializers.serialize(
          payload.filter!,
          specifiedType: const FullType(_i4.AnalyticsFilter),
        ));
    }
    result
      ..add(const _i1.XmlElementName('StorageClassAnalysis'))
      ..add(serializers.serialize(
        payload.storageClassAnalysis,
        specifiedType: const FullType(_i5.StorageClassAnalysis),
      ));
    return result;
  }
}
