// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.parameter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'parameter.g.dart';

/// The Parameter data type.
abstract class Parameter
    with _i1.AWSEquatable<Parameter>
    implements Built<Parameter, ParameterBuilder> {
  /// The Parameter data type.
  factory Parameter({
    String? parameterKey,
    String? parameterValue,
    bool? usePreviousValue,
    String? resolvedValue,
  }) {
    return _$Parameter._(
      parameterKey: parameterKey,
      parameterValue: parameterValue,
      usePreviousValue: usePreviousValue,
      resolvedValue: resolvedValue,
    );
  }

  /// The Parameter data type.
  factory Parameter.build([void Function(ParameterBuilder) updates]) =
      _$Parameter;

  const Parameter._();

  static const List<_i2.SmithySerializer<Parameter>> serializers = [
    ParameterAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ParameterBuilder b) {}

  /// The key associated with the parameter. If you don't specify a key and value for a particular parameter, CloudFormation uses the default value that's specified in your template.
  String? get parameterKey;

  /// The input value associated with the parameter.
  String? get parameterValue;

  /// During a stack update, use the existing parameter value that the stack is using for a given parameter key. If you specify `true`, do not specify a parameter value.
  bool? get usePreviousValue;

  /// Read-only. The value that corresponds to a SSM parameter key. This field is returned only for [SSM](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html#aws-ssm-parameter-types) parameter types in the template.
  String? get resolvedValue;
  @override
  List<Object?> get props => [
        parameterKey,
        parameterValue,
        usePreviousValue,
        resolvedValue,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Parameter')
      ..add(
        'parameterKey',
        parameterKey,
      )
      ..add(
        'parameterValue',
        parameterValue,
      )
      ..add(
        'usePreviousValue',
        usePreviousValue,
      )
      ..add(
        'resolvedValue',
        resolvedValue,
      );
    return helper.toString();
  }
}

class ParameterAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<Parameter> {
  const ParameterAwsQuerySerializer() : super('Parameter');

  @override
  Iterable<Type> get types => const [
        Parameter,
        _$Parameter,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Parameter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParameterBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'ParameterKey':
          result.parameterKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ParameterValue':
          result.parameterValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'UsePreviousValue':
          result.usePreviousValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ResolvedValue':
          result.resolvedValue = (serializers.deserialize(
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
    Parameter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ParameterResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final Parameter(
      :parameterKey,
      :parameterValue,
      :usePreviousValue,
      :resolvedValue
    ) = object;
    if (parameterKey != null) {
      result$
        ..add(const _i2.XmlElementName('ParameterKey'))
        ..add(serializers.serialize(
          parameterKey,
          specifiedType: const FullType(String),
        ));
    }
    if (parameterValue != null) {
      result$
        ..add(const _i2.XmlElementName('ParameterValue'))
        ..add(serializers.serialize(
          parameterValue,
          specifiedType: const FullType(String),
        ));
    }
    if (usePreviousValue != null) {
      result$
        ..add(const _i2.XmlElementName('UsePreviousValue'))
        ..add(serializers.serialize(
          usePreviousValue,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (resolvedValue != null) {
      result$
        ..add(const _i2.XmlElementName('ResolvedValue'))
        ..add(serializers.serialize(
          resolvedValue,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
