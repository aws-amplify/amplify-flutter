// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.signal_resource_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/resource_signal_status.dart'
    as _i3;

part 'signal_resource_input.g.dart';

/// The input for the SignalResource action.
abstract class SignalResourceInput
    with
        _i1.HttpInput<SignalResourceInput>,
        _i2.AWSEquatable<SignalResourceInput>
    implements Built<SignalResourceInput, SignalResourceInputBuilder> {
  /// The input for the SignalResource action.
  factory SignalResourceInput({
    required String stackName,
    required String logicalResourceId,
    required String uniqueId,
    required _i3.ResourceSignalStatus status,
  }) {
    return _$SignalResourceInput._(
      stackName: stackName,
      logicalResourceId: logicalResourceId,
      uniqueId: uniqueId,
      status: status,
    );
  }

  /// The input for the SignalResource action.
  factory SignalResourceInput.build(
          [void Function(SignalResourceInputBuilder) updates]) =
      _$SignalResourceInput;

  const SignalResourceInput._();

  factory SignalResourceInput.fromRequest(
    SignalResourceInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<SignalResourceInput>> serializers = [
    SignalResourceInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SignalResourceInputBuilder b) {}

  /// The stack name or unique stack ID that includes the resource that you want to signal.
  String get stackName;

  /// The logical ID of the resource that you want to signal. The logical ID is the name of the resource that given in the template.
  String get logicalResourceId;

  /// A unique ID of the signal. When you signal Amazon EC2 instances or Auto Scaling groups, specify the instance ID that you are signaling as the unique ID. If you send multiple signals to a single resource (such as signaling a wait condition), each signal requires a different unique ID.
  String get uniqueId;

  /// The status of the signal, which is either success or failure. A failure signal causes CloudFormation to immediately fail the stack creation or update.
  _i3.ResourceSignalStatus get status;
  @override
  SignalResourceInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        logicalResourceId,
        uniqueId,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SignalResourceInput')
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'logicalResourceId',
        logicalResourceId,
      )
      ..add(
        'uniqueId',
        uniqueId,
      )
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class SignalResourceInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<SignalResourceInput> {
  const SignalResourceInputAwsQuerySerializer() : super('SignalResourceInput');

  @override
  Iterable<Type> get types => const [
        SignalResourceInput,
        _$SignalResourceInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  SignalResourceInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignalResourceInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'LogicalResourceId':
          result.logicalResourceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UniqueId':
          result.uniqueId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Status':
          result.status = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.ResourceSignalStatus),
          ) as _i3.ResourceSignalStatus);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SignalResourceInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'SignalResourceInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final SignalResourceInput(
      :stackName,
      :logicalResourceId,
      :uniqueId,
      :status
    ) = object;
    result$
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        stackName,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('LogicalResourceId'))
      ..add(serializers.serialize(
        logicalResourceId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('UniqueId'))
      ..add(serializers.serialize(
        uniqueId,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i1.XmlElementName('Status'))
      ..add(serializers.serialize(
        status,
        specifiedType: const FullType.nullable(_i3.ResourceSignalStatus),
      ));
    return result$;
  }
}
