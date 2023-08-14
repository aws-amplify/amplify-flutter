// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_protocol.model.json_enums_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_enum.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'json_enums_input_output.g.dart';

abstract class JsonEnumsInputOutput
    with
        _i1.HttpInput<JsonEnumsInputOutput>,
        _i2.AWSEquatable<JsonEnumsInputOutput>
    implements Built<JsonEnumsInputOutput, JsonEnumsInputOutputBuilder> {
  factory JsonEnumsInputOutput({
    FooEnum? fooEnum1,
    FooEnum? fooEnum2,
    FooEnum? fooEnum3,
    List<FooEnum>? fooEnumList,
    Set<FooEnum>? fooEnumSet,
    Map<String, FooEnum>? fooEnumMap,
  }) {
    return _$JsonEnumsInputOutput._(
      fooEnum1: fooEnum1,
      fooEnum2: fooEnum2,
      fooEnum3: fooEnum3,
      fooEnumList: fooEnumList == null ? null : _i3.BuiltList(fooEnumList),
      fooEnumSet: fooEnumSet == null ? null : _i3.BuiltSet(fooEnumSet),
      fooEnumMap: fooEnumMap == null ? null : _i3.BuiltMap(fooEnumMap),
    );
  }

  factory JsonEnumsInputOutput.build(
          [void Function(JsonEnumsInputOutputBuilder) updates]) =
      _$JsonEnumsInputOutput;

  const JsonEnumsInputOutput._();

  factory JsonEnumsInputOutput.fromRequest(
    JsonEnumsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [JsonEnumsInputOutput] from a [payload] and [response].
  factory JsonEnumsInputOutput.fromResponse(
    JsonEnumsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<JsonEnumsInputOutput>> serializers = [
    JsonEnumsInputOutputRestJson1Serializer()
  ];

  FooEnum? get fooEnum1;
  FooEnum? get fooEnum2;
  FooEnum? get fooEnum3;
  _i3.BuiltList<FooEnum>? get fooEnumList;
  _i3.BuiltSet<FooEnum>? get fooEnumSet;
  _i3.BuiltMap<String, FooEnum>? get fooEnumMap;
  @override
  JsonEnumsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        fooEnum1,
        fooEnum2,
        fooEnum3,
        fooEnumList,
        fooEnumSet,
        fooEnumMap,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonEnumsInputOutput')
      ..add(
        'fooEnum1',
        fooEnum1,
      )
      ..add(
        'fooEnum2',
        fooEnum2,
      )
      ..add(
        'fooEnum3',
        fooEnum3,
      )
      ..add(
        'fooEnumList',
        fooEnumList,
      )
      ..add(
        'fooEnumSet',
        fooEnumSet,
      )
      ..add(
        'fooEnumMap',
        fooEnumMap,
      );
    return helper.toString();
  }
}

class JsonEnumsInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<JsonEnumsInputOutput> {
  const JsonEnumsInputOutputRestJson1Serializer()
      : super('JsonEnumsInputOutput');

  @override
  Iterable<Type> get types => const [
        JsonEnumsInputOutput,
        _$JsonEnumsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  JsonEnumsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonEnumsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'fooEnum1':
          result.fooEnum1 = (serializers.deserialize(
            value,
            specifiedType: const FullType(FooEnum),
          ) as FooEnum);
        case 'fooEnum2':
          result.fooEnum2 = (serializers.deserialize(
            value,
            specifiedType: const FullType(FooEnum),
          ) as FooEnum);
        case 'fooEnum3':
          result.fooEnum3 = (serializers.deserialize(
            value,
            specifiedType: const FullType(FooEnum),
          ) as FooEnum);
        case 'fooEnumList':
          result.fooEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(FooEnum)],
            ),
          ) as _i3.BuiltList<FooEnum>));
        case 'fooEnumMap':
          result.fooEnumMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltMap,
              [
                FullType(String),
                FullType(FooEnum),
              ],
            ),
          ) as _i3.BuiltMap<String, FooEnum>));
        case 'fooEnumSet':
          result.fooEnumSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltSet,
              [FullType(FooEnum)],
            ),
          ) as _i3.BuiltSet<FooEnum>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    JsonEnumsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final JsonEnumsInputOutput(
      :fooEnum1,
      :fooEnum2,
      :fooEnum3,
      :fooEnumList,
      :fooEnumMap,
      :fooEnumSet
    ) = object;
    if (fooEnum1 != null) {
      result$
        ..add('fooEnum1')
        ..add(serializers.serialize(
          fooEnum1,
          specifiedType: const FullType(FooEnum),
        ));
    }
    if (fooEnum2 != null) {
      result$
        ..add('fooEnum2')
        ..add(serializers.serialize(
          fooEnum2,
          specifiedType: const FullType(FooEnum),
        ));
    }
    if (fooEnum3 != null) {
      result$
        ..add('fooEnum3')
        ..add(serializers.serialize(
          fooEnum3,
          specifiedType: const FullType(FooEnum),
        ));
    }
    if (fooEnumList != null) {
      result$
        ..add('fooEnumList')
        ..add(serializers.serialize(
          fooEnumList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(FooEnum)],
          ),
        ));
    }
    if (fooEnumMap != null) {
      result$
        ..add('fooEnumMap')
        ..add(serializers.serialize(
          fooEnumMap,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(FooEnum),
            ],
          ),
        ));
    }
    if (fooEnumSet != null) {
      result$
        ..add('fooEnumSet')
        ..add(serializers.serialize(
          fooEnumSet,
          specifiedType: const FullType(
            _i3.BuiltSet,
            [FullType(FooEnum)],
          ),
        ));
    }
    return result$;
  }
}
