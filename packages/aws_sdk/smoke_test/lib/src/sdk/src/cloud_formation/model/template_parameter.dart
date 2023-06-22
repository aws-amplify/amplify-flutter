// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.template_parameter; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'template_parameter.g.dart';

/// The TemplateParameter data type.
abstract class TemplateParameter
    with _i1.AWSEquatable<TemplateParameter>
    implements Built<TemplateParameter, TemplateParameterBuilder> {
  /// The TemplateParameter data type.
  factory TemplateParameter({
    String? parameterKey,
    String? defaultValue,
    bool? noEcho,
    String? description,
  }) {
    return _$TemplateParameter._(
      parameterKey: parameterKey,
      defaultValue: defaultValue,
      noEcho: noEcho,
      description: description,
    );
  }

  /// The TemplateParameter data type.
  factory TemplateParameter.build(
      [void Function(TemplateParameterBuilder) updates]) = _$TemplateParameter;

  const TemplateParameter._();

  static const List<_i2.SmithySerializer<TemplateParameter>> serializers = [
    TemplateParameterAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(TemplateParameterBuilder b) {}

  /// The name associated with the parameter.
  String? get parameterKey;

  /// The default value associated with the parameter.
  String? get defaultValue;

  /// Flag indicating whether the parameter should be displayed as plain text in logs and UIs.
  bool? get noEcho;

  /// User defined description associated with the parameter.
  String? get description;
  @override
  List<Object?> get props => [
        parameterKey,
        defaultValue,
        noEcho,
        description,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('TemplateParameter')
      ..add(
        'parameterKey',
        parameterKey,
      )
      ..add(
        'defaultValue',
        defaultValue,
      )
      ..add(
        'noEcho',
        noEcho,
      )
      ..add(
        'description',
        description,
      );
    return helper.toString();
  }
}

class TemplateParameterAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<TemplateParameter> {
  const TemplateParameterAwsQuerySerializer() : super('TemplateParameter');

  @override
  Iterable<Type> get types => const [
        TemplateParameter,
        _$TemplateParameter,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  TemplateParameter deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TemplateParameterBuilder();
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
        case 'DefaultValue':
          result.defaultValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'NoEcho':
          result.noEcho = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Description':
          result.description = (serializers.deserialize(
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
    TemplateParameter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'TemplateParameterResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final TemplateParameter(
      :parameterKey,
      :defaultValue,
      :noEcho,
      :description
    ) = object;
    if (parameterKey != null) {
      result$
        ..add(const _i2.XmlElementName('ParameterKey'))
        ..add(serializers.serialize(
          parameterKey,
          specifiedType: const FullType(String),
        ));
    }
    if (defaultValue != null) {
      result$
        ..add(const _i2.XmlElementName('DefaultValue'))
        ..add(serializers.serialize(
          defaultValue,
          specifiedType: const FullType(String),
        ));
    }
    if (noEcho != null) {
      result$
        ..add(const _i2.XmlElementName('NoEcho'))
        ..add(serializers.serialize(
          noEcho,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i2.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
