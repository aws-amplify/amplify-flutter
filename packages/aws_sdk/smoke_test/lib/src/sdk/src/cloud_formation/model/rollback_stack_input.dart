// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.rollback_stack_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'rollback_stack_input.g.dart';

abstract class RollbackStackInput
    with _i1.HttpInput<RollbackStackInput>, _i2.AWSEquatable<RollbackStackInput>
    implements Built<RollbackStackInput, RollbackStackInputBuilder> {
  factory RollbackStackInput({
    required String stackName,
    String? roleArn,
    String? clientRequestToken,
  }) {
    return _$RollbackStackInput._(
      stackName: stackName,
      roleArn: roleArn,
      clientRequestToken: clientRequestToken,
    );
  }

  factory RollbackStackInput.build(
          [void Function(RollbackStackInputBuilder) updates]) =
      _$RollbackStackInput;

  const RollbackStackInput._();

  factory RollbackStackInput.fromRequest(
    RollbackStackInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RollbackStackInputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RollbackStackInputBuilder b) {}

  /// The name that's associated with the stack.
  String get stackName;

  /// The Amazon Resource Name (ARN) of an Identity and Access Management role that CloudFormation assumes to rollback the stack.
  String? get roleArn;

  /// A unique identifier for this `RollbackStack` request.
  String? get clientRequestToken;
  @override
  RollbackStackInput getPayload() => this;
  @override
  List<Object?> get props => [
        stackName,
        roleArn,
        clientRequestToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RollbackStackInput');
    helper.add(
      'stackName',
      stackName,
    );
    helper.add(
      'roleArn',
      roleArn,
    );
    helper.add(
      'clientRequestToken',
      clientRequestToken,
    );
    return helper.toString();
  }
}

class RollbackStackInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<RollbackStackInput> {
  const RollbackStackInputAwsQuerySerializer() : super('RollbackStackInput');

  @override
  Iterable<Type> get types => const [
        RollbackStackInput,
        _$RollbackStackInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RollbackStackInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RollbackStackInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'RoleARN':
          if (value != null) {
            result.roleArn = (serializers.deserialize(
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
    final payload = (object as RollbackStackInput);
    final result = <Object?>[
      const _i1.XmlElementName(
        'RollbackStackInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    result
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        payload.stackName,
        specifiedType: const FullType(String),
      ));
    if (payload.roleArn != null) {
      result
        ..add(const _i1.XmlElementName('RoleARN'))
        ..add(serializers.serialize(
          payload.roleArn!,
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
    return result;
  }
}
