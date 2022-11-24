// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.recursive_structures_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/recursive_union_one.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'recursive_structures_input.g.dart';

abstract class RecursiveStructuresInput
    with
        _i1.HttpInput<RecursiveStructuresInput>,
        _i2.AWSEquatable<RecursiveStructuresInput>
    implements
        Built<RecursiveStructuresInput, RecursiveStructuresInputBuilder> {
  factory RecursiveStructuresInput({_i3.RecursiveUnionOne? union}) {
    return _$RecursiveStructuresInput._(union: union);
  }

  factory RecursiveStructuresInput.build(
          [void Function(RecursiveStructuresInputBuilder) updates]) =
      _$RecursiveStructuresInput;

  const RecursiveStructuresInput._();

  factory RecursiveStructuresInput.fromRequest(
    RecursiveStructuresInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    RecursiveStructuresInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RecursiveStructuresInputBuilder b) {}
  _i3.RecursiveUnionOne? get union;
  @override
  RecursiveStructuresInput getPayload() => this;
  @override
  List<Object?> get props => [union];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RecursiveStructuresInput');
    helper.add(
      'union',
      union,
    );
    return helper.toString();
  }
}

class RecursiveStructuresInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<RecursiveStructuresInput> {
  const RecursiveStructuresInputRestJson1Serializer()
      : super('RecursiveStructuresInput');

  @override
  Iterable<Type> get types => const [
        RecursiveStructuresInput,
        _$RecursiveStructuresInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  RecursiveStructuresInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RecursiveStructuresInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'union':
          if (value != null) {
            result.union = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.RecursiveUnionOne),
            ) as _i3.RecursiveUnionOne);
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
    final payload = (object as RecursiveStructuresInput);
    final result = <Object?>[];
    if (payload.union != null) {
      result
        ..add('union')
        ..add(serializers.serialize(
          payload.union!,
          specifiedType: const FullType(_i3.RecursiveUnionOne),
        ));
    }
    return result;
  }
}
