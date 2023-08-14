// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_verified_access_trust_providers_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_trust_provider.dart';

part 'describe_verified_access_trust_providers_result.g.dart';

abstract class DescribeVerifiedAccessTrustProvidersResult
    with
        _i1.AWSEquatable<DescribeVerifiedAccessTrustProvidersResult>
    implements
        Built<DescribeVerifiedAccessTrustProvidersResult,
            DescribeVerifiedAccessTrustProvidersResultBuilder> {
  factory DescribeVerifiedAccessTrustProvidersResult({
    List<VerifiedAccessTrustProvider>? verifiedAccessTrustProviders,
    String? nextToken,
  }) {
    return _$DescribeVerifiedAccessTrustProvidersResult._(
      verifiedAccessTrustProviders: verifiedAccessTrustProviders == null
          ? null
          : _i2.BuiltList(verifiedAccessTrustProviders),
      nextToken: nextToken,
    );
  }

  factory DescribeVerifiedAccessTrustProvidersResult.build(
      [void Function(DescribeVerifiedAccessTrustProvidersResultBuilder)
          updates]) = _$DescribeVerifiedAccessTrustProvidersResult;

  const DescribeVerifiedAccessTrustProvidersResult._();

  /// Constructs a [DescribeVerifiedAccessTrustProvidersResult] from a [payload] and [response].
  factory DescribeVerifiedAccessTrustProvidersResult.fromResponse(
    DescribeVerifiedAccessTrustProvidersResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<
          _i3.SmithySerializer<DescribeVerifiedAccessTrustProvidersResult>>
      serializers = [
    DescribeVerifiedAccessTrustProvidersResultEc2QuerySerializer()
  ];

  /// The IDs of the Verified Access trust providers.
  _i2.BuiltList<VerifiedAccessTrustProvider>? get verifiedAccessTrustProviders;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        verifiedAccessTrustProviders,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'DescribeVerifiedAccessTrustProvidersResult')
      ..add(
        'verifiedAccessTrustProviders',
        verifiedAccessTrustProviders,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeVerifiedAccessTrustProvidersResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeVerifiedAccessTrustProvidersResult> {
  const DescribeVerifiedAccessTrustProvidersResultEc2QuerySerializer()
      : super('DescribeVerifiedAccessTrustProvidersResult');

  @override
  Iterable<Type> get types => const [
        DescribeVerifiedAccessTrustProvidersResult,
        _$DescribeVerifiedAccessTrustProvidersResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVerifiedAccessTrustProvidersResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVerifiedAccessTrustProvidersResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'verifiedAccessTrustProviderSet':
          result.verifiedAccessTrustProviders
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VerifiedAccessTrustProvider)],
            ),
          ) as _i2.BuiltList<VerifiedAccessTrustProvider>));
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
    DescribeVerifiedAccessTrustProvidersResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVerifiedAccessTrustProvidersResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVerifiedAccessTrustProvidersResult(
      :verifiedAccessTrustProviders,
      :nextToken
    ) = object;
    if (verifiedAccessTrustProviders != null) {
      result$
        ..add(const _i3.XmlElementName('VerifiedAccessTrustProviderSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          verifiedAccessTrustProviders,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(VerifiedAccessTrustProvider)],
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
