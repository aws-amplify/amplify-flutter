// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.custom_policy_details; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'custom_policy_details.g.dart';

/// Provides the runtime system, policy definition, and whether debug logging enabled. You can specify the following CustomPolicyDetails parameter values only for Config Custom Policy rules.
abstract class CustomPolicyDetails
    with _i1.AWSEquatable<CustomPolicyDetails>
    implements Built<CustomPolicyDetails, CustomPolicyDetailsBuilder> {
  /// Provides the runtime system, policy definition, and whether debug logging enabled. You can specify the following CustomPolicyDetails parameter values only for Config Custom Policy rules.
  factory CustomPolicyDetails({
    required String policyRuntime,
    required String policyText,
    bool? enableDebugLogDelivery,
  }) {
    enableDebugLogDelivery ??= false;
    return _$CustomPolicyDetails._(
      policyRuntime: policyRuntime,
      policyText: policyText,
      enableDebugLogDelivery: enableDebugLogDelivery,
    );
  }

  /// Provides the runtime system, policy definition, and whether debug logging enabled. You can specify the following CustomPolicyDetails parameter values only for Config Custom Policy rules.
  factory CustomPolicyDetails.build(
          [void Function(CustomPolicyDetailsBuilder) updates]) =
      _$CustomPolicyDetails;

  const CustomPolicyDetails._();

  static const List<_i2.SmithySerializer<CustomPolicyDetails>> serializers = [
    CustomPolicyDetailsAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CustomPolicyDetailsBuilder b) {
    b.enableDebugLogDelivery = false;
  }

  /// The runtime system for your Config Custom Policy rule. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the [Guard GitHub Repository](https://github.com/aws-cloudformation/cloudformation-guard).
  String get policyRuntime;

  /// The policy definition containing the logic for your Config Custom Policy rule.
  String get policyText;

  /// The boolean expression for enabling debug logging for your Config Custom Policy rule. The default value is `false`.
  bool get enableDebugLogDelivery;
  @override
  List<Object?> get props => [
        policyRuntime,
        policyText,
        enableDebugLogDelivery,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CustomPolicyDetails')
      ..add(
        'policyRuntime',
        policyRuntime,
      )
      ..add(
        'policyText',
        policyText,
      )
      ..add(
        'enableDebugLogDelivery',
        enableDebugLogDelivery,
      );
    return helper.toString();
  }
}

class CustomPolicyDetailsAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<CustomPolicyDetails> {
  const CustomPolicyDetailsAwsJson11Serializer() : super('CustomPolicyDetails');

  @override
  Iterable<Type> get types => const [
        CustomPolicyDetails,
        _$CustomPolicyDetails,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  CustomPolicyDetails deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomPolicyDetailsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'PolicyRuntime':
          result.policyRuntime = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'PolicyText':
          result.policyText = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EnableDebugLogDelivery':
          result.enableDebugLogDelivery = (serializers.deserialize(
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
    CustomPolicyDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final CustomPolicyDetails(
      :policyRuntime,
      :policyText,
      :enableDebugLogDelivery
    ) = object;
    result$.addAll([
      'PolicyRuntime',
      serializers.serialize(
        policyRuntime,
        specifiedType: const FullType(String),
      ),
      'PolicyText',
      serializers.serialize(
        policyText,
        specifiedType: const FullType(String),
      ),
      'EnableDebugLogDelivery',
      serializers.serialize(
        enableDebugLogDelivery,
        specifiedType: const FullType(bool),
      ),
    ]);
    return result$;
  }
}
