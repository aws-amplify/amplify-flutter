// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.describe_stack_resources_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource.dart';

part 'describe_stack_resources_output.g.dart';

/// The output for a DescribeStackResources action.
abstract class DescribeStackResourcesOutput
    with
        _i1.AWSEquatable<DescribeStackResourcesOutput>
    implements
        Built<DescribeStackResourcesOutput,
            DescribeStackResourcesOutputBuilder> {
  /// The output for a DescribeStackResources action.
  factory DescribeStackResourcesOutput({List<StackResource>? stackResources}) {
    return _$DescribeStackResourcesOutput._(
        stackResources:
            stackResources == null ? null : _i2.BuiltList(stackResources));
  }

  /// The output for a DescribeStackResources action.
  factory DescribeStackResourcesOutput.build(
          [void Function(DescribeStackResourcesOutputBuilder) updates]) =
      _$DescribeStackResourcesOutput;

  const DescribeStackResourcesOutput._();

  /// Constructs a [DescribeStackResourcesOutput] from a [payload] and [response].
  factory DescribeStackResourcesOutput.fromResponse(
    DescribeStackResourcesOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeStackResourcesOutput>>
      serializers = [DescribeStackResourcesOutputAwsQuerySerializer()];

  /// A list of `StackResource` structures.
  _i2.BuiltList<StackResource>? get stackResources;
  @override
  List<Object?> get props => [stackResources];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStackResourcesOutput')
      ..add(
        'stackResources',
        stackResources,
      );
    return helper.toString();
  }
}

class DescribeStackResourcesOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeStackResourcesOutput> {
  const DescribeStackResourcesOutputAwsQuerySerializer()
      : super('DescribeStackResourcesOutput');

  @override
  Iterable<Type> get types => const [
        DescribeStackResourcesOutput,
        _$DescribeStackResourcesOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackResourcesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackResourcesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackResources':
          result.stackResources.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(StackResource)],
            ),
          ) as _i2.BuiltList<StackResource>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeStackResourcesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeStackResourcesOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackResourcesOutput(:stackResources) = object;
    if (stackResources != null) {
      result$
        ..add(const _i3.XmlElementName('StackResources'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          stackResources,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(StackResource)],
          ),
        ));
    }
    return result$;
  }
}
