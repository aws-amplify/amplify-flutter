// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_validation_protocol.model.malformed_pattern_override_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/pattern_union_override.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_pattern_override_input.g.dart';

abstract class MalformedPatternOverrideInput
    with
        _i1.HttpInput<MalformedPatternOverrideInput>,
        _i2.AWSEquatable<MalformedPatternOverrideInput>
    implements
        Built<MalformedPatternOverrideInput,
            MalformedPatternOverrideInputBuilder> {
  factory MalformedPatternOverrideInput({
    String? string,
    List<String>? list,
    Map<String, String>? map,
    _i3.PatternUnionOverride? union,
  }) {
    return _$MalformedPatternOverrideInput._(
      string: string,
      list: list == null ? null : _i4.BuiltList(list),
      map: map == null ? null : _i4.BuiltMap(map),
      union: union,
    );
  }

  factory MalformedPatternOverrideInput.build(
          [void Function(MalformedPatternOverrideInputBuilder) updates]) =
      _$MalformedPatternOverrideInput;

  const MalformedPatternOverrideInput._();

  factory MalformedPatternOverrideInput.fromRequest(
    MalformedPatternOverrideInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<MalformedPatternOverrideInput>>
      serializers = [MalformedPatternOverrideInputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedPatternOverrideInputBuilder b) {}
  String? get string;
  _i4.BuiltList<String>? get list;
  _i4.BuiltMap<String, String>? get map;
  _i3.PatternUnionOverride? get union;
  @override
  MalformedPatternOverrideInput getPayload() => this;
  @override
  List<Object?> get props => [
        string,
        list,
        map,
        union,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedPatternOverrideInput')
      ..add(
        'string',
        string,
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

class MalformedPatternOverrideInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedPatternOverrideInput> {
  const MalformedPatternOverrideInputRestJson1Serializer()
      : super('MalformedPatternOverrideInput');

  @override
  Iterable<Type> get types => const [
        MalformedPatternOverrideInput,
        _$MalformedPatternOverrideInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedPatternOverrideInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedPatternOverrideInputBuilder();
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
              _i4.BuiltList,
              [FullType(String)],
            ),
          ) as _i4.BuiltList<String>));
        case 'map':
          result.map.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
        case 'string':
          result.string = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'union':
          result.union = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.PatternUnionOverride),
          ) as _i3.PatternUnionOverride);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedPatternOverrideInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedPatternOverrideInput(:list, :map, :string, :union) = object;
    if (list != null) {
      result$
        ..add('list')
        ..add(serializers.serialize(
          list,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (map != null) {
      result$
        ..add('map')
        ..add(serializers.serialize(
          map,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (string != null) {
      result$
        ..add('string')
        ..add(serializers.serialize(
          string,
          specifiedType: const FullType(String),
        ));
    }
    if (union != null) {
      result$
        ..add('union')
        ..add(serializers.serialize(
          union,
          specifiedType: const FullType(_i3.PatternUnionOverride),
        ));
    }
    return result$;
  }
}
