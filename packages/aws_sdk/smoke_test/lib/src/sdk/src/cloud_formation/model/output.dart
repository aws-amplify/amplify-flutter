// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.cloud_formation.model.output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'output.g.dart';

/// The Output data type.
abstract class Output
    with _i1.AWSEquatable<Output>
    implements Built<Output, OutputBuilder> {
  /// The Output data type.
  factory Output({
    String? outputKey,
    String? outputValue,
    String? description,
    String? exportName,
  }) {
    return _$Output._(
      outputKey: outputKey,
      outputValue: outputValue,
      description: description,
      exportName: exportName,
    );
  }

  /// The Output data type.
  factory Output.build([void Function(OutputBuilder) updates]) = _$Output;

  const Output._();

  static const List<_i2.SmithySerializer<Output>> serializers = [
    OutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OutputBuilder b) {}

  /// The key associated with the output.
  String? get outputKey;

  /// The value associated with the output.
  String? get outputValue;

  /// User defined description associated with the output.
  String? get description;

  /// The name of the export associated with the output.
  String? get exportName;
  @override
  List<Object?> get props => [
        outputKey,
        outputValue,
        description,
        exportName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Output')
      ..add(
        'outputKey',
        outputKey,
      )
      ..add(
        'outputValue',
        outputValue,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'exportName',
        exportName,
      );
    return helper.toString();
  }
}

class OutputAwsQuerySerializer extends _i2.StructuredSmithySerializer<Output> {
  const OutputAwsQuerySerializer() : super('Output');

  @override
  Iterable<Type> get types => const [
        Output,
        _$Output,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Output deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'OutputKey':
          result.outputKey = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'OutputValue':
          result.outputValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ExportName':
          result.exportName = (serializers.deserialize(
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
    Output object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'OutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final Output(:outputKey, :outputValue, :description, :exportName) = object;
    if (outputKey != null) {
      result$
        ..add(const _i2.XmlElementName('OutputKey'))
        ..add(serializers.serialize(
          outputKey,
          specifiedType: const FullType(String),
        ));
    }
    if (outputValue != null) {
      result$
        ..add(const _i2.XmlElementName('OutputValue'))
        ..add(serializers.serialize(
          outputValue,
          specifiedType: const FullType(String),
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
    if (exportName != null) {
      result$
        ..add(const _i2.XmlElementName('ExportName'))
        ..add(serializers.serialize(
          exportName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
