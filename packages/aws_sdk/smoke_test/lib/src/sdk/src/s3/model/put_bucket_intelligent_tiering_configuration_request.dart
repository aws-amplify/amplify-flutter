// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.put_bucket_intelligent_tiering_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_configuration.dart';
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_filter.dart';
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_status.dart';
import 'package:smoke_test/src/sdk/src/s3/model/tiering.dart';

part 'put_bucket_intelligent_tiering_configuration_request.g.dart';

abstract class PutBucketIntelligentTieringConfigurationRequest
    with
        _i1.HttpInput<IntelligentTieringConfiguration>,
        _i2.AWSEquatable<PutBucketIntelligentTieringConfigurationRequest>
    implements
        Built<PutBucketIntelligentTieringConfigurationRequest,
            PutBucketIntelligentTieringConfigurationRequestBuilder>,
        _i1.HasPayload<IntelligentTieringConfiguration> {
  factory PutBucketIntelligentTieringConfigurationRequest({
    required String bucket,
    required String id,
    required IntelligentTieringConfiguration intelligentTieringConfiguration,
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
    IntelligentTieringConfiguration payload,
    _i2.AWSBaseHttpRequest request, {
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

  static const List<_i1.SmithySerializer<IntelligentTieringConfiguration>>
      serializers = [
    PutBucketIntelligentTieringConfigurationRequestRestXmlSerializer()
  ];

  /// The name of the Amazon S3 bucket whose configuration you want to modify or retrieve.
  String get bucket;

  /// The ID used to identify the S3 Intelligent-Tiering configuration.
  String get id;

  /// Container for S3 Intelligent-Tiering configuration.
  IntelligentTieringConfiguration get intelligentTieringConfiguration;
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
  IntelligentTieringConfiguration getPayload() =>
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
        'PutBucketIntelligentTieringConfigurationRequest')
      ..add(
        'bucket',
        bucket,
      )
      ..add(
        'id',
        id,
      )
      ..add(
        'intelligentTieringConfiguration',
        intelligentTieringConfiguration,
      );
    return helper.toString();
  }
}

class PutBucketIntelligentTieringConfigurationRequestRestXmlSerializer
    extends _i1.StructuredSmithySerializer<IntelligentTieringConfiguration> {
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
  IntelligentTieringConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntelligentTieringConfigurationBuilder();
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
          result.filter.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligentTieringFilter),
          ) as IntelligentTieringFilter));
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(IntelligentTieringStatus),
          ) as IntelligentTieringStatus);
        case 'Tiering':
          result.tierings.add((serializers.deserialize(
            value,
            specifiedType: const FullType(Tiering),
          ) as Tiering));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    IntelligentTieringConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'IntelligentTieringConfiguration',
        _i1.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final IntelligentTieringConfiguration(:id, :filter, :status, :tierings) =
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
          specifiedType: const FullType(IntelligentTieringFilter),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType(IntelligentTieringStatus),
      ));
    result$.addAll(
        const _i1.XmlBuiltListSerializer(memberName: 'Tiering').serialize(
      serializers,
      tierings,
      specifiedType: const FullType(
        _i3.BuiltList,
        [FullType(Tiering)],
      ),
    ));
    return result$;
  }
}
