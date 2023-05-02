// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.describe_stacks_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack.dart' as _i2;

part 'describe_stacks_output.g.dart';

/// The output for a DescribeStacks action.
abstract class DescribeStacksOutput
    with _i1.AWSEquatable<DescribeStacksOutput>
    implements Built<DescribeStacksOutput, DescribeStacksOutputBuilder> {
  /// The output for a DescribeStacks action.
  factory DescribeStacksOutput({
    List<_i2.Stack>? stacks,
    String? nextToken,
  }) {
    return _$DescribeStacksOutput._(
      stacks: stacks == null ? null : _i3.BuiltList(stacks),
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

  static const List<_i4.SmithySerializer> serializers = [
    DescribeStacksOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStacksOutputBuilder b) {}

  /// A list of stack structures.
  _i3.BuiltList<_i2.Stack>? get stacks;

  /// If the output exceeds 1 MB in size, a string that identifies the next page of stacks. If no additional page exists, this value is null.
  String? get nextToken;
  @override
  List<Object?> get props => [
        stacks,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStacksOutput');
    helper.add(
      'stacks',
      stacks,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeStacksOutputAwsQuerySerializer
    extends _i4.StructuredSmithySerializer<DescribeStacksOutput> {
  const DescribeStacksOutputAwsQuerySerializer()
      : super('DescribeStacksOutput');

  @override
  Iterable<Type> get types => const [
        DescribeStacksOutput,
        _$DescribeStacksOutput,
      ];
  @override
  Iterable<_i4.ShapeId> get supportedProtocols => const [
        _i4.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Stacks':
          if (value != null) {
            result.stacks.replace((const _i4.XmlBuiltListSerializer(
                    indexer: _i4.XmlIndexer.awsQueryList)
                .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(_i2.Stack)],
              ),
            ) as _i3.BuiltList<_i2.Stack>));
          }
          break;
        case 'NextToken':
          if (value != null) {
            result.nextToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as DescribeStacksOutput);
    final result = <Object?>[
      const _i4.XmlElementName(
        'DescribeStacksOutputResponse',
        _i4.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.stacks != null) {
      result
        ..add(const _i4.XmlElementName('Stacks'))
        ..add(const _i4.XmlBuiltListSerializer(
                indexer: _i4.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.stacks!,
          specifiedType: const FullType.nullable(
            _i3.BuiltList,
            [FullType(_i2.Stack)],
          ),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i4.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
