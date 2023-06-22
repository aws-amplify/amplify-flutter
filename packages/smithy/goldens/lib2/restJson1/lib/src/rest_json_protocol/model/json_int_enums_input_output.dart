// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library rest_json1_v2.rest_json_protocol.model.json_int_enums_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/integer_enum.dart'
    as _i3;
import 'package:smithy/smithy.dart' as _i1;

part 'json_int_enums_input_output.g.dart';

abstract class JsonIntEnumsInputOutput
    with
        _i1.HttpInput<JsonIntEnumsInputOutput>,
        _i2.AWSEquatable<JsonIntEnumsInputOutput>
    implements Built<JsonIntEnumsInputOutput, JsonIntEnumsInputOutputBuilder> {
  factory JsonIntEnumsInputOutput({
    _i3.IntegerEnum? integerEnum1,
    _i3.IntegerEnum? integerEnum2,
    _i3.IntegerEnum? integerEnum3,
    List<_i3.IntegerEnum>? integerEnumList,
    Set<_i3.IntegerEnum>? integerEnumSet,
    Map<String, _i3.IntegerEnum>? integerEnumMap,
  }) {
    return _$JsonIntEnumsInputOutput._(
      integerEnum1: integerEnum1,
      integerEnum2: integerEnum2,
      integerEnum3: integerEnum3,
      integerEnumList:
          integerEnumList == null ? null : _i4.BuiltList(integerEnumList),
      integerEnumSet:
          integerEnumSet == null ? null : _i4.BuiltSet(integerEnumSet),
      integerEnumMap:
          integerEnumMap == null ? null : _i4.BuiltMap(integerEnumMap),
    );
  }

  factory JsonIntEnumsInputOutput.build(
          [void Function(JsonIntEnumsInputOutputBuilder) updates]) =
      _$JsonIntEnumsInputOutput;

  const JsonIntEnumsInputOutput._();

  factory JsonIntEnumsInputOutput.fromRequest(
    JsonIntEnumsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [JsonIntEnumsInputOutput] from a [payload] and [response].
  factory JsonIntEnumsInputOutput.fromResponse(
    JsonIntEnumsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<JsonIntEnumsInputOutput>> serializers =
      [JsonIntEnumsInputOutputRestJson1Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonIntEnumsInputOutputBuilder b) {}
  _i3.IntegerEnum? get integerEnum1;
  _i3.IntegerEnum? get integerEnum2;
  _i3.IntegerEnum? get integerEnum3;
  _i4.BuiltList<_i3.IntegerEnum>? get integerEnumList;
  _i4.BuiltSet<_i3.IntegerEnum>? get integerEnumSet;
  _i4.BuiltMap<String, _i3.IntegerEnum>? get integerEnumMap;
  @override
  JsonIntEnumsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        integerEnum1,
        integerEnum2,
        integerEnum3,
        integerEnumList,
        integerEnumSet,
        integerEnumMap,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonIntEnumsInputOutput')
      ..add(
        'integerEnum1',
        integerEnum1,
      )
      ..add(
        'integerEnum2',
        integerEnum2,
      )
      ..add(
        'integerEnum3',
        integerEnum3,
      )
      ..add(
        'integerEnumList',
        integerEnumList,
      )
      ..add(
        'integerEnumSet',
        integerEnumSet,
      )
      ..add(
        'integerEnumMap',
        integerEnumMap,
      );
    return helper.toString();
  }
}

class JsonIntEnumsInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<JsonIntEnumsInputOutput> {
  const JsonIntEnumsInputOutputRestJson1Serializer()
      : super('JsonIntEnumsInputOutput');

  @override
  Iterable<Type> get types => const [
        JsonIntEnumsInputOutput,
        _$JsonIntEnumsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  JsonIntEnumsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonIntEnumsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'integerEnum1':
          result.integerEnum1 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IntegerEnum),
          ) as _i3.IntegerEnum);
        case 'integerEnum2':
          result.integerEnum2 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IntegerEnum),
          ) as _i3.IntegerEnum);
        case 'integerEnum3':
          result.integerEnum3 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IntegerEnum),
          ) as _i3.IntegerEnum);
        case 'integerEnumList':
          result.integerEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.IntegerEnum)],
            ),
          ) as _i4.BuiltList<_i3.IntegerEnum>));
        case 'integerEnumMap':
          result.integerEnumMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(_i3.IntegerEnum),
              ],
            ),
          ) as _i4.BuiltMap<String, _i3.IntegerEnum>));
        case 'integerEnumSet':
          result.integerEnumSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltSet,
              [FullType(_i3.IntegerEnum)],
            ),
          ) as _i4.BuiltSet<_i3.IntegerEnum>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    JsonIntEnumsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final JsonIntEnumsInputOutput(
      :integerEnum1,
      :integerEnum2,
      :integerEnum3,
      :integerEnumList,
      :integerEnumMap,
      :integerEnumSet
    ) = object;
    if (integerEnum1 != null) {
      result$
        ..add('integerEnum1')
        ..add(serializers.serialize(
          integerEnum1,
          specifiedType: const FullType(_i3.IntegerEnum),
        ));
    }
    if (integerEnum2 != null) {
      result$
        ..add('integerEnum2')
        ..add(serializers.serialize(
          integerEnum2,
          specifiedType: const FullType(_i3.IntegerEnum),
        ));
    }
    if (integerEnum3 != null) {
      result$
        ..add('integerEnum3')
        ..add(serializers.serialize(
          integerEnum3,
          specifiedType: const FullType(_i3.IntegerEnum),
        ));
    }
    if (integerEnumList != null) {
      result$
        ..add('integerEnumList')
        ..add(serializers.serialize(
          integerEnumList,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.IntegerEnum)],
          ),
        ));
    }
    if (integerEnumMap != null) {
      result$
        ..add('integerEnumMap')
        ..add(serializers.serialize(
          integerEnumMap,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.IntegerEnum),
            ],
          ),
        ));
    }
    if (integerEnumSet != null) {
      result$
        ..add('integerEnumSet')
        ..add(serializers.serialize(
          integerEnumSet,
          specifiedType: const FullType(
            _i4.BuiltSet,
            [FullType(_i3.IntegerEnum)],
          ),
        ));
    }
    return result$;
  }
}
