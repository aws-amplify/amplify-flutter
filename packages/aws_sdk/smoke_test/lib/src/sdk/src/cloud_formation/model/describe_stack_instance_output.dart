// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_stack_instance_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_instance.dart'
    as _i2;

part 'describe_stack_instance_output.g.dart';

abstract class DescribeStackInstanceOutput
    with _i1.AWSEquatable<DescribeStackInstanceOutput>
    implements
        Built<DescribeStackInstanceOutput, DescribeStackInstanceOutputBuilder> {
  factory DescribeStackInstanceOutput({_i2.StackInstance? stackInstance}) {
    return _$DescribeStackInstanceOutput._(stackInstance: stackInstance);
  }

  factory DescribeStackInstanceOutput.build(
          [void Function(DescribeStackInstanceOutputBuilder) updates]) =
      _$DescribeStackInstanceOutput;

  const DescribeStackInstanceOutput._();

  /// Constructs a [DescribeStackInstanceOutput] from a [payload] and [response].
  factory DescribeStackInstanceOutput.fromResponse(
    DescribeStackInstanceOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeStackInstanceOutput>>
      serializers = [DescribeStackInstanceOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStackInstanceOutputBuilder b) {}

  /// The stack instance that matches the specified request parameters.
  _i2.StackInstance? get stackInstance;
  @override
  List<Object?> get props => [stackInstance];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStackInstanceOutput')
      ..add(
        'stackInstance',
        stackInstance,
      );
    return helper.toString();
  }
}

class DescribeStackInstanceOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeStackInstanceOutput> {
  const DescribeStackInstanceOutputAwsQuerySerializer()
      : super('DescribeStackInstanceOutput');

  @override
  Iterable<Type> get types => const [
        DescribeStackInstanceOutput,
        _$DescribeStackInstanceOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackInstanceOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackInstanceOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackInstance':
          result.stackInstance.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StackInstance),
          ) as _i2.StackInstance));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeStackInstanceOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeStackInstanceOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackInstanceOutput(:stackInstance) = object;
    if (stackInstance != null) {
      result$
        ..add(const _i3.XmlElementName('StackInstance'))
        ..add(serializers.serialize(
          stackInstance,
          specifiedType: const FullType(_i2.StackInstance),
        ));
    }
    return result$;
  }
}
