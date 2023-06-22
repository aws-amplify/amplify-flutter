// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_stack_resource_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_stack_resource_input.g.dart';

/// The input for DescribeStackResource action.
abstract class DescribeStackResourceInput
    with
        _i1.HttpInput<DescribeStackResourceInput>,
        _i2.AWSEquatable<DescribeStackResourceInput>
    implements
        Built<DescribeStackResourceInput, DescribeStackResourceInputBuilder> {
  /// The input for DescribeStackResource action.
  factory DescribeStackResourceInput({
    required String stackName,
    required String logicalResourceId,
  }) {
    return _$DescribeStackResourceInput._(
      stackName: stackName,
      logicalResourceId: logicalResourceId,
    );
  }

  /// The input for DescribeStackResource action.
  factory DescribeStackResourceInput.build(
          [void Function(DescribeStackResourceInputBuilder) updates]) =
      _$DescribeStackResourceInput;

  const DescribeStackResourceInput._();

  factory DescribeStackResourceInput.fromRequest(
    DescribeStackResourceInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeStackResourceInput>>
      serializers = [DescribeStackResourceInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStackResourceInputBuilder b) {}

  /// The name or the unique stack ID that's associated with the stack, which aren't always interchangeable:
  ///
  /// *   Running stacks: You can specify either the stack's name or its unique stack ID.
  ///
  /// *   Deleted stacks: You must specify the unique stack ID.
  ///
  ///
  /// Default: There is no default value.
  String get stackName;

  /// The logical name of the resource as specified in the template.
  ///
  /// Default: There is no default value.
  String get logicalResourceId;
  @override
  DescribeStackResourceInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        logicalResourceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStackResourceInput')
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'logicalResourceId',
        logicalResourceId,
      );
    return helper.toString();
  }
}

class DescribeStackResourceInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeStackResourceInput> {
  const DescribeStackResourceInputAwsQuerySerializer()
      : super('DescribeStackResourceInput');

  @override
  Iterable<Type> get types => const [
        DescribeStackResourceInput,
        _$DescribeStackResourceInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackResourceInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackResourceInputBuilder();
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
        case 'LogicalResourceId':
          result.logicalResourceId = (serializers.deserialize(
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
    DescribeStackResourceInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeStackResourceInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackResourceInput(:stackName, :logicalResourceId) = object;
    result$
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        stackName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('LogicalResourceId'))
      ..add(serializers.serialize(
        logicalResourceId,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
