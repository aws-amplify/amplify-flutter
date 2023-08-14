// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_network_insights_paths_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_path.dart';

part 'describe_network_insights_paths_result.g.dart';

abstract class DescribeNetworkInsightsPathsResult
    with
        _i1.AWSEquatable<DescribeNetworkInsightsPathsResult>
    implements
        Built<DescribeNetworkInsightsPathsResult,
            DescribeNetworkInsightsPathsResultBuilder> {
  factory DescribeNetworkInsightsPathsResult({
    List<NetworkInsightsPath>? networkInsightsPaths,
    String? nextToken,
  }) {
    return _$DescribeNetworkInsightsPathsResult._(
      networkInsightsPaths: networkInsightsPaths == null
          ? null
          : _i2.BuiltList(networkInsightsPaths),
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkInsightsPathsResult.build(
          [void Function(DescribeNetworkInsightsPathsResultBuilder) updates]) =
      _$DescribeNetworkInsightsPathsResult;

  const DescribeNetworkInsightsPathsResult._();

  /// Constructs a [DescribeNetworkInsightsPathsResult] from a [payload] and [response].
  factory DescribeNetworkInsightsPathsResult.fromResponse(
    DescribeNetworkInsightsPathsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeNetworkInsightsPathsResult>>
      serializers = [DescribeNetworkInsightsPathsResultEc2QuerySerializer()];

  /// Information about the paths.
  _i2.BuiltList<NetworkInsightsPath>? get networkInsightsPaths;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkInsightsPaths,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeNetworkInsightsPathsResult')
          ..add(
            'networkInsightsPaths',
            networkInsightsPaths,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeNetworkInsightsPathsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeNetworkInsightsPathsResult> {
  const DescribeNetworkInsightsPathsResultEc2QuerySerializer()
      : super('DescribeNetworkInsightsPathsResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInsightsPathsResult,
        _$DescribeNetworkInsightsPathsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInsightsPathsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInsightsPathsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsPathSet':
          result.networkInsightsPaths.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(NetworkInsightsPath)],
            ),
          ) as _i2.BuiltList<NetworkInsightsPath>));
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
    DescribeNetworkInsightsPathsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeNetworkInsightsPathsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkInsightsPathsResult(
      :networkInsightsPaths,
      :nextToken
    ) = object;
    if (networkInsightsPaths != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInsightsPathSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInsightsPaths,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(NetworkInsightsPath)],
          ),
        ));
    }
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
