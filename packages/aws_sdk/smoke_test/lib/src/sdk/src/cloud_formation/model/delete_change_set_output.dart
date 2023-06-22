// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.delete_change_set_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'delete_change_set_output.g.dart';

/// The output for the DeleteChangeSet action.
abstract class DeleteChangeSetOutput
    with _i1.AWSEquatable<DeleteChangeSetOutput>
    implements
        Built<DeleteChangeSetOutput, DeleteChangeSetOutputBuilder>,
        _i2.EmptyPayload {
  /// The output for the DeleteChangeSet action.
  factory DeleteChangeSetOutput() {
    return _$DeleteChangeSetOutput._();
  }

  /// The output for the DeleteChangeSet action.
  factory DeleteChangeSetOutput.build(
          [void Function(DeleteChangeSetOutputBuilder) updates]) =
      _$DeleteChangeSetOutput;

  const DeleteChangeSetOutput._();

  /// Constructs a [DeleteChangeSetOutput] from a [payload] and [response].
  factory DeleteChangeSetOutput.fromResponse(
    DeleteChangeSetOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<DeleteChangeSetOutput>> serializers = [
    DeleteChangeSetOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteChangeSetOutputBuilder b) {}
  @override
  List<Object?> get props => [];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteChangeSetOutput');
    return helper.toString();
  }
}

class DeleteChangeSetOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<DeleteChangeSetOutput> {
  const DeleteChangeSetOutputAwsQuerySerializer()
      : super('DeleteChangeSetOutput');

  @override
  Iterable<Type> get types => const [
        DeleteChangeSetOutput,
        _$DeleteChangeSetOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteChangeSetOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return DeleteChangeSetOutputBuilder().build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteChangeSetOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DeleteChangeSetOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];

    return result$;
  }
}
