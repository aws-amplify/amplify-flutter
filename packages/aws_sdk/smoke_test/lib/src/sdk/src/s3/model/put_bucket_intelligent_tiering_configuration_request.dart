// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.put_bucket_intelligent_tiering_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i7;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_configuration.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_filter.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_status.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/tiering.dart' as _i6;

part 'put_bucket_intelligent_tiering_configuration_request.g.dart';

abstract class PutBucketIntelligentTieringConfigurationRequest
    with
        _i1.HttpInput<_i2.IntelligentTieringConfiguration>,
        _i3.AWSEquatable<PutBucketIntelligentTieringConfigurationRequest>
    implements
        Built<PutBucketIntelligentTieringConfigurationRequest,
            PutBucketIntelligentTieringConfigurationRequestBuilder>,
        _i1.HasPayload<_i2.IntelligentTieringConfiguration> {
  factory PutBucketIntelligentTieringConfigurationRequest({
    required String bucket,
    required String id,
    required _i2.IntelligentTieringConfiguration
        intelligentTieringConfiguration,
  }) {
    return _$PutBucketIntelligentTieringConfigurationRequest._(
      bucket: bucket,
      id: id,
      intelligentTieringConfiguration: intelligentTieringConfiguration,
    );
  }

  factory PutBucketIntelligentTieringConfigurationRequest.build(
      [void Function(PutBucketIntelligentTieringConfigurationRequestBuilder)
          updates]) = _$PutBucketIntelligentTieringConfigurationRequest;

  const PutBucketIntelligentTieringConfigurationRequest._();

  factory PutBucketIntelligentTieringConfigurationRequest.fromRequest(
    _i2.IntelligentTieringConfiguration payload,
    _i3.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      PutBucketIntelligentTieringConfigurationRequest.build((b) {
        b.intelligentTieringConfiguration.replace(payload);
        if (request.queryParameters['id'] != null) {
          b.id = request.queryParameters['id']!;
        }
        if (labels['bucket'] != null) {
          b.bucket = labels['bucket']!;
        }
      });

  static const List<_i1.SmithySerializer> serializers = [
    PutBucketIntelligentTieringConfigurationRequestRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(PutBucketIntelligentTieringConfigurationRequestBuilder b) {}

  /// The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.
  String get bucket;

  /// The ID used to identify the S3 Intelligent-Tiering configuration.
  String get id;

  /// Container for S3 Intelligent-Tiering configuration.
  _i2.IntelligentTieringConfiguration get intelligentTieringConfiguration;
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
  _i2.IntelligentTieringConfiguration getPayload() =>
      intelligentTieringConfiguration;
  @override
  List<Object?> get props => [
        bucket,
        id,
        intelligentTieringConfiguration,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'PutBucketIntelligentTieringConfigurationRequest');
    helper.add(
      'bucket',
      bucket,
    );
    helper.add(
      'id',
      id,
    );
    helper.add(
      'intelligentTieringConfiguration',
      intelligentTieringConfiguration,
    );
    return helper.toString();
  }
}

class PutBucketIntelligentTieringConfigurationRequestRestXmlSerializer
    extends _i1
        .StructuredSmithySerializer<_i2.IntelligentTieringConfiguration> {
  const PutBucketIntelligentTieringConfigurationRequestRestXmlSerializer()
      : super('PutBucketIntelligentTieringConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        PutBucketIntelligentTieringConfigurationRequest,
        _$PutBucketIntelligentTieringConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  _i2.IntelligentTieringConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = _i2.IntelligentTieringConfigurationBuilder();
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
            result.filter.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i4.IntelligentTieringFilter),
            ) as _i4.IntelligentTieringFilter));
          }
          break;
        case 'Status':
          result.status = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i5.IntelligentTieringStatus),
          ) as _i5.IntelligentTieringStatus);
          break;
        case 'Tiering':
          result.tierings.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i6.Tiering),
          ) as _i6.Tiering));
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
    final payload = object is PutBucketIntelligentTieringConfigurationRequest
        ? object.getPayload()
        : (object as _i2.IntelligentTieringConfiguration);
    final result = <Object?>[
      const _i1.XmlElementName(
        'IntelligentTieringConfiguration',
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
          specifiedType: const FullType(_i4.IntelligentTieringFilter),
        ));
    }
    result
      ..add(const _i1.XmlElementName('Status'))
      ..add(serializers.serialize(
        payload.status,
        specifiedType: const FullType.nullable(_i5.IntelligentTieringStatus),
      ));
    result.addAll(
        const _i1.XmlBuiltListSerializer(memberName: 'Tiering').serialize(
      serializers,
      payload.tierings,
      specifiedType: const FullType.nullable(
        _i7.BuiltList,
        [FullType(_i6.Tiering)],
      ),
    ));
    return result;
  }
}
