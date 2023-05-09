// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.recursive_shapes_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/recursive_shapes_input_output_nested1.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'recursive_shapes_input_output.g.dart';

abstract class RecursiveShapesInputOutput
    with
        _i1.HttpInput<RecursiveShapesInputOutput>,
        _i2.AWSEquatable<RecursiveShapesInputOutput>
    implements
        Built<RecursiveShapesInputOutput, RecursiveShapesInputOutputBuilder> {
  factory RecursiveShapesInputOutput(
      {_i3.RecursiveShapesInputOutputNested1? nested}) {
    return _$RecursiveShapesInputOutput._(nested: nested);
  }

  factory RecursiveShapesInputOutput.build(
          [void Function(RecursiveShapesInputOutputBuilder) updates]) =
      _$RecursiveShapesInputOutput;

  const RecursiveShapesInputOutput._();

  factory RecursiveShapesInputOutput.fromRequest(
    RecursiveShapesInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [RecursiveShapesInputOutput] from a [payload] and [response].
  factory RecursiveShapesInputOutput.fromResponse(
    RecursiveShapesInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RecursiveShapesInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecursiveShapesInputOutputBuilder b) {}
  _i3.RecursiveShapesInputOutputNested1? get nested;
  @override
  RecursiveShapesInputOutput getPayload() => this;
  @override
  List<Object?> get props => [nested];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RecursiveShapesInputOutput');
    helper.add(
      'nested',
      nested,
    );
    return helper.toString();
  }
}

class RecursiveShapesInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<RecursiveShapesInputOutput> {
  const RecursiveShapesInputOutputRestJson1Serializer()
      : super('RecursiveShapesInputOutput');

  @override
  Iterable<Type> get types => const [
        RecursiveShapesInputOutput,
        _$RecursiveShapesInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  RecursiveShapesInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveShapesInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i3.RecursiveShapesInputOutputNested1),
          ) as _i3.RecursiveShapesInputOutputNested1));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveShapesInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final RecursiveShapesInputOutput(:nested) = object;
    if (nested != null) {
      result$
        ..add('nested')
        ..add(serializers.serialize(
          nested,
          specifiedType: const FullType(_i3.RecursiveShapesInputOutputNested1),
        ));
    }
    return result$;
  }
}
