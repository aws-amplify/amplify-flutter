// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.delete_stack_instances_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_stack_instances_output.g.dart';

abstract class DeleteStackInstancesOutput
    with _i1.AWSEquatable<DeleteStackInstancesOutput>
    implements
        Built<DeleteStackInstancesOutput, DeleteStackInstancesOutputBuilder> {
  factory DeleteStackInstancesOutput({String? operationId}) {
    return _$DeleteStackInstancesOutput._(operationId: operationId);
  }

  factory DeleteStackInstancesOutput.build(
          [void Function(DeleteStackInstancesOutputBuilder) updates]) =
      _$DeleteStackInstancesOutput;

  const DeleteStackInstancesOutput._();

  /// Constructs a [DeleteStackInstancesOutput] from a [payload] and [response].
  factory DeleteStackInstancesOutput.fromResponse(
    DeleteStackInstancesOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteStackInstancesOutput>>
      serializers = [DeleteStackInstancesOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteStackInstancesOutputBuilder b) {}

  /// The unique identifier for this stack set operation.
  String? get operationId;
  @override
  List<Object?> get props => [operationId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteStackInstancesOutput')
      ..add(
        'operationId',
        operationId,
      );
    return helper.toString();
  }
}

class DeleteStackInstancesOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteStackInstancesOutput> {
  const DeleteStackInstancesOutputAwsQuerySerializer()
      : super('DeleteStackInstancesOutput');

  @override
  Iterable<Type> get types => const [
        DeleteStackInstancesOutput,
        _$DeleteStackInstancesOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteStackInstancesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteStackInstancesOutputBuilder();
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
    DeleteStackInstancesOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteStackInstancesOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DeleteStackInstancesOutput(:operationId) = object;
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
