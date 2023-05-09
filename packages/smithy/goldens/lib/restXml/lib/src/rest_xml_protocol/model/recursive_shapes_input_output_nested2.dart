// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_xml_v1.rest_xml_protocol.model.recursive_shapes_input_output_nested2; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_xml_v1/src/rest_xml_protocol/model/recursive_shapes_input_output_nested1.dart'
    as _i2;
import 'package:smithy/smithy.dart' as _i3;

part 'recursive_shapes_input_output_nested2.g.dart';

abstract class RecursiveShapesInputOutputNested2
    with
        _i1.AWSEquatable<RecursiveShapesInputOutputNested2>
    implements
        Built<RecursiveShapesInputOutputNested2,
            RecursiveShapesInputOutputNested2Builder> {
  factory RecursiveShapesInputOutputNested2({
    String? bar,
    _i2.RecursiveShapesInputOutputNested1? recursiveMember,
  }) {
    return _$RecursiveShapesInputOutputNested2._(
      bar: bar,
      recursiveMember: recursiveMember,
    );
  }

  factory RecursiveShapesInputOutputNested2.build(
          [void Function(RecursiveShapesInputOutputNested2Builder) updates]) =
      _$RecursiveShapesInputOutputNested2;

  const RecursiveShapesInputOutputNested2._();

  static const List<_i3.SmithySerializer> serializers = [
    RecursiveShapesInputOutputNested2RestXmlSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecursiveShapesInputOutputNested2Builder b) {}
  String? get bar;
  _i2.RecursiveShapesInputOutputNested1? get recursiveMember;
  @override
  List<Object?> get props => [
        bar,
        recursiveMember,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RecursiveShapesInputOutputNested2');
    helper.add(
      'bar',
      bar,
    );
    helper.add(
      'recursiveMember',
      recursiveMember,
    );
    return helper.toString();
  }
}

class RecursiveShapesInputOutputNested2RestXmlSerializer
    extends _i3.StructuredSmithySerializer<RecursiveShapesInputOutputNested2> {
  const RecursiveShapesInputOutputNested2RestXmlSerializer()
      : super('RecursiveShapesInputOutputNested2');

  @override
  Iterable<Type> get types => const [
        RecursiveShapesInputOutputNested2,
        _$RecursiveShapesInputOutputNested2,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restXml',
        )
      ];
  @override
  RecursiveShapesInputOutputNested2 deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveShapesInputOutputNested2Builder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'bar':
          result.bar = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'recursiveMember':
          result.recursiveMember.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(_i2.RecursiveShapesInputOutputNested1),
          ) as _i2.RecursiveShapesInputOutputNested1));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    RecursiveShapesInputOutputNested2 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName('RecursiveShapesInputOutputNested2')
    ];
    final RecursiveShapesInputOutputNested2(:bar, :recursiveMember) = object;
    if (bar != null) {
      result$
        ..add(const _i3.XmlElementName('bar'))
        ..add(serializers.serialize(
          bar,
          specifiedType: const FullType(String),
        ));
    }
    if (recursiveMember != null) {
      result$
        ..add(const _i3.XmlElementName('recursiveMember'))
        ..add(serializers.serialize(
          recursiveMember,
          specifiedType: const FullType(_i2.RecursiveShapesInputOutputNested1),
        ));
    }
    return result$;
  }
}
