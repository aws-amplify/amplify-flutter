// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_stack_resources_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource.dart'
    as _i2;

part 'describe_stack_resources_output.g.dart';

/// The output for a DescribeStackResources action.
abstract class DescribeStackResourcesOutput
    with
        _i1.AWSEquatable<DescribeStackResourcesOutput>
    implements
        Built<DescribeStackResourcesOutput,
            DescribeStackResourcesOutputBuilder> {
  /// The output for a DescribeStackResources action.
  factory DescribeStackResourcesOutput(
      {List<_i2.StackResource>? stackResources}) {
    return _$DescribeStackResourcesOutput._(
        stackResources:
            stackResources == null ? null : _i3.BuiltList(stackResources));
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

  static const List<_i4.SmithySerializer<DescribeStackResourcesOutput>>
      serializers = [DescribeStackResourcesOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStackResourcesOutputBuilder b) {}

  /// A list of `StackResource` structures.
  _i3.BuiltList<_i2.StackResource>? get stackResources;
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
    extends _i4.StructuredSmithySerializer<DescribeStackResourcesOutput> {
  const DescribeStackResourcesOutputAwsQuerySerializer()
      : super('DescribeStackResourcesOutput');

  @override
  Iterable<Type> get types => const [
        DescribeStackResourcesOutput,
        _$DescribeStackResourcesOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
          result.stackResources.replace((const _i4.XmlBuiltListSerializer(
                  indexer: _i4.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(_i2.StackResource)],
            ),
          ) as _i3.BuiltList<_i2.StackResource>));
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
      const _i4.XmlElementName(
        'DescribeStackResourcesOutputResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackResourcesOutput(:stackResources) = object;
    if (stackResources != null) {
      result$
        ..add(const _i4.XmlElementName('StackResources'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          stackResources,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.StackResource)],
          ),
        ));
    }
    return result$;
  }
}
