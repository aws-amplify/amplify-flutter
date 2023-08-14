// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_verified_access_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_instance.dart';

part 'describe_verified_access_instances_result.g.dart';

abstract class DescribeVerifiedAccessInstancesResult
    with
        _i1.AWSEquatable<DescribeVerifiedAccessInstancesResult>
    implements
        Built<DescribeVerifiedAccessInstancesResult,
            DescribeVerifiedAccessInstancesResultBuilder> {
  factory DescribeVerifiedAccessInstancesResult({
    List<VerifiedAccessInstance>? verifiedAccessInstances,
    String? nextToken,
  }) {
    return _$DescribeVerifiedAccessInstancesResult._(
      verifiedAccessInstances: verifiedAccessInstances == null
          ? null
          : _i2.BuiltList(verifiedAccessInstances),
      nextToken: nextToken,
    );
  }

  factory DescribeVerifiedAccessInstancesResult.build(
      [void Function(DescribeVerifiedAccessInstancesResultBuilder)
          updates]) = _$DescribeVerifiedAccessInstancesResult;

  const DescribeVerifiedAccessInstancesResult._();

  /// Constructs a [DescribeVerifiedAccessInstancesResult] from a [payload] and [response].
  factory DescribeVerifiedAccessInstancesResult.fromResponse(
    DescribeVerifiedAccessInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeVerifiedAccessInstancesResult>>
      serializers = [DescribeVerifiedAccessInstancesResultEc2QuerySerializer()];

  /// The IDs of the Verified Access instances.
  _i2.BuiltList<VerifiedAccessInstance>? get verifiedAccessInstances;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        verifiedAccessInstances,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVerifiedAccessInstancesResult')
          ..add(
            'verifiedAccessInstances',
            verifiedAccessInstances,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeVerifiedAccessInstancesResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeVerifiedAccessInstancesResult> {
  const DescribeVerifiedAccessInstancesResultEc2QuerySerializer()
      : super('DescribeVerifiedAccessInstancesResult');

  @override
  Iterable<Type> get types => const [
        DescribeVerifiedAccessInstancesResult,
        _$DescribeVerifiedAccessInstancesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVerifiedAccessInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVerifiedAccessInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'verifiedAccessInstanceSet':
          result.verifiedAccessInstances
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VerifiedAccessInstance)],
            ),
          ) as _i2.BuiltList<VerifiedAccessInstance>));
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
    DescribeVerifiedAccessInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVerifiedAccessInstancesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVerifiedAccessInstancesResult(
      :verifiedAccessInstances,
      :nextToken
    ) = object;
    if (verifiedAccessInstances != null) {
      result$
        ..add(const _i3.XmlElementName('VerifiedAccessInstanceSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          verifiedAccessInstances,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(VerifiedAccessInstance)],
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
