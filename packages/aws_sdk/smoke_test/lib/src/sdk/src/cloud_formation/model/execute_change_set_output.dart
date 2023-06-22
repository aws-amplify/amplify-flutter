// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.execute_change_set_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'execute_change_set_output.g.dart';

/// The output for the ExecuteChangeSet action.
abstract class ExecuteChangeSetOutput
    with _i1.AWSEquatable<ExecuteChangeSetOutput>
    implements
        Built<ExecuteChangeSetOutput, ExecuteChangeSetOutputBuilder>,
        _i2.EmptyPayload {
  /// The output for the ExecuteChangeSet action.
  factory ExecuteChangeSetOutput() {
    return _$ExecuteChangeSetOutput._();
  }

  /// The output for the ExecuteChangeSet action.
  factory ExecuteChangeSetOutput.build(
          [void Function(ExecuteChangeSetOutputBuilder) updates]) =
      _$ExecuteChangeSetOutput;

  const ExecuteChangeSetOutput._();

  /// Constructs a [ExecuteChangeSetOutput] from a [payload] and [response].
  factory ExecuteChangeSetOutput.fromResponse(
    ExecuteChangeSetOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ExecuteChangeSetOutput>> serializers =
      [ExecuteChangeSetOutputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExecuteChangeSetOutputBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExecuteChangeSetOutput');
    return helper.toString();
  }
}

class ExecuteChangeSetOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<ExecuteChangeSetOutput> {
  const ExecuteChangeSetOutputAwsQuerySerializer()
      : super('ExecuteChangeSetOutput');

  @override
  Iterable<Type> get types => const [
        ExecuteChangeSetOutput,
        _$ExecuteChangeSetOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ExecuteChangeSetOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return ExecuteChangeSetOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ExecuteChangeSetOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ExecuteChangeSetOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];

    return result$;
  }
}
