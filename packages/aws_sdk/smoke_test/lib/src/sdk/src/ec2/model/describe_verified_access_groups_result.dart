// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_verified_access_groups_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_group.dart';

part 'describe_verified_access_groups_result.g.dart';

abstract class DescribeVerifiedAccessGroupsResult
    with
        _i1.AWSEquatable<DescribeVerifiedAccessGroupsResult>
    implements
        Built<DescribeVerifiedAccessGroupsResult,
            DescribeVerifiedAccessGroupsResultBuilder> {
  factory DescribeVerifiedAccessGroupsResult({
    List<VerifiedAccessGroup>? verifiedAccessGroups,
    String? nextToken,
  }) {
    return _$DescribeVerifiedAccessGroupsResult._(
      verifiedAccessGroups: verifiedAccessGroups == null
          ? null
          : _i2.BuiltList(verifiedAccessGroups),
      nextToken: nextToken,
    );
  }

  factory DescribeVerifiedAccessGroupsResult.build(
          [void Function(DescribeVerifiedAccessGroupsResultBuilder) updates]) =
      _$DescribeVerifiedAccessGroupsResult;

  const DescribeVerifiedAccessGroupsResult._();

  /// Constructs a [DescribeVerifiedAccessGroupsResult] from a [payload] and [response].
  factory DescribeVerifiedAccessGroupsResult.fromResponse(
    DescribeVerifiedAccessGroupsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeVerifiedAccessGroupsResult>>
      serializers = [DescribeVerifiedAccessGroupsResultEc2QuerySerializer()];

  /// The ID of the Verified Access group.
  _i2.BuiltList<VerifiedAccessGroup>? get verifiedAccessGroups;

  /// The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        verifiedAccessGroups,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeVerifiedAccessGroupsResult')
          ..add(
            'verifiedAccessGroups',
            verifiedAccessGroups,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeVerifiedAccessGroupsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeVerifiedAccessGroupsResult> {
  const DescribeVerifiedAccessGroupsResultEc2QuerySerializer()
      : super('DescribeVerifiedAccessGroupsResult');

  @override
  Iterable<Type> get types => const [
        DescribeVerifiedAccessGroupsResult,
        _$DescribeVerifiedAccessGroupsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeVerifiedAccessGroupsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeVerifiedAccessGroupsResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'verifiedAccessGroupSet':
          result.verifiedAccessGroups.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(VerifiedAccessGroup)],
            ),
          ) as _i2.BuiltList<VerifiedAccessGroup>));
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
    DescribeVerifiedAccessGroupsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeVerifiedAccessGroupsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeVerifiedAccessGroupsResult(
      :verifiedAccessGroups,
      :nextToken
    ) = object;
    if (verifiedAccessGroups != null) {
      result$
        ..add(const _i3.XmlElementName('VerifiedAccessGroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          verifiedAccessGroups,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(VerifiedAccessGroup)],
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
