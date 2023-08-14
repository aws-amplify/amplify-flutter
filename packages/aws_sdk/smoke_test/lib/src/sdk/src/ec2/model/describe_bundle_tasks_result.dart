// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_bundle_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/bundle_task.dart';

part 'describe_bundle_tasks_result.g.dart';

abstract class DescribeBundleTasksResult
    with _i1.AWSEquatable<DescribeBundleTasksResult>
    implements
        Built<DescribeBundleTasksResult, DescribeBundleTasksResultBuilder> {
  factory DescribeBundleTasksResult({List<BundleTask>? bundleTasks}) {
    return _$DescribeBundleTasksResult._(
        bundleTasks: bundleTasks == null ? null : _i2.BuiltList(bundleTasks));
  }

  factory DescribeBundleTasksResult.build(
          [void Function(DescribeBundleTasksResultBuilder) updates]) =
      _$DescribeBundleTasksResult;

  const DescribeBundleTasksResult._();

  /// Constructs a [DescribeBundleTasksResult] from a [payload] and [response].
  factory DescribeBundleTasksResult.fromResponse(
    DescribeBundleTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeBundleTasksResult>>
      serializers = [DescribeBundleTasksResultEc2QuerySerializer()];

  /// Information about the bundle tasks.
  _i2.BuiltList<BundleTask>? get bundleTasks;
  @override
  List<Object?> get props => [bundleTasks];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeBundleTasksResult')
      ..add(
        'bundleTasks',
        bundleTasks,
      );
    return helper.toString();
  }
}

class DescribeBundleTasksResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeBundleTasksResult> {
  const DescribeBundleTasksResultEc2QuerySerializer()
      : super('DescribeBundleTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeBundleTasksResult,
        _$DescribeBundleTasksResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeBundleTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeBundleTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'bundleInstanceTasksSet':
          result.bundleTasks.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(BundleTask)],
            ),
          ) as _i2.BuiltList<BundleTask>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeBundleTasksResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeBundleTasksResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeBundleTasksResult(:bundleTasks) = object;
    if (bundleTasks != null) {
      result$
        ..add(const _i3.XmlElementName('BundleInstanceTasksSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          bundleTasks,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(BundleTask)],
          ),
        ));
    }
    return result$;
  }
}
