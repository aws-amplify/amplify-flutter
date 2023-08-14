// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_verified_access_endpoints_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_endpoint.dart';

part 'describe_verified_access_endpoints_result.g.dart';

abstract class DescribeVerifiedAccessEndpointsResult
    with
        _i1.AWSEquatable<DescribeVerifiedAccessEndpointsResult>
    implements
        Built<DescribeVerifiedAccessEndpointsResult,
            DescribeVerifiedAccessEndpointsResultBuilder> {
  factory DescribeVerifiedAccessEndpointsResult({
    List<VerifiedAccessEndpoint>? verifiedAccessEndpoints,
    String? nextToken,
  }) {
    return _$DescribeVerifiedAccessEndpointsResult._(
      verifiedAccessEndpoints: verifiedAccessEndpoints == null
          ? null
          : _i2.BuiltList(verifiedAccessEndpoints),
      nextToken: nextToken,
    );
  }

  factory DescribeVerifiedAccessEndpointsResult.build(
      [void Function(DescribeVerifiedAccessEndpointsResultBuilder)
          updates]) = _$DescribeVerifiedAccessEndpointsResult;

  const DescribeVerifiedAccessEndpointsResult._();

  /// Constructs a [DescribeVerifiedAccessEndpointsResult] from a [payload] and [response].
  factory DescribeVerifiedAccessEndpointsResult.fromResponse(
    DescribeVerifiedAccessEndpointsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeVerifiedAccessEndpointsResult>>
      serializers = [DescribeVerifiedAccessEndpointsResultEc2QuerySerializer()];

  /// The ID of the Verified Access endpoint.
  _i2.BuiltList<VerifiedAccessEndpoint>? get verifiedAccessEndpoints;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        verifiedAccessEndpoints,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVerifiedAccessEndpointsResult')
          ..add(
            'verifiedAccessEndpoints',
            verifiedAccessEndpoints,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeVerifiedAccessEndpointsResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeVerifiedAccessEndpointsResult> {
  const DescribeVerifiedAccessEndpointsResultEc2QuerySerializer()
      : super('DescribeVerifiedAccessEndpointsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVerifiedAccessEndpointsResult,
        _$DescribeVerifiedAccessEndpointsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVerifiedAccessEndpointsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVerifiedAccessEndpointsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'verifiedAccessEndpointSet':
          result.verifiedAccessEndpoints
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VerifiedAccessEndpoint)],
            ),
          ) as _i2.BuiltList<VerifiedAccessEndpoint>));
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
    DescribeVerifiedAccessEndpointsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVerifiedAccessEndpointsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVerifiedAccessEndpointsResult(
      :verifiedAccessEndpoints,
      :nextToken
    ) = object;
    if (verifiedAccessEndpoints != null) {
      result$
        ..add(const _i3.XmlElementName('VerifiedAccessEndpointSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          verifiedAccessEndpoints,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(VerifiedAccessEndpoint)],
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
