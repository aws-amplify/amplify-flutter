// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.detect_stack_set_drift_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/call_as.dart'
    as _i4;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_set_operation_preferences.dart'
    as _i3;

part 'detect_stack_set_drift_input.g.dart';

abstract class DetectStackSetDriftInput
    with
        _i1.HttpInput<DetectStackSetDriftInput>,
        _i2.AWSEquatable<DetectStackSetDriftInput>
    implements
        Built<DetectStackSetDriftInput, DetectStackSetDriftInputBuilder> {
  factory DetectStackSetDriftInput({
    required String stackSetName,
    _i3.StackSetOperationPreferences? operationPreferences,
    String? operationId,
    _i4.CallAs? callAs,
  }) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      operationId ??= '00000000-0000-4000-8000-000000000000';
    } else {
      operationId ??= _i2.uuid(secure: true);
    }
    return _$DetectStackSetDriftInput._(
      stackSetName: stackSetName,
      operationPreferences: operationPreferences,
      operationId: operationId,
      callAs: callAs,
    );
  }

  factory DetectStackSetDriftInput.build(
          [void Function(DetectStackSetDriftInputBuilder) updates]) =
      _$DetectStackSetDriftInput;

  const DetectStackSetDriftInput._();

  factory DetectStackSetDriftInput.fromRequest(
    DetectStackSetDriftInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<DetectStackSetDriftInput>>
      serializers = [DetectStackSetDriftInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(DetectStackSetDriftInputBuilder b) {
    if (const bool.hasEnvironment('SMITHY_TEST')) {
      b.operationId = '00000000-0000-4000-8000-000000000000';
    } else {
      b.operationId = _i2.uuid(secure: true);
    }
  }

  /// The name of the stack set on which to perform the drift detection operation.
  String get stackSetName;

  /// The user-specified preferences for how CloudFormation performs a stack set operation.
  ///
  /// For more information about maximum concurrent accounts and failure tolerance, see [Stack set operation options](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options).
  _i3.StackSetOperationPreferences? get operationPreferences;

  /// _The ID of the stack set operation._
  String? get operationId;

  /// \[Service-managed permissions\] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.
  ///
  /// By default, `SELF` is specified. Use `SELF` for stack sets with self-managed permissions.
  ///
  /// *   If you are signed in to the management account, specify `SELF`.
  ///
  /// *   If you are signed in to a delegated administrator account, specify `DELEGATED_ADMIN`.
  ///
  ///     Your Amazon Web Services account must be registered as a delegated administrator in the management account. For more information, see [Register a delegated administrator](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html) in the _CloudFormation User Guide_.
  _i4.CallAs? get callAs;
  @override
  DetectStackSetDriftInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackSetName,
        operationPreferences,
        operationId,
        callAs,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DetectStackSetDriftInput')
      ..add(
        'stackSetName',
        stackSetName,
      )
      ..add(
        'operationPreferences',
        operationPreferences,
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

class DetectStackSetDriftInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<DetectStackSetDriftInput> {
  const DetectStackSetDriftInputAwsQuerySerializer()
      : super('DetectStackSetDriftInput');

  @override
  Iterable<Type> get types => const [
        DetectStackSetDriftInput,
        _$DetectStackSetDriftInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  DetectStackSetDriftInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DetectStackSetDriftInputBuilder();
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
        case 'OperationPreferences':
          result.operationPreferences.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.StackSetOperationPreferences),
          ) as _i3.StackSetOperationPreferences));
        case 'OperationId':
          result.operationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CallAs':
          result.callAs = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.CallAs),
          ) as _i4.CallAs);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DetectStackSetDriftInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'DetectStackSetDriftInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final DetectStackSetDriftInput(
      :stackSetName,
      :operationPreferences,
      :operationId,
      :callAs
    ) = object;
    result$
      ..add(const _i1.XmlElementName('StackSetName'))
      ..add(serializers.serialize(
        stackSetName,
        specifiedType: const FullType(String),
      ));
    if (operationPreferences != null) {
      result$
        ..add(const _i1.XmlElementName('OperationPreferences'))
        ..add(serializers.serialize(
          operationPreferences,
          specifiedType: const FullType(_i3.StackSetOperationPreferences),
        ));
    }
    if (operationId != null) {
      result$
        ..add(const _i1.XmlElementName('OperationId'))
        ..add(serializers.serialize(
          operationId,
          specifiedType: const FullType(String),
        ));
    }
    if (callAs != null) {
      result$
        ..add(const _i1.XmlElementName('CallAs'))
        ..add(serializers.serialize(
          callAs,
          specifiedType: const FullType.nullable(_i4.CallAs),
        ));
    }
    return result$;
  }
}
