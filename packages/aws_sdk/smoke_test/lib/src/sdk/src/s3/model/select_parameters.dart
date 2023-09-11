// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.s3.model.select_parameters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/expression_type.dart';
import 'package:smoke_test/src/sdk/src/s3/model/input_serialization.dart';
import 'package:smoke_test/src/sdk/src/s3/model/output_serialization.dart';

part 'select_parameters.g.dart';

/// Describes the parameters for Select job types.
abstract class SelectParameters
    with _i1.AWSEquatable<SelectParameters>
    implements Built<SelectParameters, SelectParametersBuilder> {
  /// Describes the parameters for Select job types.
  factory SelectParameters({
    required InputSerialization inputSerialization,
    required ExpressionType expressionType,
    required String expression,
    required OutputSerialization outputSerialization,
  }) {
    return _$SelectParameters._(
      inputSerialization: inputSerialization,
      expressionType: expressionType,
      expression: expression,
      outputSerialization: outputSerialization,
    );
  }

  /// Describes the parameters for Select job types.
  factory SelectParameters.build(
      [void Function(SelectParametersBuilder) updates]) = _$SelectParameters;

  const SelectParameters._();

  static const List<_i2.SmithySerializer<SelectParameters>> serializers = [
    SelectParametersRestXmlSerializer()
  ];

  /// Describes the serialization format of the object.
  InputSerialization get inputSerialization;

  /// The type of the provided expression (for example, SQL).
  ExpressionType get expressionType;

  /// The expression that is used to query the object.
  String get expression;

  /// Describes how the results of the Select job are serialized.
  OutputSerialization get outputSerialization;
  @override
  List<Object?> get props => [
        inputSerialization,
        expressionType,
        expression,
        outputSerialization,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SelectParameters')
      ..add(
        'inputSerialization',
        inputSerialization,
      )
      ..add(
        'expressionType',
        expressionType,
      )
      ..add(
        'expression',
        expression,
      )
      ..add(
        'outputSerialization',
        outputSerialization,
      );
    return helper.toString();
  }
}

class SelectParametersRestXmlSerializer
    extends _i2.StructuredSmithySerializer<SelectParameters> {
  const SelectParametersRestXmlSerializer() : super('SelectParameters');

  @override
  Iterable<Type> get types => const [
        SelectParameters,
        _$SelectParameters,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  SelectParameters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SelectParametersBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Expression':
          result.expression = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExpressionType':
          result.expressionType = (serializers.deserialize(
            value,
            specifiedType: const FullType(ExpressionType),
          ) as ExpressionType);
        case 'InputSerialization':
          result.inputSerialization.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InputSerialization),
          ) as InputSerialization));
        case 'OutputSerialization':
          result.outputSerialization.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(OutputSerialization),
          ) as OutputSerialization));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SelectParameters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SelectParameters',
        _i2.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    final SelectParameters(
      :expression,
      :expressionType,
      :inputSerialization,
      :outputSerialization
    ) = object;
    result$
      ..add(const _i2.XmlElementName('Expression'))
      ..add(serializers.serialize(
        expression,
        specifiedType: const FullType(String),
      ));
    result$
      ..add(const _i2.XmlElementName('ExpressionType'))
      ..add(serializers.serialize(
        expressionType,
        specifiedType: const FullType(ExpressionType),
      ));
    result$
      ..add(const _i2.XmlElementName('InputSerialization'))
      ..add(serializers.serialize(
        inputSerialization,
        specifiedType: const FullType(InputSerialization),
      ));
    result$
      ..add(const _i2.XmlElementName('OutputSerialization'))
      ..add(serializers.serialize(
        outputSerialization,
        specifiedType: const FullType(OutputSerialization),
      ));
    return result$;
  }
}
