// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_xml_v1.rest_xml_protocol.model.recursive_shapes_input_output_nested1; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/recursive_shapes_input_output_nested2.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'recursive_shapes_input_output_nested1.g.dart';

abstract class RecursiveShapesInputOutputNested1
    with
        _i1.AWSEquatable<RecursiveShapesInputOutputNested1>
    implements
        Built<RecursiveShapesInputOutputNested1,
            RecursiveShapesInputOutputNested1Builder> {
  factory RecursiveShapesInputOutputNested1({
    String? foo,
    RecursiveShapesInputOutputNested2? nested,
  }) {
    return _$RecursiveShapesInputOutputNested1._(
      foo: foo,
      nested: nested,
    );
  }

  factory RecursiveShapesInputOutputNested1.build(
          [void Function(RecursiveShapesInputOutputNested1Builder) updates]) =
      _$RecursiveShapesInputOutputNested1;

  const RecursiveShapesInputOutputNested1._();

  static const List<_i2.SmithySerializer<RecursiveShapesInputOutputNested1>>
      serializers = [RecursiveShapesInputOutputNested1RestXmlSerializer()];

  String? get foo;
  RecursiveShapesInputOutputNested2? get nested;
  @override
  List<Object?> get props => [
        foo,
        nested,
      ];

  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RecursiveShapesInputOutputNested1')
          ..add(
            'foo',
            foo,
          )
          ..add(
            'nested',
            nested,
          );
    return helper.toString();
  }
}

class RecursiveShapesInputOutputNested1RestXmlSerializer
    extends _i2.StructuredSmithySerializer<RecursiveShapesInputOutputNested1> {
  const RecursiveShapesInputOutputNested1RestXmlSerializer()
      : super('RecursiveShapesInputOutputNested1');

  @override
  Iterable<Type> get types => const [
        RecursiveShapesInputOutputNested1,
        _$RecursiveShapesInputOutputNested1,
      ];

  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];

  @override
  RecursiveShapesInputOutputNested1 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveShapesInputOutputNested1Builder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'foo':
          result.foo = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'nested':
          result.nested.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RecursiveShapesInputOutputNested2),
          ) as RecursiveShapesInputOutputNested2));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveShapesInputOutputNested1 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName('RecursiveShapesInputOutputNested1')
    ];
    final RecursiveShapesInputOutputNested1(:foo, :nested) = object;
    if (foo != null) {
      result$
        ..add(const _i2.XmlElementName('foo'))
        ..add(serializers.serialize(
          foo,
          specifiedType: const FullType(String),
        ));
    }
    if (nested != null) {
      result$
        ..add(const _i2.XmlElementName('nested'))
        ..add(serializers.serialize(
          nested,
          specifiedType: const FullType(RecursiveShapesInputOutputNested2),
        ));
    }
    return result$;
  }
}
