// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.config_service.model.conformance_pack_input_parameter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'conformance_pack_input_parameter.g.dart';

/// Input parameters in the form of key-value pairs for the conformance pack, both of which you define. Keys can have a maximum character length of 255 characters, and values can have a maximum length of 4096 characters.
abstract class ConformancePackInputParameter
    with
        _i1.AWSEquatable<ConformancePackInputParameter>
    implements
        Built<ConformancePackInputParameter,
            ConformancePackInputParameterBuilder> {
  /// Input parameters in the form of key-value pairs for the conformance pack, both of which you define. Keys can have a maximum character length of 255 characters, and values can have a maximum length of 4096 characters.
  factory ConformancePackInputParameter({
    required String parameterName,
    required String parameterValue,
  }) {
    return _$ConformancePackInputParameter._(
      parameterName: parameterName,
      parameterValue: parameterValue,
    );
  }

  /// Input parameters in the form of key-value pairs for the conformance pack, both of which you define. Keys can have a maximum character length of 255 characters, and values can have a maximum length of 4096 characters.
  factory ConformancePackInputParameter.build(
          [void Function(ConformancePackInputParameterBuilder) updates]) =
      _$ConformancePackInputParameter;

  const ConformancePackInputParameter._();

  static const List<_i2.SmithySerializer<ConformancePackInputParameter>>
      serializers = [ConformancePackInputParameterAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ConformancePackInputParameterBuilder b) {}

  /// One part of a key-value pair.
  String get parameterName;

  /// Another part of the key-value pair.
  String get parameterValue;
  @override
  List<Object?> get props => [
        parameterName,
        parameterValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ConformancePackInputParameter')
      ..add(
        'parameterName',
        parameterName,
      )
      ..add(
        'parameterValue',
        parameterValue,
      );
    return helper.toString();
  }
}

class ConformancePackInputParameterAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<ConformancePackInputParameter> {
  const ConformancePackInputParameterAwsJson11Serializer()
      : super('ConformancePackInputParameter');

  @override
  Iterable<Type> get types => const [
        ConformancePackInputParameter,
        _$ConformancePackInputParameter,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  ConformancePackInputParameter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConformancePackInputParameterBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ParameterName':
          result.parameterName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ParameterValue':
          result.parameterValue = (serializers.deserialize(
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
    ConformancePackInputParameter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final ConformancePackInputParameter(:parameterName, :parameterValue) =
        object;
    result$.addAll([
      'ParameterName',
      serializers.serialize(
        parameterName,
        specifiedType: const FullType(String),
      ),
      'ParameterValue',
      serializers.serialize(
        parameterValue,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
