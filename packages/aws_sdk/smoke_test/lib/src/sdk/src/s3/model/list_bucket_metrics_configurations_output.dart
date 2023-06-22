// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.s3.model.list_bucket_metrics_configurations_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/metrics_configuration.dart'
    as _i2;

part 'list_bucket_metrics_configurations_output.g.dart';

abstract class ListBucketMetricsConfigurationsOutput
    with
        _i1.AWSEquatable<ListBucketMetricsConfigurationsOutput>
    implements
        Built<ListBucketMetricsConfigurationsOutput,
            ListBucketMetricsConfigurationsOutputBuilder> {
  factory ListBucketMetricsConfigurationsOutput({
    bool? isTruncated,
    String? continuationToken,
    String? nextContinuationToken,
    List<_i2.MetricsConfiguration>? metricsConfigurationList,
  }) {
    return _$ListBucketMetricsConfigurationsOutput._(
      isTruncated: isTruncated,
      continuationToken: continuationToken,
      nextContinuationToken: nextContinuationToken,
      metricsConfigurationList: metricsConfigurationList == null
          ? null
          : _i3.BuiltList(metricsConfigurationList),
    );
  }

  factory ListBucketMetricsConfigurationsOutput.build(
      [void Function(ListBucketMetricsConfigurationsOutputBuilder)
          updates]) = _$ListBucketMetricsConfigurationsOutput;

  const ListBucketMetricsConfigurationsOutput._();

  /// Constructs a [ListBucketMetricsConfigurationsOutput] from a [payload] and [response].
  factory ListBucketMetricsConfigurationsOutput.fromResponse(
    ListBucketMetricsConfigurationsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer<ListBucketMetricsConfigurationsOutput>>
      serializers = [ListBucketMetricsConfigurationsOutputRestXmlSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListBucketMetricsConfigurationsOutputBuilder b) {}

  /// Indicates whether the returned list of metrics configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent request.
  bool? get isTruncated;

  /// The marker that is used as a starting point for this metrics configuration list response. This value is present if it was sent in the request.
  String? get continuationToken;

  /// The marker used to continue a metrics configuration listing that has been truncated. Use the `NextContinuationToken` from a previously truncated list response to continue the listing. The continuation token is an opaque value that Amazon S3 understands.
  String? get nextContinuationToken;

  /// The list of metrics configurations for a bucket.
  _i3.BuiltList<_i2.MetricsConfiguration>? get metricsConfigurationList;
  @override
  List<Object?> get props => [
        isTruncated,
        continuationToken,
        nextContinuationToken,
        metricsConfigurationList,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListBucketMetricsConfigurationsOutput')
          ..add(
            'isTruncated',
            isTruncated,
          )
          ..add(
            'continuationToken',
            continuationToken,
          )
          ..add(
            'nextContinuationToken',
            nextContinuationToken,
          )
          ..add(
            'metricsConfigurationList',
            metricsConfigurationList,
          );
    return helper.toString();
  }
}

class ListBucketMetricsConfigurationsOutputRestXmlSerializer extends _i4
    .StructuredSmithySerializer<ListBucketMetricsConfigurationsOutput> {
  const ListBucketMetricsConfigurationsOutputRestXmlSerializer()
      : super('ListBucketMetricsConfigurationsOutput');

  @override
  Iterable<Type> get types => const [
        ListBucketMetricsConfigurationsOutput,
        _$ListBucketMetricsConfigurationsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListBucketMetricsConfigurationsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListBucketMetricsConfigurationsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ContinuationToken':
          result.continuationToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'IsTruncated':
          result.isTruncated = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'MetricsConfiguration':
          result.metricsConfigurationList.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.MetricsConfiguration),
          ) as _i2.MetricsConfiguration));
        case 'NextContinuationToken':
          result.nextContinuationToken = (serializers.deserialize(
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
    ListBucketMetricsConfigurationsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListMetricsConfigurationsResult',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ListBucketMetricsConfigurationsOutput(
      :continuationToken,
      :isTruncated,
      :metricsConfigurationList,
      :nextContinuationToken
    ) = object;
    if (continuationToken != null) {
      result$
        ..add(const _i4.XmlElementName('ContinuationToken'))
        ..add(serializers.serialize(
          continuationToken,
          specifiedType: const FullType(String),
        ));
    }
    if (isTruncated != null) {
      result$
        ..add(const _i4.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          isTruncated,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (metricsConfigurationList != null) {
      result$.addAll(
          const _i4.XmlBuiltListSerializer(memberName: 'MetricsConfiguration')
              .serialize(
        serializers,
        metricsConfigurationList,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.MetricsConfiguration)],
        ),
      ));
    }
    if (nextContinuationToken != null) {
      result$
        ..add(const _i4.XmlElementName('NextContinuationToken'))
        ..add(serializers.serialize(
          nextContinuationToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
