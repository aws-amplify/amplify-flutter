// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

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

  static const List<_i1.SmithySerializer> serializers = [
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

  /// Preserves the state of previously provisioned resources when an operation fails.
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
    final helper = newBuiltValueToStringHelper('ExecuteChangeSetInput');
    helper.add(
      'changeSetName',
      changeSetName,
    );
    helper.add(
      'stackName',
      stackName,
    );
    helper.add(
      'clientRequestToken',
      clientRequestToken,
    );
    helper.add(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'ChangeSetName':
          result.changeSetName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'StackName':
          if (value != null) {
            result.stackName = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ClientRequestToken':
          if (value != null) {
            result.clientRequestToken = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'DisableRollback':
          if (value != null) {
            result.disableRollback = (serializers.deserialize(
              value,
              specifiedType: const FullType(bool),
            ) as bool);
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
    final payload = (object as ExecuteChangeSetInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'ExecuteChangeSetInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('ChangeSetName'))
      ..add(serializers.serialize(
        payload.changeSetName,
        specifiedType: const FullType(String),
      ));
    if (payload.stackName != null) {
      result
        ..add(const _i1.XmlElementName('StackName'))
        ..add(serializers.serialize(
          payload.stackName!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.clientRequestToken != null) {
      result
        ..add(const _i1.XmlElementName('ClientRequestToken'))
        ..add(serializers.serialize(
          payload.clientRequestToken!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.disableRollback != null) {
      result
        ..add(const _i1.XmlElementName('DisableRollback'))
        ..add(serializers.serialize(
          payload.disableRollback!,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result;
  }
}
