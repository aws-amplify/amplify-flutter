// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.execute_change_set_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'execute_change_set_input.g.dart';

/// The input for the ExecuteChangeSet action.
abstract class ExecuteChangeSetInput
    with
        _i1.HttpInput<ExecuteChangeSetInput>,
        _i2.AWSEquatable<ExecuteChangeSetInput>
    implements Built<ExecuteChangeSetInput, ExecuteChangeSetInputBuilder> {
  /// The input for the ExecuteChangeSet action.
  factory ExecuteChangeSetInput({
    required String changeSetName,
    String? stackName,
    String? clientRequestToken,
    bool? disableRollback,
  }) {
    return _$ExecuteChangeSetInput._(
      changeSetName: changeSetName,
      stackName: stackName,
      clientRequestToken: clientRequestToken,
      disableRollback: disableRollback,
    );
  }

  /// The input for the ExecuteChangeSet action.
  factory ExecuteChangeSetInput.build(
          [void Function(ExecuteChangeSetInputBuilder) updates]) =
      _$ExecuteChangeSetInput;

  const ExecuteChangeSetInput._();

  factory ExecuteChangeSetInput.fromRequest(
    ExecuteChangeSetInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ExecuteChangeSetInput>> serializers = [
    ExecuteChangeSetInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExecuteChangeSetInputBuilder b) {}

  /// The name or Amazon Resource Name (ARN) of the change set that you want use to update the specified stack.
  String get changeSetName;

  /// If you specified the name of a change set, specify the stack name or Amazon Resource Name (ARN) that's associated with the change set you want to execute.
  String? get stackName;

  /// A unique identifier for this `ExecuteChangeSet` request. Specify this token if you plan to retry requests so that CloudFormation knows that you're not attempting to execute a change set to update a stack with the same name. You might retry `ExecuteChangeSet` requests to ensure that CloudFormation successfully received them.
  String? get clientRequestToken;

  /// Preserves the state of previously provisioned resources when an operation fails. This parameter can't be specified when the `OnStackFailure` parameter to the [CreateChangeSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html) API operation was specified.
  ///
  /// *   `True` \- if the stack creation fails, do nothing. This is equivalent to specifying `DO_NOTHING` for the `OnStackFailure` parameter to the [CreateChangeSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html) API operation.
  ///
  /// *   `False` \- if the stack creation fails, roll back the stack. This is equivalent to specifying `ROLLBACK` for the `OnStackFailure` parameter to the [CreateChangeSet](https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateChangeSet.html) API operation.
  ///
  ///
  /// Default: `True`
  bool? get disableRollback;
  @override
  ExecuteChangeSetInput getPayload() => this;
  @override
  List<Object?> get props => [
        changeSetName,
        stackName,
        clientRequestToken,
        disableRollback,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ExecuteChangeSetInput')
      ..add(
        'changeSetName',
        changeSetName,
      )
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'clientRequestToken',
        clientRequestToken,
      )
      ..add(
        'disableRollback',
        disableRollback,
      );
    return helper.toString();
  }
}

class ExecuteChangeSetInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<ExecuteChangeSetInput> {
  const ExecuteChangeSetInputAwsQuerySerializer()
      : super('ExecuteChangeSetInput');

  @override
  Iterable<Type> get types => const [
        ExecuteChangeSetInput,
        _$ExecuteChangeSetInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ExecuteChangeSetInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExecuteChangeSetInputBuilder();
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
        case 'ClientRequestToken':
          result.clientRequestToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DisableRollback':
          result.disableRollback = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ExecuteChangeSetInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ExecuteChangeSetInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ExecuteChangeSetInput(
      :changeSetName,
      :stackName,
      :clientRequestToken,
      :disableRollback
    ) = object;
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
    if (clientRequestToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientRequestToken'))
        ..add(serializers.serialize(
          clientRequestToken,
          specifiedType: const FullType(String),
        ));
    }
    if (disableRollback != null) {
      result$
        ..add(const _i1.XmlElementName('DisableRollback'))
        ..add(serializers.serialize(
          disableRollback,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}
