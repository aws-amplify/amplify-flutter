// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.create_stack_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'create_stack_output.g.dart';

/// The output for a CreateStack action.
abstract class CreateStackOutput
    with _i1.AWSEquatable<CreateStackOutput>
    implements Built<CreateStackOutput, CreateStackOutputBuilder> {
  /// The output for a CreateStack action.
  factory CreateStackOutput({String? stackId}) {
    return _$CreateStackOutput._(stackId: stackId);
  }

  /// The output for a CreateStack action.
  factory CreateStackOutput.build(
      [void Function(CreateStackOutputBuilder) updates]) = _$CreateStackOutput;

  const CreateStackOutput._();

  /// Constructs a [CreateStackOutput] from a [payload] and [response].
  factory CreateStackOutput.fromResponse(
    CreateStackOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    CreateStackOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateStackOutputBuilder b) {}

  /// Unique identifier of the stack.
  String? get stackId;
  @override
  List<Object?> get props => [stackId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateStackOutput');
    helper.add(
      'stackId',
      stackId,
    );
    return helper.toString();
  }
}

class CreateStackOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CreateStackOutput> {
  const CreateStackOutputAwsQuerySerializer() : super('CreateStackOutput');

  @override
  Iterable<Type> get types => const [
        CreateStackOutput,
        _$CreateStackOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateStackOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateStackOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackId':
          if (value != null) {
            result.stackId = (serializers.deserialize(
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
    final payload = (object as CreateStackOutput);
    final result = <Object?>[
      const _i2.XmlElementName(
        'CreateStackOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.stackId != null) {
      result
        ..add(const _i2.XmlElementName('StackId'))
        ..add(serializers.serialize(
          payload.stackId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
