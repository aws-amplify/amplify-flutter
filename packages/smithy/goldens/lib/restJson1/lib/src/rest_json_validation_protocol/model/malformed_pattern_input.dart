// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_validation_protocol.model.malformed_pattern_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_validation_protocol/model/pattern_union.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_pattern_input.g.dart';

abstract class MalformedPatternInput
    with
        _i1.HttpInput<MalformedPatternInput>,
        _i2.AWSEquatable<MalformedPatternInput>
    implements Built<MalformedPatternInput, MalformedPatternInputBuilder> {
  factory MalformedPatternInput({
    String? string,
    String? evilString,
    List<String>? list,
    Map<String, String>? map,
    _i3.PatternUnion? union,
  }) {
    return _$MalformedPatternInput._(
      string: string,
      evilString: evilString,
      list: list == null ? null : _i4.BuiltList(list),
      map: map == null ? null : _i4.BuiltMap(map),
      union: union,
    );
  }

  factory MalformedPatternInput.build(
          [void Function(MalformedPatternInputBuilder) updates]) =
      _$MalformedPatternInput;

  const MalformedPatternInput._();

  factory MalformedPatternInput.fromRequest(
    MalformedPatternInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<MalformedPatternInput>> serializers = [
    MalformedPatternInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedPatternInputBuilder b) {}
  String? get string;
  String? get evilString;
  _i4.BuiltList<String>? get list;
  _i4.BuiltMap<String, String>? get map;
  _i3.PatternUnion? get union;
  @override
  MalformedPatternInput getPayload() => this;
  @override
  List<Object?> get props => [
        string,
        evilString,
        list,
        map,
        union,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedPatternInput')
      ..add(
        'string',
        string,
      )
      ..add(
        'evilString',
        evilString,
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

class MalformedPatternInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedPatternInput> {
  const MalformedPatternInputRestJson1Serializer()
      : super('MalformedPatternInput');

  @override
  Iterable<Type> get types => const [
        MalformedPatternInput,
        _$MalformedPatternInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedPatternInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedPatternInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'evilString':
          result.evilString = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
            specifiedType: const FullType(_i3.PatternUnion),
          ) as _i3.PatternUnion);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedPatternInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedPatternInput(:evilString, :list, :map, :string, :union) =
        object;
    if (evilString != null) {
      result$
        ..add('evilString')
        ..add(serializers.serialize(
          evilString,
          specifiedType: const FullType(String),
        ));
    }
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
          specifiedType: const FullType(_i3.PatternUnion),
        ));
    }
    return result$;
  }
}
