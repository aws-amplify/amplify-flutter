// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.update_termination_protection_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'update_termination_protection_input.g.dart';

abstract class UpdateTerminationProtectionInput
    with
        _i1.HttpInput<UpdateTerminationProtectionInput>,
        _i2.AWSEquatable<UpdateTerminationProtectionInput>
    implements
        Built<UpdateTerminationProtectionInput,
            UpdateTerminationProtectionInputBuilder> {
  factory UpdateTerminationProtectionInput({
    bool? enableTerminationProtection,
    required String stackName,
  }) {
    enableTerminationProtection ??= false;
    return _$UpdateTerminationProtectionInput._(
      enableTerminationProtection: enableTerminationProtection,
      stackName: stackName,
    );
  }

  factory UpdateTerminationProtectionInput.build(
          [void Function(UpdateTerminationProtectionInputBuilder) updates]) =
      _$UpdateTerminationProtectionInput;

  const UpdateTerminationProtectionInput._();

  factory UpdateTerminationProtectionInput.fromRequest(
    UpdateTerminationProtectionInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<UpdateTerminationProtectionInput>>
      serializers = [UpdateTerminationProtectionInputAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(UpdateTerminationProtectionInputBuilder b) {
    b.enableTerminationProtection = false;
  }

  /// Whether to enable termination protection on the specified stack.
  bool get enableTerminationProtection;

  /// The name or unique ID of the stack for which you want to set termination protection.
  String get stackName;
  @override
  UpdateTerminationProtectionInput getPayload() => this;
  @override
  List<Object?> get props => [
        enableTerminationProtection,
        stackName,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('UpdateTerminationProtectionInput')
          ..add(
            'enableTerminationProtection',
            enableTerminationProtection,
          )
          ..add(
            'stackName',
            stackName,
          );
    return helper.toString();
  }
}

class UpdateTerminationProtectionInputAwsQuerySerializer
    extends _i1.StructuredSmithySerializer<UpdateTerminationProtectionInput> {
  const UpdateTerminationProtectionInputAwsQuerySerializer()
      : super('UpdateTerminationProtectionInput');

  @override
  Iterable<Type> get types => const [
        UpdateTerminationProtectionInput,
        _$UpdateTerminationProtectionInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  UpdateTerminationProtectionInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTerminationProtectionInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'EnableTerminationProtection':
          result.enableTerminationProtection = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
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
    UpdateTerminationProtectionInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'UpdateTerminationProtectionInputResponse',
        _i1.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final UpdateTerminationProtectionInput(
      :enableTerminationProtection,
      :stackName
    ) = object;
    result$
      ..add(const _i1.XmlElementName('EnableTerminationProtection'))
      ..add(serializers.serialize(
        enableTerminationProtection,
        specifiedType: const FullType.nullable(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('StackName'))
      ..add(serializers.serialize(
        stackName,
        specifiedType: const FullType(String),
      ));
    return result$;
  }
}
