// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_replace_root_volume_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/replace_root_volume_task.dart';

part 'describe_replace_root_volume_tasks_result.g.dart';

abstract class DescribeReplaceRootVolumeTasksResult
    with
        _i1.AWSEquatable<DescribeReplaceRootVolumeTasksResult>
    implements
        Built<DescribeReplaceRootVolumeTasksResult,
            DescribeReplaceRootVolumeTasksResultBuilder> {
  factory DescribeReplaceRootVolumeTasksResult({
    List<ReplaceRootVolumeTask>? replaceRootVolumeTasks,
    String? nextToken,
  }) {
    return _$DescribeReplaceRootVolumeTasksResult._(
      replaceRootVolumeTasks: replaceRootVolumeTasks == null
          ? null
          : _i2.BuiltList(replaceRootVolumeTasks),
      nextToken: nextToken,
    );
  }

  factory DescribeReplaceRootVolumeTasksResult.build(
      [void Function(DescribeReplaceRootVolumeTasksResultBuilder)
          updates]) = _$DescribeReplaceRootVolumeTasksResult;

  const DescribeReplaceRootVolumeTasksResult._();

  /// Constructs a [DescribeReplaceRootVolumeTasksResult] from a [payload] and [response].
  factory DescribeReplaceRootVolumeTasksResult.fromResponse(
    DescribeReplaceRootVolumeTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeReplaceRootVolumeTasksResult>>
      serializers = [DescribeReplaceRootVolumeTasksResultEc2QuerySerializer()];

  /// Information about the root volume replacement task.
  _i2.BuiltList<ReplaceRootVolumeTask>? get replaceRootVolumeTasks;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        replaceRootVolumeTasks,
        nextToken,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeReplaceRootVolumeTasksResult')
          ..add(
            'replaceRootVolumeTasks',
            replaceRootVolumeTasks,
          )
          ..add(
            'nextToken',
            nextToken,
          );
    return helper.toString();
  }
}

class DescribeReplaceRootVolumeTasksResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<DescribeReplaceRootVolumeTasksResult> {
  const DescribeReplaceRootVolumeTasksResultEc2QuerySerializer()
      : super('DescribeReplaceRootVolumeTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeReplaceRootVolumeTasksResult,
        _$DescribeReplaceRootVolumeTasksResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReplaceRootVolumeTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReplaceRootVolumeTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'replaceRootVolumeTaskSet':
          result.replaceRootVolumeTasks
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ReplaceRootVolumeTask)],
            ),
          ) as _i2.BuiltList<ReplaceRootVolumeTask>));
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
    DescribeReplaceRootVolumeTasksResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeReplaceRootVolumeTasksResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeReplaceRootVolumeTasksResult(
      :replaceRootVolumeTasks,
      :nextToken
    ) = object;
    if (replaceRootVolumeTasks != null) {
      result$
        ..add(const _i3.XmlElementName('ReplaceRootVolumeTaskSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          replaceRootVolumeTasks,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ReplaceRootVolumeTask)],
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
