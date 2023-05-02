// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.describe_stack_events_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_stack_events_input.g.dart';

/// The input for DescribeStackEvents action.
abstract class DescribeStackEventsInput
    with
        _i1.HttpInput<DescribeStackEventsInput>,
        _i2.AWSEquatable<DescribeStackEventsInput>
    implements
        Built<DescribeStackEventsInput, DescribeStackEventsInputBuilder> {
  /// The input for DescribeStackEvents action.
  factory DescribeStackEventsInput({
    String? stackName,
    String? nextToken,
  }) {
    return _$DescribeStackEventsInput._(
      stackName: stackName,
      nextToken: nextToken,
    );
  }

  /// The input for DescribeStackEvents action.
  factory DescribeStackEventsInput.build(
          [void Function(DescribeStackEventsInputBuilder) updates]) =
      _$DescribeStackEventsInput;

  const DescribeStackEventsInput._();

  factory DescribeStackEventsInput.fromRequest(
    DescribeStackEventsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    DescribeStackEventsInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStackEventsInputBuilder b) {}

  /// The name or the unique stack ID that's associated with the stack, which aren't always interchangeable:
  ///
  /// *   Running stacks: You can specify either the stack's name or its unique stack ID.
  ///
  /// *   Deleted stacks: You must specify the unique stack ID.
  ///
  ///
  /// Default: There is no default value.
  String? get stackName;

  /// A string that identifies the next page of events that you want to retrieve.
  String? get nextToken;
  @override
  DescribeStackEventsInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStackEventsInput');
    helper.add(
      'stackName',
      stackName,
    );
    helper.add(
      'nextToken',
      nextToken,
    );
    return helper.toString();
  }
}

class DescribeStackEventsInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeStackEventsInput> {
  const DescribeStackEventsInputAwsQuerySerializer()
      : super('DescribeStackEventsInput');

  @override
  Iterable<Type> get types => const [
        DescribeStackEventsInput,
        _$DescribeStackEventsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackEventsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackEventsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackName':
          if (value != null) {
            result.stackName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
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
    final payload = (object as DescribeStackEventsInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'DescribeStackEventsInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.stackName != null) {
      result
        ..add(const _i1.XmlElementName('StackName'))
        ..add(serializers.serialize(
          payload.stackName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.nextToken != null) {
      result
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          payload.nextToken!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
