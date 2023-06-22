// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    required String bucket,
    required String id,
    required _i2.AnalyticsConfiguration analyticsConfiguration,
    String? expectedBucketOwner,
  }) {
    return _$PutBucketAnalyticsConfigurationRequest._(
      bucket: bucket,
      id: id,
      analyticsConfiguration: analyticsConfiguration,
      expectedBucketOwner: expectedBucketOwner,
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

  static const List<_i1.SmithySerializer<_i2.AnalyticsConfiguration>>
      serializers = [PutBucketAnalyticsConfigurationRequestRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketAnalyticsConfigurationRequestBuilder b) {}

  /// The name of the bucket to which an analytics configuration is stored.
  String get bucket;

  /// The ID that identifies the analytics configuration.
  String get id;

  /// The configuration and any analyses for the analytics filter.
  _i2.AnalyticsConfiguration get analyticsConfiguration;

  /// The account ID of the expected bucket owner. If the bucket is owned by a different account, the request fails with the HTTP status code `403 Forbidden` (access denied).
  String? get expectedBucketOwner;
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
        bucket,
        id,
        analyticsConfiguration,
        expectedBucketOwner,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('PutBucketAnalyticsConfigurationRequest')
          ..add(
            'bucket',
            bucket,
          )
          ..add(
            'id',
            id,
          )
          ..add(
            'analyticsConfiguration',
            analyticsConfiguration,
          )
          ..add(
            'expectedBucketOwner',
            expectedBucketOwner,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Filter':
          result.filter = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.AnalyticsFilter),
          ) as _i4.AnalyticsFilter);
        case 'StorageClassAnalysis':
          result.storageClassAnalysis.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.StorageClassAnalysis),
          ) as _i5.StorageClassAnalysis));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    _i2.AnalyticsConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'AnalyticsConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final _i2.AnalyticsConfiguration(:id, :filter, :storageClassAnalysis) =
        object;
    result$
      ..add(const _i1.XmlElementName('Id'))
      ..add(serializers.serialize(
        id,
        specifiedType: const FullType(String),
      ));
    if (filter != null) {
      result$
        ..add(const _i1.XmlElementName('Filter'))
        ..add(serializers.serialize(
          filter,
          specifiedType: const FullType(_i4.AnalyticsFilter),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('StorageClassAnalysis'))
      ..add(serializers.serialize(
        storageClassAnalysis,
        specifiedType: const FullType(_i5.StorageClassAnalysis),
      ));
    return result$;
  }
}
