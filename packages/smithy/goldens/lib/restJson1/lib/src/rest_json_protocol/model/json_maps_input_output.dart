// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v1.rest_json_protocol.model.json_maps_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v1/src/rest_json_protocol/model/greeting_struct.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'json_maps_input_output.g.dart';

abstract class JsonMapsInputOutput
    with
        _i1.HttpInput<JsonMapsInputOutput>,
        _i2.AWSEquatable<JsonMapsInputOutput>
    implements Built<JsonMapsInputOutput, JsonMapsInputOutputBuilder> {
  factory JsonMapsInputOutput({
    Map<String, _i3.GreetingStruct>? denseStructMap,
    Map<String, _i3.GreetingStruct?>? sparseStructMap,
    Map<String, int>? denseNumberMap,
    Map<String, bool>? denseBooleanMap,
    Map<String, String>? denseStringMap,
    Map<String, int?>? sparseNumberMap,
    Map<String, bool?>? sparseBooleanMap,
    Map<String, String?>? sparseStringMap,
    Map<String, Set<String>>? denseSetMap,
    Map<String, Set<String>>? sparseSetMap,
  }) {
    return _$JsonMapsInputOutput._(
      denseStructMap:
          denseStructMap == null ? null : _i4.BuiltMap(denseStructMap),
      sparseStructMap:
          sparseStructMap == null ? null : _i4.BuiltMap(sparseStructMap),
      denseNumberMap:
          denseNumberMap == null ? null : _i4.BuiltMap(denseNumberMap),
      denseBooleanMap:
          denseBooleanMap == null ? null : _i4.BuiltMap(denseBooleanMap),
      denseStringMap:
          denseStringMap == null ? null : _i4.BuiltMap(denseStringMap),
      sparseNumberMap:
          sparseNumberMap == null ? null : _i4.BuiltMap(sparseNumberMap),
      sparseBooleanMap:
          sparseBooleanMap == null ? null : _i4.BuiltMap(sparseBooleanMap),
      sparseStringMap:
          sparseStringMap == null ? null : _i4.BuiltMap(sparseStringMap),
      denseSetMap:
          denseSetMap == null ? null : _i4.BuiltSetMultimap(denseSetMap),
      sparseSetMap:
          sparseSetMap == null ? null : _i4.BuiltSetMultimap(sparseSetMap),
    );
  }

  factory JsonMapsInputOutput.build(
          [void Function(JsonMapsInputOutputBuilder) updates]) =
      _$JsonMapsInputOutput;

  const JsonMapsInputOutput._();

  factory JsonMapsInputOutput.fromRequest(
    JsonMapsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [JsonMapsInputOutput] from a [payload] and [response].
  factory JsonMapsInputOutput.fromResponse(
    JsonMapsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<JsonMapsInputOutput>> serializers = [
    JsonMapsInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonMapsInputOutputBuilder b) {}
  _i4.BuiltMap<String, _i3.GreetingStruct>? get denseStructMap;
  _i4.BuiltMap<String, _i3.GreetingStruct?>? get sparseStructMap;
  _i4.BuiltMap<String, int>? get denseNumberMap;
  _i4.BuiltMap<String, bool>? get denseBooleanMap;
  _i4.BuiltMap<String, String>? get denseStringMap;
  _i4.BuiltMap<String, int?>? get sparseNumberMap;
  _i4.BuiltMap<String, bool?>? get sparseBooleanMap;
  _i4.BuiltMap<String, String?>? get sparseStringMap;
  _i4.BuiltSetMultimap<String, String>? get denseSetMap;
  _i4.BuiltSetMultimap<String, String>? get sparseSetMap;
  @override
  JsonMapsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        denseStructMap,
        sparseStructMap,
        denseNumberMap,
        denseBooleanMap,
        denseStringMap,
        sparseNumberMap,
        sparseBooleanMap,
        sparseStringMap,
        denseSetMap,
        sparseSetMap,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonMapsInputOutput')
      ..add(
        'denseStructMap',
        denseStructMap,
      )
      ..add(
        'sparseStructMap',
        sparseStructMap,
      )
      ..add(
        'denseNumberMap',
        denseNumberMap,
      )
      ..add(
        'denseBooleanMap',
        denseBooleanMap,
      )
      ..add(
        'denseStringMap',
        denseStringMap,
      )
      ..add(
        'sparseNumberMap',
        sparseNumberMap,
      )
      ..add(
        'sparseBooleanMap',
        sparseBooleanMap,
      )
      ..add(
        'sparseStringMap',
        sparseStringMap,
      )
      ..add(
        'denseSetMap',
        denseSetMap,
      )
      ..add(
        'sparseSetMap',
        sparseSetMap,
      );
    return helper.toString();
  }
}

class JsonMapsInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<JsonMapsInputOutput> {
  const JsonMapsInputOutputRestJson1Serializer() : super('JsonMapsInputOutput');

  @override
  Iterable<Type> get types => const [
        JsonMapsInputOutput,
        _$JsonMapsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  JsonMapsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonMapsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'denseBooleanMap':
          result.denseBooleanMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(bool),
              ],
            ),
          ) as _i4.BuiltMap<String, bool>));
        case 'denseNumberMap':
          result.denseNumberMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(int),
              ],
            ),
          ) as _i4.BuiltMap<String, int>));
        case 'denseSetMap':
          result.denseSetMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltSetMultimap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltSetMultimap<String, String>));
        case 'denseStringMap':
          result.denseStringMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String>));
        case 'denseStructMap':
          result.denseStructMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(_i3.GreetingStruct),
              ],
            ),
          ) as _i4.BuiltMap<String, _i3.GreetingStruct>));
        case 'sparseBooleanMap':
          result.sparseBooleanMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType.nullable(bool),
              ],
            ),
          ) as _i4.BuiltMap<String, bool?>));
        case 'sparseNumberMap':
          result.sparseNumberMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType.nullable(int),
              ],
            ),
          ) as _i4.BuiltMap<String, int?>));
        case 'sparseSetMap':
          result.sparseSetMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltSetMultimap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i4.BuiltSetMultimap<String, String>));
        case 'sparseStringMap':
          result.sparseStringMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType.nullable(String),
              ],
            ),
          ) as _i4.BuiltMap<String, String?>));
        case 'sparseStructMap':
          result.sparseStructMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType.nullable(_i3.GreetingStruct),
              ],
            ),
          ) as _i4.BuiltMap<String, _i3.GreetingStruct?>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    JsonMapsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final JsonMapsInputOutput(
      :denseBooleanMap,
      :denseNumberMap,
      :denseSetMap,
      :denseStringMap,
      :denseStructMap,
      :sparseBooleanMap,
      :sparseNumberMap,
      :sparseSetMap,
      :sparseStringMap,
      :sparseStructMap
    ) = object;
    if (denseBooleanMap != null) {
      result$
        ..add('denseBooleanMap')
        ..add(serializers.serialize(
          denseBooleanMap,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(bool),
            ],
          ),
        ));
    }
    if (denseNumberMap != null) {
      result$
        ..add('denseNumberMap')
        ..add(serializers.serialize(
          denseNumberMap,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(int),
            ],
          ),
        ));
    }
    if (denseSetMap != null) {
      result$
        ..add('denseSetMap')
        ..add(serializers.serialize(
          denseSetMap,
          specifiedType: const FullType(
            _i4.BuiltSetMultimap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (denseStringMap != null) {
      result$
        ..add('denseStringMap')
        ..add(serializers.serialize(
          denseStringMap,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (denseStructMap != null) {
      result$
        ..add('denseStructMap')
        ..add(serializers.serialize(
          denseStructMap,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.GreetingStruct),
            ],
          ),
        ));
    }
    if (sparseBooleanMap != null) {
      result$
        ..add('sparseBooleanMap')
        ..add(serializers.serialize(
          sparseBooleanMap,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType.nullable(bool),
            ],
          ),
        ));
    }
    if (sparseNumberMap != null) {
      result$
        ..add('sparseNumberMap')
        ..add(serializers.serialize(
          sparseNumberMap,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType.nullable(int),
            ],
          ),
        ));
    }
    if (sparseSetMap != null) {
      result$
        ..add('sparseSetMap')
        ..add(serializers.serialize(
          sparseSetMap,
          specifiedType: const FullType(
            _i4.BuiltSetMultimap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (sparseStringMap != null) {
      result$
        ..add('sparseStringMap')
        ..add(serializers.serialize(
          sparseStringMap,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType.nullable(String),
            ],
          ),
        ));
    }
    if (sparseStructMap != null) {
      result$
        ..add('sparseStructMap')
        ..add(serializers.serialize(
          sparseStructMap,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType.nullable(_i3.GreetingStruct),
            ],
          ),
        ));
    }
    return result$;
  }
}
