// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_stack_resources_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'describe_stack_resources_input.g.dart';

/// The input for DescribeStackResources action.
abstract class DescribeStackResourcesInput
    with
        _i1.HttpInput<DescribeStackResourcesInput>,
        _i2.AWSEquatable<DescribeStackResourcesInput>
    implements
        Built<DescribeStackResourcesInput, DescribeStackResourcesInputBuilder> {
  /// The input for DescribeStackResources action.
  factory DescribeStackResourcesInput({
    String? stackName,
    String? logicalResourceId,
    String? physicalResourceId,
  }) {
    return _$DescribeStackResourcesInput._(
      stackName: stackName,
      logicalResourceId: logicalResourceId,
      physicalResourceId: physicalResourceId,
    );
  }

  /// The input for DescribeStackResources action.
  factory DescribeStackResourcesInput.build(
          [void Function(DescribeStackResourcesInputBuilder) updates]) =
      _$DescribeStackResourcesInput;

  const DescribeStackResourcesInput._();

  factory DescribeStackResourcesInput.fromRequest(
    DescribeStackResourcesInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DescribeStackResourcesInput>>
      serializers = [DescribeStackResourcesInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStackResourcesInputBuilder b) {}

  /// The name or the unique stack ID that is associated with the stack, which aren't always interchangeable:
  ///
  /// *   Running stacks: You can specify either the stack's name or its unique stack ID.
  ///
  /// *   Deleted stacks: You must specify the unique stack ID.
  ///
  ///
  /// Default: There is no default value.
  ///
  /// Required: Conditional. If you don't specify `StackName`, you must specify `PhysicalResourceId`.
  String? get stackName;

  /// The logical name of the resource as specified in the template.
  ///
  /// Default: There is no default value.
  String? get logicalResourceId;

  /// The name or unique identifier that corresponds to a physical instance ID of a resource supported by CloudFormation.
  ///
  /// For example, for an Amazon Elastic Compute Cloud (EC2) instance, `PhysicalResourceId` corresponds to the `InstanceId`. You can pass the EC2 `InstanceId` to `DescribeStackResources` to find which stack the instance belongs to and what other resources are part of the stack.
  ///
  /// Required: Conditional. If you don't specify `PhysicalResourceId`, you must specify `StackName`.
  ///
  /// Default: There is no default value.
  String? get physicalResourceId;
  @override
  DescribeStackResourcesInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        logicalResourceId,
        physicalResourceId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStackResourcesInput')
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'logicalResourceId',
        logicalResourceId,
      )
      ..add(
        'physicalResourceId',
        physicalResourceId,
      );
    return helper.toString();
  }
}

class DescribeStackResourcesInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DescribeStackResourcesInput> {
  const DescribeStackResourcesInputAwsQuerySerializer()
      : super('DescribeStackResourcesInput');

  @override
  Iterable<Type> get types => const [
        DescribeStackResourcesInput,
        _$DescribeStackResourcesInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackResourcesInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackResourcesInputBuilder();
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
        case 'PhysicalResourceId':
          result.physicalResourceId = (serializers.deserialize(
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
    DescribeStackResourcesInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DescribeStackResourcesInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackResourcesInput(
      :stackName,
      :logicalResourceId,
      :physicalResourceId
    ) = object;
    if (stackName != null) {
      result$
        ..add(const _i1.XmlElementName('StackName'))
        ..add(serializers.serialize(
          stackName,
          specifiedType: const FullType(String),
        ));
    }
    if (logicalResourceId != null) {
      result$
        ..add(const _i1.XmlElementName('LogicalResourceId'))
        ..add(serializers.serialize(
          logicalResourceId,
          specifiedType: const FullType(String),
        ));
    }
    if (physicalResourceId != null) {
      result$
        ..add(const _i1.XmlElementName('PhysicalResourceId'))
        ..add(serializers.serialize(
          physicalResourceId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
