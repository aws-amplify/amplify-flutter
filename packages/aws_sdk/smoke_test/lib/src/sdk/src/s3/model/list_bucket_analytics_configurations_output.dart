// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

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
    bool? isTruncated,
    String? continuationToken,
    String? nextContinuationToken,
    List<_i2.AnalyticsConfiguration>? analyticsConfigurationList,
  }) {
    return _$ListBucketAnalyticsConfigurationsOutput._(
      isTruncated: isTruncated,
      continuationToken: continuationToken,
      nextContinuationToken: nextContinuationToken,
      analyticsConfigurationList: analyticsConfigurationList == null
          ? null
          : _i3.BuiltList(analyticsConfigurationList),
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

  static const List<
          _i4.SmithySerializer<ListBucketAnalyticsConfigurationsOutput>>
      serializers = [
    ListBucketAnalyticsConfigurationsOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ListBucketAnalyticsConfigurationsOutputBuilder b) {}

  /// Indicates whether the returned list of analytics configurations is complete. A value of true indicates that the list is not complete and the NextContinuationToken will be provided for a subsequent request.
  bool? get isTruncated;

  /// The marker that is used as a starting point for this analytics configuration list response. This value is present if it was sent in the request.
  String? get continuationToken;

  /// `NextContinuationToken` is sent when `isTruncated` is true, which indicates that there are more analytics configurations to list. The next request must include this `NextContinuationToken`. The token is obfuscated and is not a usable value.
  String? get nextContinuationToken;

  /// The list of analytics configurations for a bucket.
  _i3.BuiltList<_i2.AnalyticsConfiguration>? get analyticsConfigurationList;
  @override
  List<Object?> get props => [
        isTruncated,
        continuationToken,
        nextContinuationToken,
        analyticsConfigurationList,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListBucketAnalyticsConfigurationsOutput')
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
            'analyticsConfigurationList',
            analyticsConfigurationList,
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
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AnalyticsConfiguration':
          result.analyticsConfigurationList.add((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.AnalyticsConfiguration),
          ) as _i2.AnalyticsConfiguration));
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
    ListBucketAnalyticsConfigurationsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i4.XmlElementName(
        'ListBucketAnalyticsConfigurationResult',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final ListBucketAnalyticsConfigurationsOutput(
      :analyticsConfigurationList,
      :continuationToken,
      :isTruncated,
      :nextContinuationToken
    ) = object;
    if (analyticsConfigurationList != null) {
      result$.addAll(
          const _i4.XmlBuiltListSerializer(memberName: 'AnalyticsConfiguration')
              .serialize(
        serializers,
        analyticsConfigurationList,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.AnalyticsConfiguration)],
        ),
      ));
    }
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
