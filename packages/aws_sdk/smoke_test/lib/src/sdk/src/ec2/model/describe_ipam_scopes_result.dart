// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_ipam_scopes_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam_scope.dart';

part 'describe_ipam_scopes_result.g.dart';

abstract class DescribeIpamScopesResult
    with _i1.AWSEquatable<DescribeIpamScopesResult>
    implements
        Built<DescribeIpamScopesResult, DescribeIpamScopesResultBuilder> {
  factory DescribeIpamScopesResult({
    String? nextToken,
    List<IpamScope>? ipamScopes,
  }) {
    return _$DescribeIpamScopesResult._(
      nextToken: nextToken,
      ipamScopes: ipamScopes == null ? null : _i2.BuiltList(ipamScopes),
    );
  }

  factory DescribeIpamScopesResult.build(
          [void Function(DescribeIpamScopesResultBuilder) updates]) =
      _$DescribeIpamScopesResult;

  const DescribeIpamScopesResult._();

  /// Constructs a [DescribeIpamScopesResult] from a [payload] and [response].
  factory DescribeIpamScopesResult.fromResponse(
    DescribeIpamScopesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeIpamScopesResult>>
      serializers = [DescribeIpamScopesResultEc2QuerySerializer()];

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// The scopes you want information on.
  _i2.BuiltList<IpamScope>? get ipamScopes;
  @override
  List<Object?> get props => [
        nextToken,
        ipamScopes,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeIpamScopesResult')
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'ipamScopes',
        ipamScopes,
      );
    return helper.toString();
  }
}

class DescribeIpamScopesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeIpamScopesResult> {
  const DescribeIpamScopesResultEc2QuerySerializer()
      : super('DescribeIpamScopesResult');

  @override
  Iterable<Type> get types => const [
        DescribeIpamScopesResult,
        _$DescribeIpamScopesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpamScopesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpamScopesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nextToken':
          result.nextToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ipamScopeSet':
          result.ipamScopes.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(IpamScope)],
            ),
          ) as _i2.BuiltList<IpamScope>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeIpamScopesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeIpamScopesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIpamScopesResult(:nextToken, :ipamScopes) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (ipamScopes != null) {
      result$
        ..add(const _i3.XmlElementName('IpamScopeSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipamScopes,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(IpamScope)],
          ),
        ));
    }
    return result$;
  }
}
