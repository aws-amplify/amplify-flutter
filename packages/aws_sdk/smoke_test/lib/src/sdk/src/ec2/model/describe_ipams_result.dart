// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_ipams_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/ipam.dart';

part 'describe_ipams_result.g.dart';

abstract class DescribeIpamsResult
    with _i1.AWSEquatable<DescribeIpamsResult>
    implements Built<DescribeIpamsResult, DescribeIpamsResultBuilder> {
  factory DescribeIpamsResult({
    String? nextToken,
    List<Ipam>? ipams,
  }) {
    return _$DescribeIpamsResult._(
      nextToken: nextToken,
      ipams: ipams == null ? null : _i2.BuiltList(ipams),
    );
  }

  factory DescribeIpamsResult.build(
          [void Function(DescribeIpamsResultBuilder) updates]) =
      _$DescribeIpamsResult;

  const DescribeIpamsResult._();

  /// Constructs a [DescribeIpamsResult] from a [payload] and [response].
  factory DescribeIpamsResult.fromResponse(
    DescribeIpamsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeIpamsResult>> serializers = [
    DescribeIpamsResultEc2QuerySerializer()
  ];

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;

  /// Information about the IPAMs.
  _i2.BuiltList<Ipam>? get ipams;
  @override
  List<Object?> get props => [
        nextToken,
        ipams,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeIpamsResult')
      ..add(
        'nextToken',
        nextToken,
      )
      ..add(
        'ipams',
        ipams,
      );
    return helper.toString();
  }
}

class DescribeIpamsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeIpamsResult> {
  const DescribeIpamsResultEc2QuerySerializer() : super('DescribeIpamsResult');

  @override
  Iterable<Type> get types => const [
        DescribeIpamsResult,
        _$DescribeIpamsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeIpamsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeIpamsResultBuilder();
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
        case 'ipamSet':
          result.ipams.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Ipam)],
            ),
          ) as _i2.BuiltList<Ipam>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeIpamsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeIpamsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeIpamsResult(:nextToken, :ipams) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (ipams != null) {
      result$
        ..add(const _i3.XmlElementName('IpamSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          ipams,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Ipam)],
          ),
        ));
    }
    return result$;
  }
}
