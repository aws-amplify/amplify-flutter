// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.delete_stack_set_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_stack_set_output.g.dart';

abstract class DeleteStackSetOutput
    with _i1.AWSEquatable<DeleteStackSetOutput>
    implements
        Built<DeleteStackSetOutput, DeleteStackSetOutputBuilder>,
        _i2.EmptyPayload {
  factory DeleteStackSetOutput() {
    return _$DeleteStackSetOutput._();
  }

  factory DeleteStackSetOutput.build(
          [void Function(DeleteStackSetOutputBuilder) updates]) =
      _$DeleteStackSetOutput;

  const DeleteStackSetOutput._();

  /// Constructs a [DeleteStackSetOutput] from a [payload] and [response].
  factory DeleteStackSetOutput.fromResponse(
    DeleteStackSetOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteStackSetOutput>> serializers = [
    DeleteStackSetOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteStackSetOutputBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteStackSetOutput');
    return helper.toString();
  }
}

class DeleteStackSetOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteStackSetOutput> {
  const DeleteStackSetOutputAwsQuerySerializer()
      : super('DeleteStackSetOutput');

  @override
  Iterable<Type> get types => const [
        DeleteStackSetOutput,
        _$DeleteStackSetOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteStackSetOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteStackSetOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteStackSetOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteStackSetOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];

    return result$;
  }
}
