// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.recursive_shapes_input_output_nested2; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/recursive_shapes_input_output_nested1.dart'
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
    RecursiveShapesInputOutputNested2RestJson1Serializer()
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

class RecursiveShapesInputOutputNested2RestJson1Serializer
    extends _i3.StructuredSmithySerializer<RecursiveShapesInputOutputNested2> {
  const RecursiveShapesInputOutputNested2RestJson1Serializer()
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
          shape: 'restJson1',
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
      switch (key) {
        case 'bar':
          if (value != null) {
            result.bar = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'recursiveMember':
          if (value != null) {
            result.recursiveMember.replace((serializers.deserialize(
              value,
              specifiedType:
                  const FullType(_i2.RecursiveShapesInputOutputNested1),
            ) as _i2.RecursiveShapesInputOutputNested1));
          }
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
    final payload = (object as RecursiveShapesInputOutputNested2);
    final result = <Object?>[];
    if (payload.bar != null) {
      result
        ..add('bar')
        ..add(serializers.serialize(
          payload.bar!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.recursiveMember != null) {
      result
        ..add('recursiveMember')
        ..add(serializers.serialize(
          payload.recursiveMember!,
          specifiedType: const FullType(_i2.RecursiveShapesInputOutputNested1),
        ));
    }
    return result;
  }
}
