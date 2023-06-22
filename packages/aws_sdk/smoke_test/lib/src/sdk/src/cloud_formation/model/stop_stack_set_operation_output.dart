// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stop_stack_set_operation_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'stop_stack_set_operation_output.g.dart';

abstract class StopStackSetOperationOutput
    with _i1.AWSEquatable<StopStackSetOperationOutput>
    implements
        Built<StopStackSetOperationOutput, StopStackSetOperationOutputBuilder>,
        _i2.EmptyPayload {
  factory StopStackSetOperationOutput() {
    return _$StopStackSetOperationOutput._();
  }

  factory StopStackSetOperationOutput.build(
          [void Function(StopStackSetOperationOutputBuilder) updates]) =
      _$StopStackSetOperationOutput;

  const StopStackSetOperationOutput._();

  /// Constructs a [StopStackSetOperationOutput] from a [payload] and [response].
  factory StopStackSetOperationOutput.fromResponse(
    StopStackSetOperationOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<StopStackSetOperationOutput>>
      serializers = [StopStackSetOperationOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StopStackSetOperationOutputBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StopStackSetOperationOutput');
    return helper.toString();
  }
}

class StopStackSetOperationOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<StopStackSetOperationOutput> {
  const StopStackSetOperationOutputAwsQuerySerializer()
      : super('StopStackSetOperationOutput');

  @override
  Iterable<Type> get types => const [
        StopStackSetOperationOutput,
        _$StopStackSetOperationOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StopStackSetOperationOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return StopStackSetOperationOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    StopStackSetOperationOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StopStackSetOperationOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];

    return result$;
  }
}
