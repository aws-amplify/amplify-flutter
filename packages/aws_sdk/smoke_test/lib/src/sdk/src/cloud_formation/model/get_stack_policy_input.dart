// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.get_stack_policy_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'get_stack_policy_input.g.dart';

/// The input for the GetStackPolicy action.
abstract class GetStackPolicyInput
    with
        _i1.HttpInput<GetStackPolicyInput>,
        _i2.AWSEquatable<GetStackPolicyInput>
    implements Built<GetStackPolicyInput, GetStackPolicyInputBuilder> {
  /// The input for the GetStackPolicy action.
  factory GetStackPolicyInput({required String stackName}) {
    return _$GetStackPolicyInput._(stackName: stackName);
  }

  /// The input for the GetStackPolicy action.
  factory GetStackPolicyInput.build(
          [void Function(GetStackPolicyInputBuilder) updates]) =
      _$GetStackPolicyInput;

  const GetStackPolicyInput._();

  factory GetStackPolicyInput.fromRequest(
    GetStackPolicyInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    GetStackPolicyInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetStackPolicyInputBuilder b) {}

  /// The name or unique stack ID that's associated with the stack whose policy you want to get.
  String get stackName;
  @override
  GetStackPolicyInput getPayload() => this;
  @override
  List<Object?> get props => [stackName];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetStackPolicyInput');
    helper.add(
      'stackName',
      stackName,
    );
    return helper.toString();
  }
}

class GetStackPolicyInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<GetStackPolicyInput> {
  const GetStackPolicyInputAwsQuerySerializer() : super('GetStackPolicyInput');

  @override
  Iterable<Type> get types => const [
        GetStackPolicyInput,
        _$GetStackPolicyInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetStackPolicyInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetStackPolicyInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
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
    final payload = (object as GetStackPolicyInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'GetStackPolicyInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        payload.stackName,
        specifiedType: const FullType(String),
      ));
    return result;
  }
}
