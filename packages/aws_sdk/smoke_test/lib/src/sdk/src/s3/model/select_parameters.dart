// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.s3.model.select_parameters; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;
import 'package:smoke_test/src/sdk/src/s3/model/expression_type.dart' as _i2;
import 'package:smoke_test/src/sdk/src/s3/model/input_serialization.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/s3/model/output_serialization.dart'
    as _i4;

part 'select_parameters.g.dart';

/// Describes the parameters for Select job types.
abstract class SelectParameters
    with _i1.AWSEquatable<SelectParameters>
    implements Built<SelectParameters, SelectParametersBuilder> {
  /// Describes the parameters for Select job types.
  factory SelectParameters({
    required String expression,
    required _i2.ExpressionType expressionType,
    required _i3.InputSerialization inputSerialization,
    required _i4.OutputSerialization outputSerialization,
  }) {
    return _$SelectParameters._(
      expression: expression,
      expressionType: expressionType,
      inputSerialization: inputSerialization,
      outputSerialization: outputSerialization,
    );
  }

  /// Describes the parameters for Select job types.
  factory SelectParameters.build(
      [void Function(SelectParametersBuilder) updates]) = _$SelectParameters;

  const SelectParameters._();

  static const List<_i5.SmithySerializer> serializers = [
    SelectParametersRestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SelectParametersBuilder b) {}

  /// The expression that is used to query the object.
  String get expression;

  /// The type of the provided expression (for example, SQL).
  _i2.ExpressionType get expressionType;

  /// Describes the serialization format of the object.
  _i3.InputSerialization get inputSerialization;

  /// Describes how the results of the Select job are serialized.
  _i4.OutputSerialization get outputSerialization;
  @override
  List<Object?> get props => [
        expression,
        expressionType,
        inputSerialization,
        outputSerialization,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SelectParameters');
    helper.add(
      'expression',
      expression,
    );
    helper.add(
      'expressionType',
      expressionType,
    );
    helper.add(
      'inputSerialization',
      inputSerialization,
    );
    helper.add(
      'outputSerialization',
      outputSerialization,
    );
    return helper.toString();
  }
}

class SelectParametersRestXmlSerializer
    extends _i5.StructuredSmithySerializer<SelectParameters> {
  const SelectParametersRestXmlSerializer() : super('SelectParameters');

  @override
  Iterable<Type> get types => const [
        SelectParameters,
        _$SelectParameters,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
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
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'Expression':
          result.expression = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ExpressionType':
          result.expressionType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i2.ExpressionType),
          ) as _i2.ExpressionType);
          break;
        case 'InputSerialization':
          result.inputSerialization.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.InputSerialization),
          ) as _i3.InputSerialization));
          break;
        case 'OutputSerialization':
          result.outputSerialization.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.OutputSerialization),
          ) as _i4.OutputSerialization));
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
    final payload = (object as SelectParameters);
    final result = <Object?>[
      const _i5.XmlElementName(
        'SelectParameters',
        _i5.XmlNamespace('http://s3.amazonaws.com/doc/2006-03-01/'),
      )
    ];
    result
      ..add(const _i5.XmlElementName('Expression'))
      ..add(serializers.serialize(
        payload.expression,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i5.XmlElementName('ExpressionType'))
      ..add(serializers.serialize(
        payload.expressionType,
        specifiedType: const FullType.nullable(_i2.ExpressionType),
      ));
    result
      ..add(const _i5.XmlElementName('InputSerialization'))
      ..add(serializers.serialize(
        payload.inputSerialization,
        specifiedType: const FullType(_i3.InputSerialization),
      ));
    result
      ..add(const _i5.XmlElementName('OutputSerialization'))
      ..add(serializers.serialize(
        payload.outputSerialization,
        specifiedType: const FullType(_i4.OutputSerialization),
      ));
    return result;
  }
}
