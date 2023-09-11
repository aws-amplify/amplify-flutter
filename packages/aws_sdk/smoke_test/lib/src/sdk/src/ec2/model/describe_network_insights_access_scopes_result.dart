// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_network_insights_access_scopes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/network_insights_access_scope.dart';

part 'describe_network_insights_access_scopes_result.g.dart';

abstract class DescribeNetworkInsightsAccessScopesResult
    with
        _i1.AWSEquatable<DescribeNetworkInsightsAccessScopesResult>
    implements
        Built<DescribeNetworkInsightsAccessScopesResult,
            DescribeNetworkInsightsAccessScopesResultBuilder> {
  factory DescribeNetworkInsightsAccessScopesResult({
    List<NetworkInsightsAccessScope>? networkInsightsAccessScopes,
    String? nextToken,
  }) {
    return _$DescribeNetworkInsightsAccessScopesResult._(
      networkInsightsAccessScopes: networkInsightsAccessScopes == null
          ? null
          : _i2.BuiltList(networkInsightsAccessScopes),
      nextToken: nextToken,
    );
  }

  factory DescribeNetworkInsightsAccessScopesResult.build(
      [void Function(DescribeNetworkInsightsAccessScopesResultBuilder)
          updates]) = _$DescribeNetworkInsightsAccessScopesResult;

  const DescribeNetworkInsightsAccessScopesResult._();

  /// Constructs a [DescribeNetworkInsightsAccessScopesResult] from a [payload] and [response].
  factory DescribeNetworkInsightsAccessScopesResult.fromResponse(
    DescribeNetworkInsightsAccessScopesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeNetworkInsightsAccessScopesResult>>
      serializers = [
    DescribeNetworkInsightsAccessScopesResultEc2QuerySerializer()
  ];

  /// The Network Access Scopes.
  _i2.BuiltList<NetworkInsightsAccessScope>? get networkInsightsAccessScopes;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        networkInsightsAccessScopes,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeNetworkInsightsAccessScopesResult')
          ..add(
            'networkInsightsAccessScopes',
            networkInsightsAccessScopes,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeNetworkInsightsAccessScopesResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeNetworkInsightsAccessScopesResult> {
  const DescribeNetworkInsightsAccessScopesResultEc2QuerySerializer()
      : super('DescribeNetworkInsightsAccessScopesResult');

  @override
  Iterable<Type> get types => const [
        DescribeNetworkInsightsAccessScopesResult,
        _$DescribeNetworkInsightsAccessScopesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeNetworkInsightsAccessScopesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeNetworkInsightsAccessScopesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'networkInsightsAccessScopeSet':
          result.networkInsightsAccessScopes
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(NetworkInsightsAccessScope)],
            ),
          ) as _i2.BuiltList<NetworkInsightsAccessScope>));
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
    DescribeNetworkInsightsAccessScopesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeNetworkInsightsAccessScopesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeNetworkInsightsAccessScopesResult(
      :networkInsightsAccessScopes,
      :nextToken
    ) = object;
    if (networkInsightsAccessScopes != null) {
      result$
        ..add(const _i3.XmlElementName('NetworkInsightsAccessScopeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          networkInsightsAccessScopes,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(NetworkInsightsAccessScope)],
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
