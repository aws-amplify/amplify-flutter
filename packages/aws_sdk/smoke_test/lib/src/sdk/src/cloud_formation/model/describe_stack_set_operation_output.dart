// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_stack_set_operation_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation.dart'
    as _i2;

part 'describe_stack_set_operation_output.g.dart';

abstract class DescribeStackSetOperationOutput
    with
        _i1.AWSEquatable<DescribeStackSetOperationOutput>
    implements
        Built<DescribeStackSetOperationOutput,
            DescribeStackSetOperationOutputBuilder> {
  factory DescribeStackSetOperationOutput(
      {_i2.StackSetOperation? stackSetOperation}) {
    return _$DescribeStackSetOperationOutput._(
        stackSetOperation: stackSetOperation);
  }

  factory DescribeStackSetOperationOutput.build(
          [void Function(DescribeStackSetOperationOutputBuilder) updates]) =
      _$DescribeStackSetOperationOutput;

  const DescribeStackSetOperationOutput._();

  /// Constructs a [DescribeStackSetOperationOutput] from a [payload] and [response].
  factory DescribeStackSetOperationOutput.fromResponse(
    DescribeStackSetOperationOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeStackSetOperationOutput>>
      serializers = [DescribeStackSetOperationOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStackSetOperationOutputBuilder b) {}

  /// The specified stack set operation.
  _i2.StackSetOperation? get stackSetOperation;
  @override
  List<Object?> get props => [stackSetOperation];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeStackSetOperationOutput')
          ..add(
            'stackSetOperation',
            stackSetOperation,
          );
    return helper.toString();
  }
}

class DescribeStackSetOperationOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeStackSetOperationOutput> {
  const DescribeStackSetOperationOutputAwsQuerySerializer()
      : super('DescribeStackSetOperationOutput');

  @override
  Iterable<Type> get types => const [
        DescribeStackSetOperationOutput,
        _$DescribeStackSetOperationOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackSetOperationOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackSetOperationOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackSetOperation':
          result.stackSetOperation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StackSetOperation),
          ) as _i2.StackSetOperation));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeStackSetOperationOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeStackSetOperationOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackSetOperationOutput(:stackSetOperation) = object;
    if (stackSetOperation != null) {
      result$
        ..add(const _i3.XmlElementName('StackSetOperation'))
        ..add(serializers.serialize(
          stackSetOperation,
          specifiedType: const FullType(_i2.StackSetOperation),
        ));
    }
    return result$;
  }
}
