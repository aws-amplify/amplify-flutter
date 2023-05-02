// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.describe_stack_set_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set.dart'
    as _i2;

part 'describe_stack_set_output.g.dart';

abstract class DescribeStackSetOutput
    with _i1.AWSEquatable<DescribeStackSetOutput>
    implements Built<DescribeStackSetOutput, DescribeStackSetOutputBuilder> {
  factory DescribeStackSetOutput({_i2.StackSet? stackSet}) {
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

  static const List<_i3.SmithySerializer> serializers = [
    DescribeStackSetOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DescribeStackSetOutputBuilder b) {}

  /// The specified stack set.
  _i2.StackSet? get stackSet;
  @override
  List<Object?> get props => [stackSet];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeStackSetOutput');
    helper.add(
      'stackSet',
      stackSet,
    );
    return helper.toString();
  }
}

class DescribeStackSetOutputAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeStackSetOutput> {
  const DescribeStackSetOutputAwsQuerySerializer()
      : super('DescribeStackSetOutput');

  @override
  Iterable<Type> get types => const [
        DescribeStackSetOutput,
        _$DescribeStackSetOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackSet':
          if (value != null) {
            result.stackSet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.StackSet),
            ) as _i2.StackSet));
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
    final payload = (object as DescribeStackSetOutput);
    final result = <Object?>[
      const _i3.XmlElementName(
        'DescribeStackSetOutputResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.stackSet != null) {
      result
        ..add(const _i3.XmlElementName('StackSet'))
        ..add(serializers.serialize(
          payload.stackSet!,
          specifiedType: const FullType(_i2.StackSet),
        ));
    }
    return result;
  }
}
