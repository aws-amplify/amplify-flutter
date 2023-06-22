// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library aws_json1_1_v2.json_protocol.model.json_int_enums_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_json1_1_v2/src/json_protocol/model/integer_enum.dart'
    as _i3;
import 'package:built_collection/built_collection.dart' as _i4;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'json_int_enums_input_output.g.dart';

abstract class JsonIntEnumsInputOutput
    with
        _i1.HttpInput<JsonIntEnumsInputOutput>,
        _i2.AWSEquatable<JsonIntEnumsInputOutput>
    implements Built<JsonIntEnumsInputOutput, JsonIntEnumsInputOutputBuilder> {
  factory JsonIntEnumsInputOutput({
    _i3.IntegerEnum? intEnum1,
    _i3.IntegerEnum? intEnum2,
    _i3.IntegerEnum? intEnum3,
    List<_i3.IntegerEnum>? intEnumList,
    Set<_i3.IntegerEnum>? intEnumSet,
    Map<String, _i3.IntegerEnum>? intEnumMap,
  }) {
    return _$JsonIntEnumsInputOutput._(
      intEnum1: intEnum1,
      intEnum2: intEnum2,
      intEnum3: intEnum3,
      intEnumList: intEnumList == null ? null : _i4.BuiltList(intEnumList),
      intEnumSet: intEnumSet == null ? null : _i4.BuiltSet(intEnumSet),
      intEnumMap: intEnumMap == null ? null : _i4.BuiltMap(intEnumMap),
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
      [JsonIntEnumsInputOutputAwsJson11Serializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonIntEnumsInputOutputBuilder b) {}
  _i3.IntegerEnum? get intEnum1;
  _i3.IntegerEnum? get intEnum2;
  _i3.IntegerEnum? get intEnum3;
  _i4.BuiltList<_i3.IntegerEnum>? get intEnumList;
  _i4.BuiltSet<_i3.IntegerEnum>? get intEnumSet;
  _i4.BuiltMap<String, _i3.IntegerEnum>? get intEnumMap;
  @override
  JsonIntEnumsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        intEnum1,
        intEnum2,
        intEnum3,
        intEnumList,
        intEnumSet,
        intEnumMap,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonIntEnumsInputOutput')
      ..add(
        'intEnum1',
        intEnum1,
      )
      ..add(
        'intEnum2',
        intEnum2,
      )
      ..add(
        'intEnum3',
        intEnum3,
      )
      ..add(
        'intEnumList',
        intEnumList,
      )
      ..add(
        'intEnumSet',
        intEnumSet,
      )
      ..add(
        'intEnumMap',
        intEnumMap,
      );
    return helper.toString();
  }
}

class JsonIntEnumsInputOutputAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<JsonIntEnumsInputOutput> {
  const JsonIntEnumsInputOutputAwsJson11Serializer()
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
          shape: 'awsJson1_1',
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
        case 'intEnum1':
          result.intEnum1 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IntegerEnum),
          ) as _i3.IntegerEnum);
        case 'intEnum2':
          result.intEnum2 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IntegerEnum),
          ) as _i3.IntegerEnum);
        case 'intEnum3':
          result.intEnum3 = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.IntegerEnum),
          ) as _i3.IntegerEnum);
        case 'intEnumList':
          result.intEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltList,
              [FullType(_i3.IntegerEnum)],
            ),
          ) as _i4.BuiltList<_i3.IntegerEnum>));
        case 'intEnumSet':
          result.intEnumSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltSet,
              [FullType(_i3.IntegerEnum)],
            ),
          ) as _i4.BuiltSet<_i3.IntegerEnum>));
        case 'intEnumMap':
          result.intEnumMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i4.BuiltMap,
              [
                FullType(String),
                FullType(_i3.IntegerEnum),
              ],
            ),
          ) as _i4.BuiltMap<String, _i3.IntegerEnum>));
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
      :intEnum1,
      :intEnum2,
      :intEnum3,
      :intEnumList,
      :intEnumSet,
      :intEnumMap
    ) = object;
    if (intEnum1 != null) {
      result$
        ..add('intEnum1')
        ..add(serializers.serialize(
          intEnum1,
          specifiedType: const FullType(_i3.IntegerEnum),
        ));
    }
    if (intEnum2 != null) {
      result$
        ..add('intEnum2')
        ..add(serializers.serialize(
          intEnum2,
          specifiedType: const FullType(_i3.IntegerEnum),
        ));
    }
    if (intEnum3 != null) {
      result$
        ..add('intEnum3')
        ..add(serializers.serialize(
          intEnum3,
          specifiedType: const FullType(_i3.IntegerEnum),
        ));
    }
    if (intEnumList != null) {
      result$
        ..add('intEnumList')
        ..add(serializers.serialize(
          intEnumList,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.IntegerEnum)],
          ),
        ));
    }
    if (intEnumSet != null) {
      result$
        ..add('intEnumSet')
        ..add(serializers.serialize(
          intEnumSet,
          specifiedType: const FullType(
            _i4.BuiltSet,
            [FullType(_i3.IntegerEnum)],
          ),
        ));
    }
    if (intEnumMap != null) {
      result$
        ..add('intEnumMap')
        ..add(serializers.serialize(
          intEnumMap,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.IntegerEnum),
            ],
          ),
        ));
    }
    return result$;
  }
}
