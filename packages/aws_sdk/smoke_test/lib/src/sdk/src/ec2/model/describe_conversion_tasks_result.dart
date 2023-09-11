// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_conversion_tasks_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/conversion_task.dart';

part 'describe_conversion_tasks_result.g.dart';

abstract class DescribeConversionTasksResult
    with
        _i1.AWSEquatable<DescribeConversionTasksResult>
    implements
        Built<DescribeConversionTasksResult,
            DescribeConversionTasksResultBuilder> {
  factory DescribeConversionTasksResult(
      {List<ConversionTask>? conversionTasks}) {
    return _$DescribeConversionTasksResult._(
        conversionTasks:
            conversionTasks == null ? null : _i2.BuiltList(conversionTasks));
  }

  factory DescribeConversionTasksResult.build(
          [void Function(DescribeConversionTasksResultBuilder) updates]) =
      _$DescribeConversionTasksResult;

  const DescribeConversionTasksResult._();

  /// Constructs a [DescribeConversionTasksResult] from a [payload] and [response].
  factory DescribeConversionTasksResult.fromResponse(
    DescribeConversionTasksResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeConversionTasksResult>>
      serializers = [DescribeConversionTasksResultEc2QuerySerializer()];

  /// Information about the conversion tasks.
  _i2.BuiltList<ConversionTask>? get conversionTasks;
  @override
  List<Object?> get props => [conversionTasks];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeConversionTasksResult')
      ..add(
        'conversionTasks',
        conversionTasks,
      );
    return helper.toString();
  }
}

class DescribeConversionTasksResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeConversionTasksResult> {
  const DescribeConversionTasksResultEc2QuerySerializer()
      : super('DescribeConversionTasksResult');

  @override
  Iterable<Type> get types => const [
        DescribeConversionTasksResult,
        _$DescribeConversionTasksResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeConversionTasksResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeConversionTasksResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'conversionTasks':
          result.conversionTasks.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ConversionTask)],
            ),
          ) as _i2.BuiltList<ConversionTask>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeConversionTasksResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeConversionTasksResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeConversionTasksResult(:conversionTasks) = object;
    if (conversionTasks != null) {
      result$
        ..add(const _i3.XmlElementName('ConversionTasks'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          conversionTasks,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(ConversionTask)],
          ),
        ));
    }
    return result$;
  }
}
