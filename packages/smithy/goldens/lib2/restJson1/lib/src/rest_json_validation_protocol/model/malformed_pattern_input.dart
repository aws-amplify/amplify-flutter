// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.malformed_pattern_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/pattern_union.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_pattern_input.g.dart';

abstract class MalformedPatternInput
    with
        _i1.HttpInput<MalformedPatternInput>,
        _i2.AWSEquatable<MalformedPatternInput>
    implements Built<MalformedPatternInput, MalformedPatternInputBuilder> {
  factory MalformedPatternInput({
    String? evilString,
    List<String>? list,
    Map<String, String>? map,
    String? string,
    _i3.PatternUnion? union,
  }) {
    return _$MalformedPatternInput._(
      evilString: evilString,
      list: list == null ? null : _i4.BuiltList(list),
      map: map == null ? null : _i4.BuiltMap(map),
      string: string,
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

  static const List<_i1.SmithySerializer> serializers = [
    MalformedPatternInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedPatternInputBuilder b) {}
  String? get evilString;
  _i4.BuiltList<String>? get list;
  _i4.BuiltMap<String, String>? get map;
  String? get string;
  _i3.PatternUnion? get union;
  @override
  MalformedPatternInput getPayload() => this;
  @override
  List<Object?> get props => [
        evilString,
        list,
        map,
        string,
        union,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedPatternInput');
    helper.add(
      'evilString',
      evilString,
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
      'string',
      string,
    );
    helper.add(
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
      switch (key) {
        case 'evilString':
          if (value != null) {
            result.evilString = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'list':
          if (value != null) {
            result.list.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(String)],
              ),
            ) as _i4.BuiltList<String>));
          }
          break;
        case 'map':
          if (value != null) {
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
          }
          break;
        case 'string':
          if (value != null) {
            result.string = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'union':
          if (value != null) {
            result.union = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.PatternUnion),
            ) as _i3.PatternUnion);
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
    final payload = (object as MalformedPatternInput);
    final result = <Object?>[];
    if (payload.evilString != null) {
      result
        ..add('evilString')
        ..add(serializers.serialize(
          payload.evilString!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.list != null) {
      result
        ..add('list')
        ..add(serializers.serialize(
          payload.list!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.map != null) {
      result
        ..add('map')
        ..add(serializers.serialize(
          payload.map!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (payload.string != null) {
      result
        ..add('string')
        ..add(serializers.serialize(
          payload.string!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.union != null) {
      result
        ..add('union')
        ..add(serializers.serialize(
          payload.union!,
          specifiedType: const FullType(_i3.PatternUnion),
        ));
    }
    return result;
  }
}
