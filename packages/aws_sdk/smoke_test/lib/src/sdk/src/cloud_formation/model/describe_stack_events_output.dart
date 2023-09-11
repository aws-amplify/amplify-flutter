// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.describe_stack_events_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_event.dart';

part 'describe_stack_events_output.g.dart';

/// The output for a DescribeStackEvents action.
abstract class DescribeStackEventsOutput
    with _i1.AWSEquatable<DescribeStackEventsOutput>
    implements
        Built<DescribeStackEventsOutput, DescribeStackEventsOutputBuilder> {
  /// The output for a DescribeStackEvents action.
  factory DescribeStackEventsOutput({
    List<StackEvent>? stackEvents,
    String? nextToken,
  }) {
    return _$DescribeStackEventsOutput._(
      stackEvents: stackEvents == null ? null : _i2.BuiltList(stackEvents),
      nextToken: nextToken,
    );
  }

  /// The output for a DescribeStackEvents action.
  factory DescribeStackEventsOutput.build(
          [void Function(DescribeStackEventsOutputBuilder) updates]) =
      _$DescribeStackEventsOutput;

  const DescribeStackEventsOutput._();

  /// Constructs a [DescribeStackEventsOutput] from a [payload] and [response].
  factory DescribeStackEventsOutput.fromResponse(
    DescribeStackEventsOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeStackEventsOutput>>
      serializers = [DescribeStackEventsOutputAwsQuerySerializer()];

  /// A list of `StackEvents` structures.
  _i2.BuiltList<StackEvent>? get stackEvents;

  /// If the output exceeds 1 MB in size, a string that identifies the next page of events. If no additional page exists, this value is null.
  String? get nextToken;
  @override
  List<Object?> get props => [
        stackEvents,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStackEventsOutput')
      ..add(
        'stackEvents',
        stackEvents,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeStackEventsOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeStackEventsOutput> {
  const DescribeStackEventsOutputAwsQuerySerializer()
      : super('DescribeStackEventsOutput');

  @override
  Iterable<Type> get types => const [
        DescribeStackEventsOutput,
        _$DescribeStackEventsOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackEventsOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackEventsOutputBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackEvents':
          result.stackEvents.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(StackEvent)],
            ),
          ) as _i2.BuiltList<StackEvent>));
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
    DescribeStackEventsOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeStackEventsOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackEventsOutput(:stackEvents, :nextToken) = object;
    if (stackEvents != null) {
      result$
        ..add(const _i3.XmlElementName('StackEvents'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          stackEvents,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(StackEvent)],
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
