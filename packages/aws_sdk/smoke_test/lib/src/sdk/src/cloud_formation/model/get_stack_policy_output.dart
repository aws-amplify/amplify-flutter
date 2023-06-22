// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.get_stack_policy_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'get_stack_policy_output.g.dart';

/// The output for the GetStackPolicy action.
abstract class GetStackPolicyOutput
    with _i1.AWSEquatable<GetStackPolicyOutput>
    implements Built<GetStackPolicyOutput, GetStackPolicyOutputBuilder> {
  /// The output for the GetStackPolicy action.
  factory GetStackPolicyOutput({String? stackPolicyBody}) {
    return _$GetStackPolicyOutput._(stackPolicyBody: stackPolicyBody);
  }

  /// The output for the GetStackPolicy action.
  factory GetStackPolicyOutput.build(
          [void Function(GetStackPolicyOutputBuilder) updates]) =
      _$GetStackPolicyOutput;

  const GetStackPolicyOutput._();

  /// Constructs a [GetStackPolicyOutput] from a [payload] and [response].
  factory GetStackPolicyOutput.fromResponse(
    GetStackPolicyOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<GetStackPolicyOutput>> serializers = [
    GetStackPolicyOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(GetStackPolicyOutputBuilder b) {}

  /// Structure containing the stack policy body. (For more information, go to [Prevent Updates to Stack Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html) in the CloudFormation User Guide.)
  String? get stackPolicyBody;
  @override
  List<Object?> get props => [stackPolicyBody];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('GetStackPolicyOutput')
      ..add(
        'stackPolicyBody',
        stackPolicyBody,
      );
    return helper.toString();
  }
}

class GetStackPolicyOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<GetStackPolicyOutput> {
  const GetStackPolicyOutputAwsQuerySerializer()
      : super('GetStackPolicyOutput');

  @override
  Iterable<Type> get types => const [
        GetStackPolicyOutput,
        _$GetStackPolicyOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  GetStackPolicyOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetStackPolicyOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackPolicyBody':
          result.stackPolicyBody = (serializers.deserialize(
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
    GetStackPolicyOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'GetStackPolicyOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final GetStackPolicyOutput(:stackPolicyBody) = object;
    if (stackPolicyBody != null) {
      result$
        ..add(const _i2.XmlElementName('StackPolicyBody'))
        ..add(serializers.serialize(
          stackPolicyBody,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
