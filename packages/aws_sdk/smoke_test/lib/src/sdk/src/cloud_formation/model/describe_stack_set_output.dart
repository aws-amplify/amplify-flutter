// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.describe_stack_set_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set.dart';

part 'describe_stack_set_output.g.dart';

abstract class DescribeStackSetOutput
    with _i1.AWSEquatable<DescribeStackSetOutput>
    implements Built<DescribeStackSetOutput, DescribeStackSetOutputBuilder> {
  factory DescribeStackSetOutput({StackSet? stackSet}) {
    return _$DescribeStackSetOutput._(stackSet: stackSet);
  }

  factory DescribeStackSetOutput.build(
          [void Function(DescribeStackSetOutputBuilder) updates]) =
      _$DescribeStackSetOutput;

  const DescribeStackSetOutput._();

  /// Constructs a [DescribeStackSetOutput] from a [payload] and [response].
  factory DescribeStackSetOutput.fromResponse(
    DescribeStackSetOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DescribeStackSetOutput>> serializers =
      [DescribeStackSetOutputAwsQuerySerializer()];

  /// The specified stack set.
  StackSet? get stackSet;
  @override
  List<Object?> get props => [stackSet];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStackSetOutput')
      ..add(
        'stackSet',
        stackSet,
      );
    return helper.toString();
  }
}

class DescribeStackSetOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<DescribeStackSetOutput> {
  const DescribeStackSetOutputAwsQuerySerializer()
      : super('DescribeStackSetOutput');

  @override
  Iterable<Type> get types => const [
        DescribeStackSetOutput,
        _$DescribeStackSetOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackSetOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackSetOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackSet':
          result.stackSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StackSet),
          ) as StackSet));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeStackSetOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DescribeStackSetOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackSetOutput(:stackSet) = object;
    if (stackSet != null) {
      result$
        ..add(const _i2.XmlElementName('StackSet'))
        ..add(serializers.serialize(
          stackSet,
          specifiedType: const FullType(StackSet),
        ));
    }
    return result$;
  }
}
