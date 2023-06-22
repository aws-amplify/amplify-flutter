// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.create_stack_instances_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'create_stack_instances_output.g.dart';

abstract class CreateStackInstancesOutput
    with _i1.AWSEquatable<CreateStackInstancesOutput>
    implements
        Built<CreateStackInstancesOutput, CreateStackInstancesOutputBuilder> {
  factory CreateStackInstancesOutput({String? operationId}) {
    return _$CreateStackInstancesOutput._(operationId: operationId);
  }

  factory CreateStackInstancesOutput.build(
          [void Function(CreateStackInstancesOutputBuilder) updates]) =
      _$CreateStackInstancesOutput;

  const CreateStackInstancesOutput._();

  /// Constructs a [CreateStackInstancesOutput] from a [payload] and [response].
  factory CreateStackInstancesOutput.fromResponse(
    CreateStackInstancesOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateStackInstancesOutput>>
      serializers = [CreateStackInstancesOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateStackInstancesOutputBuilder b) {}

  /// The unique identifier for this stack set operation.
  String? get operationId;
  @override
  List<Object?> get props => [operationId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CreateStackInstancesOutput')
      ..add(
        'operationId',
        operationId,
      );
    return helper.toString();
  }
}

class CreateStackInstancesOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<CreateStackInstancesOutput> {
  const CreateStackInstancesOutputAwsQuerySerializer()
      : super('CreateStackInstancesOutput');

  @override
  Iterable<Type> get types => const [
        CreateStackInstancesOutput,
        _$CreateStackInstancesOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  CreateStackInstancesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateStackInstancesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OperationId':
          result.operationId = (serializers.deserialize(
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
    CreateStackInstancesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateStackInstancesOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final CreateStackInstancesOutput(:operationId) = object;
    if (operationId != null) {
      result$
        ..add(const _i2.XmlElementName('OperationId'))
        ..add(serializers.serialize(
          operationId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
