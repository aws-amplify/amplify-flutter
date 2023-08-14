// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_stale_security_groups_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/stale_security_group.dart';

part 'describe_stale_security_groups_result.g.dart';

abstract class DescribeStaleSecurityGroupsResult
    with
        _i1.AWSEquatable<DescribeStaleSecurityGroupsResult>
    implements
        Built<DescribeStaleSecurityGroupsResult,
            DescribeStaleSecurityGroupsResultBuilder> {
  factory DescribeStaleSecurityGroupsResult({
    String? nextToken,
    List<StaleSecurityGroup>? staleSecurityGroupSet,
  }) {
    return _$DescribeStaleSecurityGroupsResult._(
      nextToken: nextToken,
      staleSecurityGroupSet: staleSecurityGroupSet == null
          ? null
          : _i2.BuiltList(staleSecurityGroupSet),
    );
  }

  factory DescribeStaleSecurityGroupsResult.build(
          [void Function(DescribeStaleSecurityGroupsResultBuilder) updates]) =
      _$DescribeStaleSecurityGroupsResult;

  const DescribeStaleSecurityGroupsResult._();

  /// Constructs a [DescribeStaleSecurityGroupsResult] from a [payload] and [response].
  factory DescribeStaleSecurityGroupsResult.fromResponse(
    DescribeStaleSecurityGroupsResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeStaleSecurityGroupsResult>>
      serializers = [DescribeStaleSecurityGroupsResultEc2QuerySerializer()];

  /// The token to include in another request to get the next page of items. If there are no additional items to return, the string is empty.
  String? get nextToken;

  /// Information about the stale security groups.
  _i2.BuiltList<StaleSecurityGroup>? get staleSecurityGroupSet;
  @override
  List<Object?> get props => [
        nextToken,
        staleSecurityGroupSet,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeStaleSecurityGroupsResult')
          ..add(
            'nextToken',
            nextToken,
          )
          ..add(
            'staleSecurityGroupSet',
            staleSecurityGroupSet,
          );
    return helper.toString();
  }
}

class DescribeStaleSecurityGroupsResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeStaleSecurityGroupsResult> {
  const DescribeStaleSecurityGroupsResultEc2QuerySerializer()
      : super('DescribeStaleSecurityGroupsResult');

  @override
  Iterable<Type> get types => const [
        DescribeStaleSecurityGroupsResult,
        _$DescribeStaleSecurityGroupsResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeStaleSecurityGroupsResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStaleSecurityGroupsResultBuilder();
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
        case 'staleSecurityGroupSet':
          result.staleSecurityGroupSet
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(StaleSecurityGroup)],
            ),
          ) as _i2.BuiltList<StaleSecurityGroup>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeStaleSecurityGroupsResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeStaleSecurityGroupsResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeStaleSecurityGroupsResult(
      :nextToken,
      :staleSecurityGroupSet
    ) = object;
    if (nextToken != null) {
      result$
        ..add(const _i3.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    if (staleSecurityGroupSet != null) {
      result$
        ..add(const _i3.XmlElementName('StaleSecurityGroupSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          staleSecurityGroupSet,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(StaleSecurityGroup)],
          ),
        ));
    }
    return result$;
  }
}
