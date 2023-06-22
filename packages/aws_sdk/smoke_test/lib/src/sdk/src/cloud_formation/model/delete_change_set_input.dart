// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.delete_change_set_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'delete_change_set_input.g.dart';

/// The input for the DeleteChangeSet action.
abstract class DeleteChangeSetInput
    with
        _i1.HttpInput<DeleteChangeSetInput>,
        _i2.AWSEquatable<DeleteChangeSetInput>
    implements Built<DeleteChangeSetInput, DeleteChangeSetInputBuilder> {
  /// The input for the DeleteChangeSet action.
  factory DeleteChangeSetInput({
    required String changeSetName,
    String? stackName,
  }) {
    return _$DeleteChangeSetInput._(
      changeSetName: changeSetName,
      stackName: stackName,
    );
  }

  /// The input for the DeleteChangeSet action.
  factory DeleteChangeSetInput.build(
          [void Function(DeleteChangeSetInputBuilder) updates]) =
      _$DeleteChangeSetInput;

  const DeleteChangeSetInput._();

  factory DeleteChangeSetInput.fromRequest(
    DeleteChangeSetInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteChangeSetInput>> serializers = [
    DeleteChangeSetInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteChangeSetInputBuilder b) {}

  /// The name or Amazon Resource Name (ARN) of the change set that you want to delete.
  String get changeSetName;

  /// If you specified the name of a change set to delete, specify the stack name or Amazon Resource Name (ARN) that's associated with it.
  String? get stackName;
  @override
  DeleteChangeSetInput getPayload() => this;
  @override
  List<Object?> get props => [
        changeSetName,
        stackName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteChangeSetInput')
      ..add(
        'changeSetName',
        changeSetName,
      )
      ..add(
        'stackName',
        stackName,
      );
    return helper.toString();
  }
}

class DeleteChangeSetInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteChangeSetInput> {
  const DeleteChangeSetInputAwsQuerySerializer()
      : super('DeleteChangeSetInput');

  @override
  Iterable<Type> get types => const [
        DeleteChangeSetInput,
        _$DeleteChangeSetInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteChangeSetInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteChangeSetInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ChangeSetName':
          result.changeSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteChangeSetInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteChangeSetInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DeleteChangeSetInput(:changeSetName, :stackName) = object;
    result$
      ..add(const _i1.XmlElementName('ChangeSetName'))
      ..add(serializers.serialize(
        changeSetName,
        specifiedType: const FullType(String),
      ));
    if (stackName != null) {
      result$
        ..add(const _i1.XmlElementName('StackName'))
        ..add(serializers.serialize(
          stackName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
