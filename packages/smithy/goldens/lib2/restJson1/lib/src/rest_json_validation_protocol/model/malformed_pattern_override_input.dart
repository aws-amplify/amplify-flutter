// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.malformed_pattern_override_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/pattern_union_override.dart'
    as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_pattern_override_input.g.dart';

abstract class MalformedPatternOverrideInput
    with
        _i1.HttpInput<MalformedPatternOverrideInput>,
        _i2.AWSEquatable<MalformedPatternOverrideInput>
    implements
        Built<MalformedPatternOverrideInput,
            MalformedPatternOverrideInputBuilder> {
  factory MalformedPatternOverrideInput(
      {_i3.BuiltList<String>? list,
      _i3.BuiltMap<String, String>? map,
      String? string,
      _i4.PatternUnionOverride? union}) {
    return _$MalformedPatternOverrideInput._(
        list: list, map: map, string: string, union: union);
  }

  factory MalformedPatternOverrideInput.build(
          [void Function(MalformedPatternOverrideInputBuilder) updates]) =
      _$MalformedPatternOverrideInput;

  const MalformedPatternOverrideInput._();

  factory MalformedPatternOverrideInput.fromRequest(
          MalformedPatternOverrideInput payload, _i2.AWSBaseHttpRequest request,
          {Map<String, String> labels = const {}}) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    MalformedPatternOverrideInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedPatternOverrideInputBuilder b) {}
  _i3.BuiltList<String>? get list;
  _i3.BuiltMap<String, String>? get map;
  String? get string;
  _i4.PatternUnionOverride? get union;
  @override
  MalformedPatternOverrideInput getPayload() => this;
  @override
  List<Object?> get props => [list, map, string, union];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedPatternOverrideInput');
    helper.add('list', list);
    helper.add('map', map);
    helper.add('string', string);
    helper.add('union', union);
    return helper.toString();
  }
}

class MalformedPatternOverrideInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedPatternOverrideInput> {
  const MalformedPatternOverrideInputRestJson1Serializer()
      : super('MalformedPatternOverrideInput');

  @override
  Iterable<Type> get types =>
      const [MalformedPatternOverrideInput, _$MalformedPatternOverrideInput];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols =>
      const [_i1.ShapeId(namespace: 'aws.protocols', shape: 'restJson1')];
  @override
  MalformedPatternOverrideInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MalformedPatternOverrideInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'list':
          if (value != null) {
            result.list.replace((serializers.deserialize(value,
                    specifiedType:
                        const FullType(_i3.BuiltList, [FullType(String)]))
                as _i3.BuiltList<String>));
          }
          break;
        case 'map':
          if (value != null) {
            result.map.replace((serializers.deserialize(value,
                    specifiedType: const FullType(
                        _i3.BuiltMap, [FullType(String), FullType(String)]))
                as _i3.BuiltMap<String, String>));
          }
          break;
        case 'string':
          if (value != null) {
            result.string = (serializers.deserialize(value,
                specifiedType: const FullType(String)) as String);
          }
          break;
        case 'union':
          if (value != null) {
            result.union = (serializers.deserialize(value,
                    specifiedType: const FullType(_i4.PatternUnionOverride))
                as _i4.PatternUnionOverride);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, Object? object,
      {FullType specifiedType = FullType.unspecified}) {
    final payload = (object as MalformedPatternOverrideInput);
    final result = <Object?>[];
    if (payload.list != null) {
      result
        ..add('list')
        ..add(serializers.serialize(payload.list!,
            specifiedType: const FullType(_i3.BuiltList, [FullType(String)])));
    }
    if (payload.map != null) {
      result
        ..add('map')
        ..add(serializers.serialize(payload.map!,
            specifiedType: const FullType(
                _i3.BuiltMap, [FullType(String), FullType(String)])));
    }
    if (payload.string != null) {
      result
        ..add('string')
        ..add(serializers.serialize(payload.string!,
            specifiedType: const FullType(String)));
    }
    if (payload.union != null) {
      result
        ..add('union')
        ..add(serializers.serialize(payload.union!,
            specifiedType: const FullType(_i4.PatternUnionOverride)));
    }
    return result;
  }
}
