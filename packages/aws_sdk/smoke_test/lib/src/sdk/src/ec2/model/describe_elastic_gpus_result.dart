// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_elastic_gpus_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/elastic_gpus.dart';

part 'describe_elastic_gpus_result.g.dart';

abstract class DescribeElasticGpusResult
    with _i1.AWSEquatable<DescribeElasticGpusResult>
    implements
        Built<DescribeElasticGpusResult, DescribeElasticGpusResultBuilder> {
  factory DescribeElasticGpusResult({
    List<ElasticGpus>? elasticGpuSet,
    int? maxResults,
    String? nextToken,
  }) {
    maxResults ??= 0;
    return _$DescribeElasticGpusResult._(
      elasticGpuSet:
          elasticGpuSet == null ? null : _i2.BuiltList(elasticGpuSet),
      maxResults: maxResults,
      nextToken: nextToken,
    );
  }

  factory DescribeElasticGpusResult.build(
          [void Function(DescribeElasticGpusResultBuilder) updates]) =
      _$DescribeElasticGpusResult;

  const DescribeElasticGpusResult._();

  /// Constructs a [DescribeElasticGpusResult] from a [payload] and [response].
  factory DescribeElasticGpusResult.fromResponse(
    DescribeElasticGpusResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeElasticGpusResult>>
      serializers = [DescribeElasticGpusResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeElasticGpusResultBuilder b) {
    b.maxResults = 0;
  }

  /// Information about the Elastic Graphics accelerators.
  _i2.BuiltList<ElasticGpus>? get elasticGpuSet;

  /// The total number of items to return. If the total number of items available is more than the value specified in max-items then a Next-Token will be provided in the output that you can use to resume pagination.
  int get maxResults;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        elasticGpuSet,
        maxResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeElasticGpusResult')
      ..add(
        'elasticGpuSet',
        elasticGpuSet,
      )
      ..add(
        'maxResults',
        maxResults,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeElasticGpusResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeElasticGpusResult> {
  const DescribeElasticGpusResultEc2QuerySerializer()
      : super('DescribeElasticGpusResult');

  @override
  Iterable<Type> get types => const [
        DescribeElasticGpusResult,
        _$DescribeElasticGpusResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeElasticGpusResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeElasticGpusResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'elasticGpuSet':
          result.elasticGpuSet.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ElasticGpus)],
            ),
          ) as _i2.BuiltList<ElasticGpus>));
        case 'maxResults':
          result.maxResults = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
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
    DescribeElasticGpusResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeElasticGpusResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeElasticGpusResult(:elasticGpuSet, :maxResults, :nextToken) =
        object;
    if (elasticGpuSet != null) {
      result$
        ..add(const _i3.XmlElementName('ElasticGpuSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          elasticGpuSet,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ElasticGpus)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('MaxResults'))
      ..add(serializers.serialize(
        maxResults,
        specifiedType: const FullType(int),
      ));
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
