// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.describe_stack_resource_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_detail.dart'
    as _i2;

part 'describe_stack_resource_output.g.dart';

/// The output for a DescribeStackResource action.
abstract class DescribeStackResourceOutput
    with _i1.AWSEquatable<DescribeStackResourceOutput>
    implements
        Built<DescribeStackResourceOutput, DescribeStackResourceOutputBuilder> {
  /// The output for a DescribeStackResource action.
  factory DescribeStackResourceOutput(
      {_i2.StackResourceDetail? stackResourceDetail}) {
    return _$DescribeStackResourceOutput._(
        stackResourceDetail: stackResourceDetail);
  }

  /// The output for a DescribeStackResource action.
  factory DescribeStackResourceOutput.build(
          [void Function(DescribeStackResourceOutputBuilder) updates]) =
      _$DescribeStackResourceOutput;

  const DescribeStackResourceOutput._();

  /// Constructs a [DescribeStackResourceOutput] from a [payload] and [response].
  factory DescribeStackResourceOutput.fromResponse(
    DescribeStackResourceOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeStackResourceOutput>>
      serializers = [DescribeStackResourceOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStackResourceOutputBuilder b) {}

  /// A `StackResourceDetail` structure containing the description of the specified resource in the specified stack.
  _i2.StackResourceDetail? get stackResourceDetail;
  @override
  List<Object?> get props => [stackResourceDetail];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStackResourceOutput')
      ..add(
        'stackResourceDetail',
        stackResourceDetail,
      );
    return helper.toString();
  }
}

class DescribeStackResourceOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeStackResourceOutput> {
  const DescribeStackResourceOutputAwsQuerySerializer()
      : super('DescribeStackResourceOutput');

  @override
  Iterable<Type> get types => const [
        DescribeStackResourceOutput,
        _$DescribeStackResourceOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DescribeStackResourceOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeStackResourceOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackResourceDetail':
          result.stackResourceDetail.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.StackResourceDetail),
          ) as _i2.StackResourceDetail));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeStackResourceOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeStackResourceOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DescribeStackResourceOutput(:stackResourceDetail) = object;
    if (stackResourceDetail != null) {
      result$
        ..add(const _i3.XmlElementName('StackResourceDetail'))
        ..add(serializers.serialize(
          stackResourceDetail,
          specifiedType: const FullType(_i2.StackResourceDetail),
        ));
    }
    return result$;
  }
}
