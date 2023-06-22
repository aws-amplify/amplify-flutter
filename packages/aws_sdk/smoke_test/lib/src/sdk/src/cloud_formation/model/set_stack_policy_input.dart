// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.set_stack_policy_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'set_stack_policy_input.g.dart';

/// The input for the SetStackPolicy action.
abstract class SetStackPolicyInput
    with
        _i1.HttpInput<SetStackPolicyInput>,
        _i2.AWSEquatable<SetStackPolicyInput>
    implements Built<SetStackPolicyInput, SetStackPolicyInputBuilder> {
  /// The input for the SetStackPolicy action.
  factory SetStackPolicyInput({
    required String stackName,
    String? stackPolicyBody,
    String? stackPolicyUrl,
  }) {
    return _$SetStackPolicyInput._(
      stackName: stackName,
      stackPolicyBody: stackPolicyBody,
      stackPolicyUrl: stackPolicyUrl,
    );
  }

  /// The input for the SetStackPolicy action.
  factory SetStackPolicyInput.build(
          [void Function(SetStackPolicyInputBuilder) updates]) =
      _$SetStackPolicyInput;

  const SetStackPolicyInput._();

  factory SetStackPolicyInput.fromRequest(
    SetStackPolicyInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<SetStackPolicyInput>> serializers = [
    SetStackPolicyInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SetStackPolicyInputBuilder b) {}

  /// The name or unique stack ID that you want to associate a policy with.
  String get stackName;

  /// Structure containing the stack policy body. For more information, go to [Prevent updates to stack resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html) in the CloudFormation User Guide. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
  String? get stackPolicyBody;

  /// Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an Amazon S3 bucket in the same Amazon Web Services Region as the stack. You can specify either the `StackPolicyBody` or the `StackPolicyURL` parameter, but not both.
  String? get stackPolicyUrl;
  @override
  SetStackPolicyInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        stackPolicyBody,
        stackPolicyUrl,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SetStackPolicyInput')
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'stackPolicyBody',
        stackPolicyBody,
      )
      ..add(
        'stackPolicyUrl',
        stackPolicyUrl,
      );
    return helper.toString();
  }
}

class SetStackPolicyInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<SetStackPolicyInput> {
  const SetStackPolicyInputAwsQuerySerializer() : super('SetStackPolicyInput');

  @override
  Iterable<Type> get types => const [
        SetStackPolicyInput,
        _$SetStackPolicyInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SetStackPolicyInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SetStackPolicyInputBuilder();
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
        case 'StackPolicyBody':
          result.stackPolicyBody = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackPolicyURL':
          result.stackPolicyUrl = (serializers.deserialize(
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
    SetStackPolicyInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'SetStackPolicyInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final SetStackPolicyInput(:stackName, :stackPolicyBody, :stackPolicyUrl) =
        object;
    result$
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        stackName,
        specifiedType: const FullType(String),
      ));
    if (stackPolicyBody != null) {
      result$
        ..add(const _i1.XmlElementName('StackPolicyBody'))
        ..add(serializers.serialize(
          stackPolicyBody,
          specifiedType: const FullType(String),
        ));
    }
    if (stackPolicyUrl != null) {
      result$
        ..add(const _i1.XmlElementName('StackPolicyURL'))
        ..add(serializers.serialize(
          stackPolicyUrl,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
