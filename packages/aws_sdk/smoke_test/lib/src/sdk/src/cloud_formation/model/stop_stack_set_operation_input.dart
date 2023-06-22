// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.stop_stack_set_operation_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i3;

part 'stop_stack_set_operation_input.g.dart';

abstract class StopStackSetOperationInput
    with
        _i1.HttpInput<StopStackSetOperationInput>,
        _i2.AWSEquatable<StopStackSetOperationInput>
    implements
        Built<StopStackSetOperationInput, StopStackSetOperationInputBuilder> {
  factory StopStackSetOperationInput({
    required String stackSetName,
    required String operationId,
    _i3.CallAs? callAs,
  }) {
    return _$StopStackSetOperationInput._(
      stackSetName: stackSetName,
      operationId: operationId,
      callAs: callAs,
    );
  }

  factory StopStackSetOperationInput.build(
          [void Function(StopStackSetOperationInputBuilder) updates]) =
      _$StopStackSetOperationInput;

  const StopStackSetOperationInput._();

  factory StopStackSetOperationInput.fromRequest(
    StopStackSetOperationInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<StopStackSetOperationInput>>
      serializers = [StopStackSetOperationInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StopStackSetOperationInputBuilder b) {}

  /// The name or unique ID of the stack set that you want to stop the operation for.
  String get stackSetName;

  /// The ID of the stack operation.
  String get operationId;

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
  StopStackSetOperationInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackSetName,
        operationId,
        callAs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StopStackSetOperationInput')
      ..add(
        'stackSetName',
        stackSetName,
      )
      ..add(
        'operationId',
        operationId,
      )
      ..add(
        'callAs',
        callAs,
      );
    return helper.toString();
  }
}

class StopStackSetOperationInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<StopStackSetOperationInput> {
  const StopStackSetOperationInputAwsQuerySerializer()
      : super('StopStackSetOperationInput');

  @override
  Iterable<Type> get types => const [
        StopStackSetOperationInput,
        _$StopStackSetOperationInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StopStackSetOperationInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StopStackSetOperationInputBuilder();
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
        case 'OperationId':
          result.operationId = (serializers.deserialize(
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
    StopStackSetOperationInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'StopStackSetOperationInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final StopStackSetOperationInput(:stackSetName, :operationId, :callAs) =
        object;
    result$
      ..add(const _i1.XmlElementName('StackSetName'))
      ..add(serializers.serialize(
        stackSetName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('OperationId'))
      ..add(serializers.serialize(
        operationId,
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
