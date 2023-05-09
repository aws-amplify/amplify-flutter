// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v1.rest_json_validation_protocol.model.malformed_enum_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i5;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/enum_string.dart'
    as _i3;
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/enum_union.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_enum_input.g.dart';

abstract class MalformedEnumInput
    with _i1.HttpInput<MalformedEnumInput>, _i2.AWSEquatable<MalformedEnumInput>
    implements Built<MalformedEnumInput, MalformedEnumInputBuilder> {
  factory MalformedEnumInput({
    _i3.EnumString? string,
    List<_i3.EnumString>? list,
    Map<_i3.EnumString, _i3.EnumString>? map,
    _i4.EnumUnion? union,
  }) {
    return _$MalformedEnumInput._(
      string: string,
      list: list == null ? null : _i5.BuiltList(list),
      map: map == null ? null : _i5.BuiltMap(map),
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

  static const List<_i1.SmithySerializer> serializers = [
    MalformedEnumInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedEnumInputBuilder b) {}
  _i3.EnumString? get string;
  _i5.BuiltList<_i3.EnumString>? get list;
  _i5.BuiltMap<_i3.EnumString, _i3.EnumString>? get map;
  _i4.EnumUnion? get union;
  @override
  MalformedEnumInput getPayload() => this;
  @override
  List<Object?> get props => [
        string,
        list,
        map,
        union,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedEnumInput');
    helper.add(
      'string',
      string,
    );
    helper.add(
      'list',
      list,
    );
    helper.add(
      'map',
      map,
    );
    helper.add(
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
              _i5.BuiltList,
              [FullType(_i3.EnumString)],
            ),
          ) as _i5.BuiltList<_i3.EnumString>));
        case 'map':
          result.map.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i5.BuiltMap,
              [
                FullType(_i3.EnumString),
                FullType(_i3.EnumString),
              ],
            ),
          ) as _i5.BuiltMap<_i3.EnumString, _i3.EnumString>));
        case 'string':
          result.string = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.EnumString),
          ) as _i3.EnumString);
        case 'union':
          result.union = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.EnumUnion),
          ) as _i4.EnumUnion);
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
    final payload = (object as MalformedEnumInput);
    final result = <Object?>[];
    final MalformedEnumInput(:list, :map, :string, :union) = payload;
    if (list != null) {
      result
        ..add('list')
        ..add(serializers.serialize(
          list,
          specifiedType: const FullType(
            _i5.BuiltList,
            [FullType(_i3.EnumString)],
          ),
        ));
    }
    if (map != null) {
      result
        ..add('map')
        ..add(serializers.serialize(
          map,
          specifiedType: const FullType(
            _i5.BuiltMap,
            [
              FullType(_i3.EnumString),
              FullType(_i3.EnumString),
            ],
          ),
        ));
    }
    if (string != null) {
      result
        ..add('string')
        ..add(serializers.serialize(
          string,
          specifiedType: const FullType(_i3.EnumString),
        ));
    }
    if (union != null) {
      result
        ..add('union')
        ..add(serializers.serialize(
          union,
          specifiedType: const FullType(_i4.EnumUnion),
        ));
    }
    return result;
  }
}
