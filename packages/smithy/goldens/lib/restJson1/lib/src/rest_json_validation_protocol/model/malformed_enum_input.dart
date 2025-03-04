// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v1.rest_json_validation_protocol.model.malformed_enum_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/enum_string.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/enum_trait_string.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/enum_union.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_enum_input.g.dart';

abstract class MalformedEnumInput
    with _i1.HttpInput<MalformedEnumInput>, _i2.AWSEquatable<MalformedEnumInput>
    implements Built<MalformedEnumInput, MalformedEnumInputBuilder> {
  factory MalformedEnumInput({
    EnumString? string,
    EnumTraitString? stringWithEnumTrait,
    List<EnumString>? list,
    Map<EnumString, EnumString>? map,
    EnumUnion? union,
  }) {
    return _$MalformedEnumInput._(
      string: string,
      stringWithEnumTrait: stringWithEnumTrait,
      list: list == null ? null : _i3.BuiltList(list),
      map: map == null ? null : _i3.BuiltMap(map),
      union: union,
    );
  }

  factory MalformedEnumInput.build(
          [void Function(MalformedEnumInputBuilder) updates]) =
      _$MalformedEnumInput;

  const MalformedEnumInput._();

  factory MalformedEnumInput.fromRequest(
    MalformedEnumInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<MalformedEnumInput>> serializers = [
    MalformedEnumInputRestJson1Serializer()
  ];

  EnumString? get string;
  EnumTraitString? get stringWithEnumTrait;
  _i3.BuiltList<EnumString>? get list;
  _i3.BuiltMap<EnumString, EnumString>? get map;
  EnumUnion? get union;
  @override
  MalformedEnumInput getPayload() => this;

  @override
  List<Object?> get props => [
        string,
        stringWithEnumTrait,
        list,
        map,
        union,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedEnumInput')
      ..add(
        'string',
        string,
      )
      ..add(
        'stringWithEnumTrait',
        stringWithEnumTrait,
      )
      ..add(
        'list',
        list,
      )
      ..add(
        'map',
        map,
      )
      ..add(
        'union',
        union,
      );
    return helper.toString();
  }
}

class MalformedEnumInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedEnumInput> {
  const MalformedEnumInputRestJson1Serializer() : super('MalformedEnumInput');

  @override
  Iterable<Type> get types => const [
        MalformedEnumInput,
        _$MalformedEnumInput,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];

  @override
  MalformedEnumInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedEnumInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'list':
          result.list.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(EnumString)],
            ),
          ) as _i3.BuiltList<EnumString>));
        case 'map':
          result.map.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(EnumString),
                FullType(EnumString),
              ],
            ),
          ) as _i3.BuiltMap<EnumString, EnumString>));
        case 'string':
          result.string = (serializers.deserialize(
            value,
            specifiedType: const FullType(EnumString),
          ) as EnumString);
        case 'stringWithEnumTrait':
          result.stringWithEnumTrait = (serializers.deserialize(
            value,
            specifiedType: const FullType(EnumTraitString),
          ) as EnumTraitString);
        case 'union':
          result.union = (serializers.deserialize(
            value,
            specifiedType: const FullType(EnumUnion),
          ) as EnumUnion);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedEnumInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedEnumInput(
      :list,
      :map,
      :string,
      :stringWithEnumTrait,
      :union
    ) = object;
    if (list != null) {
      result$
        ..add('list')
        ..add(serializers.serialize(
          list,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(EnumString)],
          ),
        ));
    }
    if (map != null) {
      result$
        ..add('map')
        ..add(serializers.serialize(
          map,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(EnumString),
              FullType(EnumString),
            ],
          ),
        ));
    }
    if (string != null) {
      result$
        ..add('string')
        ..add(serializers.serialize(
          string,
          specifiedType: const FullType(EnumString),
        ));
    }
    if (stringWithEnumTrait != null) {
      result$
        ..add('stringWithEnumTrait')
        ..add(serializers.serialize(
          stringWithEnumTrait,
          specifiedType: const FullType(EnumTraitString),
        ));
    }
    if (union != null) {
      result$
        ..add('union')
        ..add(serializers.serialize(
          union,
          specifiedType: const FullType(EnumUnion),
        ));
    }
    return result$;
  }
}
