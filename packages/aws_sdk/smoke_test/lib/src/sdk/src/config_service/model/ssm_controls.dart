// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.ssm_controls; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'ssm_controls.g.dart';

/// Amazon Web Services Systems Manager (SSM) specific remediation controls.
abstract class SsmControls
    with _i1.AWSEquatable<SsmControls>
    implements Built<SsmControls, SsmControlsBuilder> {
  /// Amazon Web Services Systems Manager (SSM) specific remediation controls.
  factory SsmControls({
    int? concurrentExecutionRatePercentage,
    int? errorPercentage,
  }) {
    return _$SsmControls._(
      concurrentExecutionRatePercentage: concurrentExecutionRatePercentage,
      errorPercentage: errorPercentage,
    );
  }

  /// Amazon Web Services Systems Manager (SSM) specific remediation controls.
  factory SsmControls.build([void Function(SsmControlsBuilder) updates]) =
      _$SsmControls;

  const SsmControls._();

  static const List<_i2.SmithySerializer<SsmControls>> serializers = [
    SsmControlsAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SsmControlsBuilder b) {}

  /// The maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. You can specify a percentage, such as 10%. The default value is 10.
  int? get concurrentExecutionRatePercentage;

  /// The percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule. You can specify a percentage of errors, for example 10%. If you do not specifiy a percentage, the default is 50%. For example, if you set the ErrorPercentage to 40% for 10 non-compliant resources, then SSM stops running the automations when the fifth error is received.
  int? get errorPercentage;
  @override
  List<Object?> get props => [
        concurrentExecutionRatePercentage,
        errorPercentage,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SsmControls')
      ..add(
        'concurrentExecutionRatePercentage',
        concurrentExecutionRatePercentage,
      )
      ..add(
        'errorPercentage',
        errorPercentage,
      );
    return helper.toString();
  }
}

class SsmControlsAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<SsmControls> {
  const SsmControlsAwsJson11Serializer() : super('SsmControls');

  @override
  Iterable<Type> get types => const [
        SsmControls,
        _$SsmControls,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  SsmControls deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SsmControlsBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ConcurrentExecutionRatePercentage':
          result.concurrentExecutionRatePercentage = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'ErrorPercentage':
          result.errorPercentage = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SsmControls object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final SsmControls(:concurrentExecutionRatePercentage, :errorPercentage) =
        object;
    if (concurrentExecutionRatePercentage != null) {
      result$
        ..add('ConcurrentExecutionRatePercentage')
        ..add(serializers.serialize(
          concurrentExecutionRatePercentage,
          specifiedType: const FullType(int),
        ));
    }
    if (errorPercentage != null) {
      result$
        ..add('ErrorPercentage')
        ..add(serializers.serialize(
          errorPercentage,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
