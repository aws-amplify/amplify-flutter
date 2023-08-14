// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_store_image_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/store_image_task_result.dart';

part 'describe_store_image_tasks_result.g.dart';

abstract class DescribeStoreImageTasksResult
    with
        _i1.AWSEquatable<DescribeStoreImageTasksResult>
    implements
        Built<DescribeStoreImageTasksResult,
            DescribeStoreImageTasksResultBuilder> {
  factory DescribeStoreImageTasksResult({
    List<StoreImageTaskResult>? storeImageTaskResults,
    String? nextToken,
  }) {
    return _$DescribeStoreImageTasksResult._(
      storeImageTaskResults: storeImageTaskResults == null
          ? null
          : _i2.BuiltList(storeImageTaskResults),
      nextToken: nextToken,
    );
  }

  factory DescribeStoreImageTasksResult.build(
          [void Function(DescribeStoreImageTasksResultBuilder) updates]) =
      _$DescribeStoreImageTasksResult;

  const DescribeStoreImageTasksResult._();

  /// Constructs a [DescribeStoreImageTasksResult] from a [payload] and [response].
  factory DescribeStoreImageTasksResult.fromResponse(
    DescribeStoreImageTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeStoreImageTasksResult>>
      serializers = [DescribeStoreImageTasksResultEc2QuerySerializer()];

  /// The information about the AMI store tasks.
  _i2.BuiltList<StoreImageTaskResult>? get storeImageTaskResults;

  /// The token to include in another request to get the next page of items. This value is `null` when there are no more items to return.
  String? get nextToken;
  @override
  List<Object?> get props => [
        storeImageTaskResults,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStoreImageTasksResult')
      ..add(
        'storeImageTaskResults',
        storeImageTaskResults,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeStoreImageTasksResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeStoreImageTasksResult> {
  const DescribeStoreImageTasksResultEc2QuerySerializer()
      : super('DescribeStoreImageTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeStoreImageTasksResult,
        _$DescribeStoreImageTasksResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeStoreImageTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStoreImageTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'storeImageTaskResultSet':
          result.storeImageTaskResults
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(StoreImageTaskResult)],
            ),
          ) as _i2.BuiltList<StoreImageTaskResult>));
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
    DescribeStoreImageTasksResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeStoreImageTasksResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeStoreImageTasksResult(:storeImageTaskResults, :nextToken) =
        object;
    if (storeImageTaskResults != null) {
      result$
        ..add(const _i3.XmlElementName('StoreImageTaskResultSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          storeImageTaskResults,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(StoreImageTaskResult)],
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
