// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.parameter_declaration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter_constraints.dart'
    as _i2;

part 'parameter_declaration.g.dart';

/// The ParameterDeclaration data type.
abstract class ParameterDeclaration
    with _i1.AWSEquatable<ParameterDeclaration>
    implements Built<ParameterDeclaration, ParameterDeclarationBuilder> {
  /// The ParameterDeclaration data type.
  factory ParameterDeclaration({
    String? parameterKey,
    String? defaultValue,
    String? parameterType,
    bool? noEcho,
    String? description,
    _i2.ParameterConstraints? parameterConstraints,
  }) {
    return _$ParameterDeclaration._(
      parameterKey: parameterKey,
      defaultValue: defaultValue,
      parameterType: parameterType,
      noEcho: noEcho,
      description: description,
      parameterConstraints: parameterConstraints,
    );
  }

  /// The ParameterDeclaration data type.
  factory ParameterDeclaration.build(
          [void Function(ParameterDeclarationBuilder) updates]) =
      _$ParameterDeclaration;

  const ParameterDeclaration._();

  static const List<_i3.SmithySerializer<ParameterDeclaration>> serializers = [
    ParameterDeclarationAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ParameterDeclarationBuilder b) {}

  /// The name that's associated with the parameter.
  String? get parameterKey;

  /// The default value of the parameter.
  String? get defaultValue;

  /// The type of parameter.
  String? get parameterType;

  /// Flag that indicates whether the parameter value is shown as plain text in logs and in the Amazon Web Services Management Console.
  bool? get noEcho;

  /// The description that's associate with the parameter.
  String? get description;

  /// The criteria that CloudFormation uses to validate parameter values.
  _i2.ParameterConstraints? get parameterConstraints;
  @override
  List<Object?> get props => [
        parameterKey,
        defaultValue,
        parameterType,
        noEcho,
        description,
        parameterConstraints,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ParameterDeclaration')
      ..add(
        'parameterKey',
        parameterKey,
      )
      ..add(
        'defaultValue',
        defaultValue,
      )
      ..add(
        'parameterType',
        parameterType,
      )
      ..add(
        'noEcho',
        noEcho,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'parameterConstraints',
        parameterConstraints,
      );
    return helper.toString();
  }
}

class ParameterDeclarationAwsQuerySerializer
    extends _i3.StructuredSmithySerializer<ParameterDeclaration> {
  const ParameterDeclarationAwsQuerySerializer()
      : super('ParameterDeclaration');

  @override
  Iterable<Type> get types => const [
        ParameterDeclaration,
        _$ParameterDeclaration,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ParameterDeclaration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ParameterDeclarationBuilder();
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
        case 'ParameterType':
          result.parameterType = (serializers.deserialize(
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
        case 'ParameterConstraints':
          result.parameterConstraints.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i2.ParameterConstraints),
          ) as _i2.ParameterConstraints));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ParameterDeclaration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ParameterDeclarationResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final ParameterDeclaration(
      :parameterKey,
      :defaultValue,
      :parameterType,
      :noEcho,
      :description,
      :parameterConstraints
    ) = object;
    if (parameterKey != null) {
      result$
        ..add(const _i3.XmlElementName('ParameterKey'))
        ..add(serializers.serialize(
          parameterKey,
          specifiedType: const FullType(String),
        ));
    }
    if (defaultValue != null) {
      result$
        ..add(const _i3.XmlElementName('DefaultValue'))
        ..add(serializers.serialize(
          defaultValue,
          specifiedType: const FullType(String),
        ));
    }
    if (parameterType != null) {
      result$
        ..add(const _i3.XmlElementName('ParameterType'))
        ..add(serializers.serialize(
          parameterType,
          specifiedType: const FullType(String),
        ));
    }
    if (noEcho != null) {
      result$
        ..add(const _i3.XmlElementName('NoEcho'))
        ..add(serializers.serialize(
          noEcho,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (parameterConstraints != null) {
      result$
        ..add(const _i3.XmlElementName('ParameterConstraints'))
        ..add(serializers.serialize(
          parameterConstraints,
          specifiedType: const FullType(_i2.ParameterConstraints),
        ));
    }
    return result$;
  }
}
