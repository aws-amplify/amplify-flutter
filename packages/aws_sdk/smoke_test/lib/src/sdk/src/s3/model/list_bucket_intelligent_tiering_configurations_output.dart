// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.list_bucket_intelligent_tiering_configurations_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/s3/model/intelligent_tiering_configuration.dart'
    as _i2;

part 'list_bucket_intelligent_tiering_configurations_output.g.dart';

abstract class ListBucketIntelligentTieringConfigurationsOutput
    with
        _i1.AWSEquatable<ListBucketIntelligentTieringConfigurationsOutput>
    implements
        Built<ListBucketIntelligentTieringConfigurationsOutput,
            ListBucketIntelligentTieringConfigurationsOutputBuilder> {
  factory ListBucketIntelligentTieringConfigurationsOutput({
    String? continuationToken,
    List<_i2.IntelligentTieringConfiguration>?
        intelligentTieringConfigurationList,
    bool? isTruncated,
    String? nextContinuationToken,
  }) {
    return _$ListBucketIntelligentTieringConfigurationsOutput._(
      continuationToken: continuationToken,
      intelligentTieringConfigurationList:
          intelligentTieringConfigurationList == null
              ? null
              : _i3.BuiltList(intelligentTieringConfigurationList),
      isTruncated: isTruncated,
      nextContinuationToken: nextContinuationToken,
    );
  }

  factory ListBucketIntelligentTieringConfigurationsOutput.build(
      [void Function(ListBucketIntelligentTieringConfigurationsOutputBuilder)
          updates]) = _$ListBucketIntelligentTieringConfigurationsOutput;

  const ListBucketIntelligentTieringConfigurationsOutput._();

  /// Constructs a [ListBucketIntelligentTieringConfigurationsOutput] from a [payload] and [response].
  factory ListBucketIntelligentTieringConfigurationsOutput.fromResponse(
    ListBucketIntelligentTieringConfigurationsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i4.SmithySerializer> serializers = [
    ListBucketIntelligentTieringConfigurationsOutputRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      ListBucketIntelligentTieringConfigurationsOutputBuilder b) {}

  /// The `ContinuationToken` that represents a placeholder from where this request should begin.
  String? get continuationToken;

  /// The list of S3 Intelligent-Tiering configurations for a bucket.
  _i3.BuiltList<_i2.IntelligentTieringConfiguration>?
      get intelligentTieringConfigurationList;

  /// Indicates whether the returned list of analytics configurations is complete. A value of `true` indicates that the list is not complete and the `NextContinuationToken` will be provided for a subsequent request.
  bool? get isTruncated;

  /// The marker used to continue this inventory configuration listing. Use the `NextContinuationToken` from this response to continue the listing in a subsequent request. The continuation token is an opaque value that Amazon S3 understands.
  String? get nextContinuationToken;
  @override
  List<Object?> get props => [
        continuationToken,
        intelligentTieringConfigurationList,
        isTruncated,
        nextContinuationToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ListBucketIntelligentTieringConfigurationsOutput');
    helper.add(
      'continuationToken',
      continuationToken,
    );
    helper.add(
      'intelligentTieringConfigurationList',
      intelligentTieringConfigurationList,
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

class ListBucketIntelligentTieringConfigurationsOutputRestXmlSerializer
    extends _i4.StructuredSmithySerializer<
        ListBucketIntelligentTieringConfigurationsOutput> {
  const ListBucketIntelligentTieringConfigurationsOutputRestXmlSerializer()
      : super('ListBucketIntelligentTieringConfigurationsOutput');

  @override
  Iterable<Type> get types => const [
        ListBucketIntelligentTieringConfigurationsOutput,
        _$ListBucketIntelligentTieringConfigurationsOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  ListBucketIntelligentTieringConfigurationsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListBucketIntelligentTieringConfigurationsOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ContinuationToken':
          if (value != null) {
            result.continuationToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'IntelligentTieringConfiguration':
          if (value != null) {
            result.intelligentTieringConfigurationList
                .add((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.IntelligentTieringConfiguration),
            ) as _i2.IntelligentTieringConfiguration));
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
    final payload =
        (object as ListBucketIntelligentTieringConfigurationsOutput);
    final result = <Object?>[
      const _i4.XmlElementName(
        'ListBucketIntelligentTieringConfigurationsOutput',
        _i4.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    if (payload.continuationToken != null) {
      result
        ..add(const _i4.XmlElementName('ContinuationToken'))
        ..add(serializers.serialize(
          payload.continuationToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.intelligentTieringConfigurationList != null) {
      result.addAll(const _i4.XmlBuiltListSerializer(
              memberName: 'IntelligentTieringConfiguration')
          .serialize(
        serializers,
        payload.intelligentTieringConfigurationList!,
        specifiedType: const FullType.nullable(
          _i3.BuiltList,
          [FullType(_i2.IntelligentTieringConfiguration)],
        ),
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
