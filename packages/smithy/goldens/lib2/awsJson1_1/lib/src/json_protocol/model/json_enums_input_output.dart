// Generated with smithy-dart 0.1.0. DO NOT MODIFY.

library aws_json1_1_v2.json_protocol.model.json_enums_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_json1_1_v2/src/json_protocol/model/foo_enum.dart' as _i3;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'json_enums_input_output.g.dart';

abstract class JsonEnumsInputOutput
    with
        _i1.HttpInput<JsonEnumsInputOutput>,
        _i2.AWSEquatable<JsonEnumsInputOutput>
    implements Built<JsonEnumsInputOutput, JsonEnumsInputOutputBuilder> {
  factory JsonEnumsInputOutput({
    _i3.FooEnum? fooEnum1,
    _i3.FooEnum? fooEnum2,
    _i3.FooEnum? fooEnum3,
    List<_i3.FooEnum>? fooEnumList,
    Map<String, _i3.FooEnum>? fooEnumMap,
    Set<_i3.FooEnum>? fooEnumSet,
  }) {
    return _$JsonEnumsInputOutput._(
      fooEnum1: fooEnum1,
      fooEnum2: fooEnum2,
      fooEnum3: fooEnum3,
      fooEnumList: fooEnumList == null ? null : _i4.BuiltList(fooEnumList),
      fooEnumMap: fooEnumMap == null ? null : _i4.BuiltMap(fooEnumMap),
      fooEnumSet: fooEnumSet == null ? null : _i4.BuiltSet(fooEnumSet),
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

  static const List<_i1.SmithySerializer> serializers = [
    JsonEnumsInputOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonEnumsInputOutputBuilder b) {}
  _i3.FooEnum? get fooEnum1;
  _i3.FooEnum? get fooEnum2;
  _i3.FooEnum? get fooEnum3;
  _i4.BuiltList<_i3.FooEnum>? get fooEnumList;
  _i4.BuiltMap<String, _i3.FooEnum>? get fooEnumMap;
  _i4.BuiltSet<_i3.FooEnum>? get fooEnumSet;
  @override
  JsonEnumsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        fooEnum1,
        fooEnum2,
        fooEnum3,
        fooEnumList,
        fooEnumMap,
        fooEnumSet,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonEnumsInputOutput');
    helper.add(
      'fooEnum1',
      fooEnum1,
    );
    helper.add(
      'fooEnum2',
      fooEnum2,
    );
    helper.add(
      'fooEnum3',
      fooEnum3,
    );
    helper.add(
      'fooEnumList',
      fooEnumList,
    );
    helper.add(
      'fooEnumMap',
      fooEnumMap,
    );
    helper.add(
      'fooEnumSet',
      fooEnumSet,
    );
    return helper.toString();
  }
}

class JsonEnumsInputOutputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<JsonEnumsInputOutput> {
  const JsonEnumsInputOutputAwsJson11Serializer()
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
          shape: 'awsJson1_1',
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
      switch (key) {
        case 'fooEnum1':
          if (value != null) {
            result.fooEnum1 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.FooEnum),
            ) as _i3.FooEnum);
          }
          break;
        case 'fooEnum2':
          if (value != null) {
            result.fooEnum2 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.FooEnum),
            ) as _i3.FooEnum);
          }
          break;
        case 'fooEnum3':
          if (value != null) {
            result.fooEnum3 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.FooEnum),
            ) as _i3.FooEnum);
          }
          break;
        case 'fooEnumList':
          if (value != null) {
            result.fooEnumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.FooEnum)],
              ),
            ) as _i4.BuiltList<_i3.FooEnum>));
          }
          break;
        case 'fooEnumMap':
          if (value != null) {
            result.fooEnumMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltMap,
                [
                  FullType(String),
                  FullType(_i3.FooEnum),
                ],
              ),
            ) as _i4.BuiltMap<String, _i3.FooEnum>));
          }
          break;
        case 'fooEnumSet':
          if (value != null) {
            result.fooEnumSet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltSet,
                [FullType(_i3.FooEnum)],
              ),
            ) as _i4.BuiltSet<_i3.FooEnum>));
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
    final payload = (object as JsonEnumsInputOutput);
    final result = <Object?>[];
    if (payload.fooEnum1 != null) {
      result
        ..add('fooEnum1')
        ..add(serializers.serialize(
          payload.fooEnum1!,
          specifiedType: const FullType(_i3.FooEnum),
        ));
    }
    if (payload.fooEnum2 != null) {
      result
        ..add('fooEnum2')
        ..add(serializers.serialize(
          payload.fooEnum2!,
          specifiedType: const FullType(_i3.FooEnum),
        ));
    }
    if (payload.fooEnum3 != null) {
      result
        ..add('fooEnum3')
        ..add(serializers.serialize(
          payload.fooEnum3!,
          specifiedType: const FullType(_i3.FooEnum),
        ));
    }
    if (payload.fooEnumList != null) {
      result
        ..add('fooEnumList')
        ..add(serializers.serialize(
          payload.fooEnumList!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.FooEnum)],
          ),
        ));
    }
    if (payload.fooEnumMap != null) {
      result
        ..add('fooEnumMap')
        ..add(serializers.serialize(
          payload.fooEnumMap!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.FooEnum),
            ],
          ),
        ));
    }
    if (payload.fooEnumSet != null) {
      result
        ..add('fooEnumSet')
        ..add(serializers.serialize(
          payload.fooEnumSet!,
          specifiedType: const FullType(
            _i4.BuiltSet,
            [FullType(_i3.FooEnum)],
          ),
        ));
    }
    return result;
  }
}
