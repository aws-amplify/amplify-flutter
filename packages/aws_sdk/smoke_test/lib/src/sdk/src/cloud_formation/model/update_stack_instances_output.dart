// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.update_stack_instances_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'update_stack_instances_output.g.dart';

abstract class UpdateStackInstancesOutput
    with _i1.AWSEquatable<UpdateStackInstancesOutput>
    implements
        Built<UpdateStackInstancesOutput, UpdateStackInstancesOutputBuilder> {
  factory UpdateStackInstancesOutput({String? operationId}) {
    return _$UpdateStackInstancesOutput._(operationId: operationId);
  }

  factory UpdateStackInstancesOutput.build(
          [void Function(UpdateStackInstancesOutputBuilder) updates]) =
      _$UpdateStackInstancesOutput;

  const UpdateStackInstancesOutput._();

  /// Constructs a [UpdateStackInstancesOutput] from a [payload] and [response].
  factory UpdateStackInstancesOutput.fromResponse(
    UpdateStackInstancesOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    UpdateStackInstancesOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateStackInstancesOutputBuilder b) {}

  /// The unique identifier for this stack set operation.
  String? get operationId;
  @override
  List<Object?> get props => [operationId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('UpdateStackInstancesOutput');
    helper.add(
      'operationId',
      operationId,
    );
    return helper.toString();
  }
}

class UpdateStackInstancesOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<UpdateStackInstancesOutput> {
  const UpdateStackInstancesOutputAwsQuerySerializer()
      : super('UpdateStackInstancesOutput');

  @override
  Iterable<Type> get types => const [
        UpdateStackInstancesOutput,
        _$UpdateStackInstancesOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateStackInstancesOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateStackInstancesOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'OperationId':
          if (value != null) {
            result.operationId = (serializers.deserialize(
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
    final payload = (object as UpdateStackInstancesOutput);
    final result = <Object?>[
      const _i2.XmlElementName(
        'UpdateStackInstancesOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.operationId != null) {
      result
        ..add(const _i2.XmlElementName('OperationId'))
        ..add(serializers.serialize(
          payload.operationId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}
