// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.describe_stacks_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack.dart';

part 'describe_stacks_output.g.dart';

/// The output for a DescribeStacks action.
abstract class DescribeStacksOutput
    with _i1.AWSEquatable<DescribeStacksOutput>
    implements Built<DescribeStacksOutput, DescribeStacksOutputBuilder> {
  /// The output for a DescribeStacks action.
  factory DescribeStacksOutput({
    List<Stack>? stacks,
    String? nextToken,
  }) {
    return _$DescribeStacksOutput._(
      stacks: stacks == null ? null : _i2.BuiltList(stacks),
      nextToken: nextToken,
    );
  }

  /// The output for a DescribeStacks action.
  factory DescribeStacksOutput.build(
          [void Function(DescribeStacksOutputBuilder) updates]) =
      _$DescribeStacksOutput;

  const DescribeStacksOutput._();

  /// Constructs a [DescribeStacksOutput] from a [payload] and [response].
  factory DescribeStacksOutput.fromResponse(
    DescribeStacksOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeStacksOutput>> serializers = [
    DescribeStacksOutputAwsQuerySerializer()
  ];

  /// A list of stack structures.
  _i2.BuiltList<Stack>? get stacks;

  /// If the output exceeds 1 MB in size, a string that identifies the next page of stacks. If no additional page exists, this value is null.
  String? get nextToken;
  @override
  List<Object?> get props => [
        stacks,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStacksOutput')
      ..add(
        'stacks',
        stacks,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeStacksOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeStacksOutput> {
  const DescribeStacksOutputAwsQuerySerializer()
      : super('DescribeStacksOutput');

  @override
  Iterable<Type> get types => const [
        DescribeStacksOutput,
        _$DescribeStacksOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStacksOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStacksOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Stacks':
          result.stacks.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Stack)],
            ),
          ) as _i2.BuiltList<Stack>));
        case 'NextToken':
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
    DescribeStacksOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeStacksOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStacksOutput(:stacks, :nextToken) = object;
    if (stacks != null) {
      result$
        ..add(const _i3.XmlElementName('Stacks'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          stacks,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Stack)],
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
