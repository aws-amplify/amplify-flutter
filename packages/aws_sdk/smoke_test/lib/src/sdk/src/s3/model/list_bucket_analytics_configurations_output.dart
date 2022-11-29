// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

library smoke_test.s3.model.list_bucket_analytics_configurations_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/analytics_configuration.dart'
    as _i2;

part 'list_bucket_analytics_configurations_output.g.dart';

abstract class ListBucketAnalyticsConfigurationsOutput
    with
        _i1.AWSEquatable<ListBucketAnalyticsConfigurationsOutput>
    implements
        Built<ListBucketAnalyticsConfigurationsOutput,
            ListBucketAnalyticsConfigurationsOutputBuilder> {
  factory ListBucketAnalyticsConfigurationsOutput({
    List<_i2.AnalyticsConfiguration>? analyticsConfigurationList,
    String? continuationToken,
    bool? isTruncated,
    String? nextContinuationToken,
  }) {
    return _$ListBucketAnalyticsConfigurationsOutput._(
      analyticsConfigurationList: analyticsConfigurationList == null
          ? null
          : _i3.BuiltList(analyticsConfigurationList),
      continuationToken: continuationToken,
      isTruncated: isTruncated,
      nextContinuationToken: nextContinuationToken,
    );
  }

  factory ListBucketAnalyticsConfigurationsOutput.build(
      [void Function(ListBucketAnalyticsConfigurationsOutputBuilder)
          updates]) = _$ListBucketAnalyticsConfigurationsOutput;

  const ListBucketAnalyticsConfigurationsOutput._();

  /// Constructs a [ListBucketAnalyticsConfigurationsOutput] from a [payload] and [response].
  factory ListBucketAnalyticsConfigurationsOutput.fromResponse(
    ListBucketAnalyticsConfigurationsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListBucketAnalyticsConfigurationsOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListBucketAnalyticsConfigurationsOutputBuilder b) {}

  /// The list of analytics configurations for a bucket.
  _i3.BuiltList<_i2.AnalyticsConfiguration>? get analyticsConfigurationList;

  /// The marker that is used as a starting point for this analytics configuration list response. This value is present if it was sent in the request.
  String? get continuationToken;

  /// Indicates whether the returned list of analytics configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent request.
  bool? get isTruncated;

  /// `NextContinuationToken` is sent when `isTruncated` is true, which indicates that there are more analytics configurations to list. The next request must include this `NextContinuationToken`. The token is obfuscated and is not a usable value.
  String? get nextContinuationToken;
  @override
  List<Object?> get props => [
        analyticsConfigurationList,
        continuationToken,
        isTruncated,
        nextContinuationToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListBucketAnalyticsConfigurationsOutput');
    helper.add(
      'analyticsConfigurationList',
      analyticsConfigurationList,
    );
    helper.add(
      'continuationToken',
      continuationToken,
    );
    helper.add(
      'isTruncated',
      isTruncated,
    );
    helper.add(
      'nextContinuationToken',
      nextContinuationToken,
    );
    return helper.toString();
  }
}

class ListBucketAnalyticsConfigurationsOutputRestXmlSerializer extends _i4
    .StructuredSmithySerializer<ListBucketAnalyticsConfigurationsOutput> {
  const ListBucketAnalyticsConfigurationsOutputRestXmlSerializer()
      : super('ListBucketAnalyticsConfigurationsOutput');

  @override
  Iterable<Type> get types => const [
        ListBucketAnalyticsConfigurationsOutput,
        _$ListBucketAnalyticsConfigurationsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListBucketAnalyticsConfigurationsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListBucketAnalyticsConfigurationsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'AnalyticsConfiguration':
          if (value != null) {
            result.analyticsConfigurationList.add((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.AnalyticsConfiguration),
            ) as _i2.AnalyticsConfiguration));
          }
          break;
        case 'ContinuationToken':
          if (value != null) {
            result.continuationToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IsTruncated':
          if (value != null) {
            result.isTruncated = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
          }
          break;
        case 'NextContinuationToken':
          if (value != null) {
            result.nextContinuationToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
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
    final payload = (object as ListBucketAnalyticsConfigurationsOutput);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ListBucketAnalyticsConfigurationResult',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.analyticsConfigurationList != null) {
      result.addAll(
          const _i4.XmlBuiltListSerializer(memberName: 'AnalyticsConfiguration')
              .serialize(
        serializers,
        payload.analyticsConfigurationList!,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.AnalyticsConfiguration)],
        ),
      ));
    }
    if (payload.continuationToken != null) {
      result
        ..add(const _i4.XmlElementName('ContinuationToken'))
        ..add(serializers.serialize(
          payload.continuationToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.isTruncated != null) {
      result
        ..add(const _i4.XmlElementName('IsTruncated'))
        ..add(serializers.serialize(
          payload.isTruncated!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (payload.nextContinuationToken != null) {
      result
        ..add(const _i4.XmlElementName('NextContinuationToken'))
        ..add(serializers.serialize(
          payload.nextContinuationToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
