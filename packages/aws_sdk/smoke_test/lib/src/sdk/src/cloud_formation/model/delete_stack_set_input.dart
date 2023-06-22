// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.delete_stack_set_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i3;

part 'delete_stack_set_input.g.dart';

abstract class DeleteStackSetInput
    with
        _i1.HttpInput<DeleteStackSetInput>,
        _i2.AWSEquatable<DeleteStackSetInput>
    implements Built<DeleteStackSetInput, DeleteStackSetInputBuilder> {
  factory DeleteStackSetInput({
    required String stackSetName,
    _i3.CallAs? callAs,
  }) {
    return _$DeleteStackSetInput._(
      stackSetName: stackSetName,
      callAs: callAs,
    );
  }

  factory DeleteStackSetInput.build(
          [void Function(DeleteStackSetInputBuilder) updates]) =
      _$DeleteStackSetInput;

  const DeleteStackSetInput._();

  factory DeleteStackSetInput.fromRequest(
    DeleteStackSetInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DeleteStackSetInput>> serializers = [
    DeleteStackSetInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DeleteStackSetInputBuilder b) {}

  /// The name or unique ID of the stack set that you're deleting. You can obtain this value by running ListStackSets.
  String get stackSetName;

  /// \[Service-managed permissions\] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.
  ///
  /// By default, `SELF` is specified. Use `SELF` for stack sets with self-managed permissions.
  ///
  /// *   If you are signed in to the management account, specify `SELF`.
  ///
  /// *   If you are signed in to a delegated administrator account, specify `DELEGATED_ADMIN`.
  ///
  ///     Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see [Register a delegated administrator](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html) in the _CloudFormation User Guide_.
  _i3.CallAs? get callAs;
  @override
  DeleteStackSetInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackSetName,
        callAs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DeleteStackSetInput')
      ..add(
        'stackSetName',
        stackSetName,
      )
      ..add(
        'callAs',
        callAs,
      );
    return helper.toString();
  }
}

class DeleteStackSetInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DeleteStackSetInput> {
  const DeleteStackSetInputAwsQuerySerializer() : super('DeleteStackSetInput');

  @override
  Iterable<Type> get types => const [
        DeleteStackSetInput,
        _$DeleteStackSetInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DeleteStackSetInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteStackSetInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackSetName':
          result.stackSetName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CallAs':
          result.callAs = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.CallAs),
          ) as _i3.CallAs);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DeleteStackSetInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DeleteStackSetInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DeleteStackSetInput(:stackSetName, :callAs) = object;
    result$
      ..add(const _i1.XmlElementName('StackSetName'))
      ..add(serializers.serialize(
        stackSetName,
        specifiedType: const FullType(String),
      ));
    if (callAs != null) {
      result$
        ..add(const _i1.XmlElementName('CallAs'))
        ..add(serializers.serialize(
          callAs,
          specifiedType: const FullType.nullable(_i3.CallAs),
        ));
    }
    return result$;
  }
}
