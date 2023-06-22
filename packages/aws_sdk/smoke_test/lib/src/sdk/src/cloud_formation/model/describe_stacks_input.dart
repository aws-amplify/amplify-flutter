// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_stacks_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_stacks_input.g.dart';

/// The input for DescribeStacks action.
abstract class DescribeStacksInput
    with
        _i1.HttpInput<DescribeStacksInput>,
        _i2.AWSEquatable<DescribeStacksInput>
    implements Built<DescribeStacksInput, DescribeStacksInputBuilder> {
  /// The input for DescribeStacks action.
  factory DescribeStacksInput({
    String? stackName,
    String? nextToken,
  }) {
    return _$DescribeStacksInput._(
      stackName: stackName,
      nextToken: nextToken,
    );
  }

  /// The input for DescribeStacks action.
  factory DescribeStacksInput.build(
          [void Function(DescribeStacksInputBuilder) updates]) =
      _$DescribeStacksInput;

  const DescribeStacksInput._();

  factory DescribeStacksInput.fromRequest(
    DescribeStacksInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeStacksInput>> serializers = [
    DescribeStacksInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStacksInputBuilder b) {}

  /// If you don't pass a parameter to `StackName`, the API returns a response that describes all resources in the account. This requires `ListStacks` and `DescribeStacks` permissions.
  ///
  /// The IAM policy below can be added to IAM policies when you want to limit resource-level permissions and avoid returning a response when no parameter is sent in the request:
  ///
  /// { "Version": "2012-10-17", "Statement": \[{ "Effect": "Deny", "Action": "cloudformation:DescribeStacks", "NotResource": "arn:aws:cloudformation:*:*:stack/*/*" }\] }
  ///
  /// The name or the unique stack ID that's associated with the stack, which aren't always interchangeable:
  ///
  /// *   Running stacks: You can specify either the stack's name or its unique stack ID.
  ///
  /// *   Deleted stacks: You must specify the unique stack ID.
  ///
  ///
  /// Default: There is no default value.
  String? get stackName;

  /// A string that identifies the next page of stacks that you want to retrieve.
  String? get nextToken;
  @override
  DescribeStacksInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        nextToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStacksInput')
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'nextToken',
        nextToken,
      );
    return helper.toString();
  }
}

class DescribeStacksInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeStacksInput> {
  const DescribeStacksInputAwsQuerySerializer() : super('DescribeStacksInput');

  @override
  Iterable<Type> get types => const [
        DescribeStacksInput,
        _$DescribeStacksInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStacksInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStacksInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
    DescribeStacksInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeStacksInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStacksInput(:stackName, :nextToken) = object;
    if (stackName != null) {
      result$
        ..add(const _i1.XmlElementName('StackName'))
        ..add(serializers.serialize(
          stackName,
          specifiedType: const FullType(String),
        ));
    }
    if (nextToken != null) {
      result$
        ..add(const _i1.XmlElementName('NextToken'))
        ..add(serializers.serialize(
          nextToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
