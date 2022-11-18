// Generated with smithy-dart 0.3.0. DO NOT MODIFY.

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
    Map<String, _i3.IntegerEnum>? intEnumMap,
    Set<_i3.IntegerEnum>? intEnumSet,
  }) {
    return _$JsonIntEnumsInputOutput._(
      intEnum1: intEnum1,
      intEnum2: intEnum2,
      intEnum3: intEnum3,
      intEnumList: intEnumList == null ? null : _i4.BuiltList(intEnumList),
      intEnumMap: intEnumMap == null ? null : _i4.BuiltMap(intEnumMap),
      intEnumSet: intEnumSet == null ? null : _i4.BuiltSet(intEnumSet),
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

  static const List<_i1.SmithySerializer> serializers = [
    JsonIntEnumsInputOutputAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonIntEnumsInputOutputBuilder b) {}
  _i3.IntegerEnum? get intEnum1;
  _i3.IntegerEnum? get intEnum2;
  _i3.IntegerEnum? get intEnum3;
  _i4.BuiltList<_i3.IntegerEnum>? get intEnumList;
  _i4.BuiltMap<String, _i3.IntegerEnum>? get intEnumMap;
  _i4.BuiltSet<_i3.IntegerEnum>? get intEnumSet;
  @override
  JsonIntEnumsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        intEnum1,
        intEnum2,
        intEnum3,
        intEnumList,
        intEnumMap,
        intEnumSet,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonIntEnumsInputOutput');
    helper.add(
      'intEnum1',
      intEnum1,
    );
    helper.add(
      'intEnum2',
      intEnum2,
    );
    helper.add(
      'intEnum3',
      intEnum3,
    );
    helper.add(
      'intEnumList',
      intEnumList,
    );
    helper.add(
      'intEnumMap',
      intEnumMap,
    );
    helper.add(
      'intEnumSet',
      intEnumSet,
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
      switch (key) {
        case 'intEnum1':
          if (value != null) {
            result.intEnum1 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.IntegerEnum),
            ) as _i3.IntegerEnum);
          }
          break;
        case 'intEnum2':
          if (value != null) {
            result.intEnum2 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.IntegerEnum),
            ) as _i3.IntegerEnum);
          }
          break;
        case 'intEnum3':
          if (value != null) {
            result.intEnum3 = (serializers.deserialize(
              value,
              specifiedType: const FullType(_i3.IntegerEnum),
            ) as _i3.IntegerEnum);
          }
          break;
        case 'intEnumList':
          if (value != null) {
            result.intEnumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltList,
                [FullType(_i3.IntegerEnum)],
              ),
            ) as _i4.BuiltList<_i3.IntegerEnum>));
          }
          break;
        case 'intEnumMap':
          if (value != null) {
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
          break;
        case 'intEnumSet':
          if (value != null) {
            result.intEnumSet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i4.BuiltSet,
                [FullType(_i3.IntegerEnum)],
              ),
            ) as _i4.BuiltSet<_i3.IntegerEnum>));
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
    final payload = (object as JsonIntEnumsInputOutput);
    final result = <Object?>[];
    if (payload.intEnum1 != null) {
      result
        ..add('intEnum1')
        ..add(serializers.serialize(
          payload.intEnum1!,
          specifiedType: const FullType(_i3.IntegerEnum),
        ));
    }
    if (payload.intEnum2 != null) {
      result
        ..add('intEnum2')
        ..add(serializers.serialize(
          payload.intEnum2!,
          specifiedType: const FullType(_i3.IntegerEnum),
        ));
    }
    if (payload.intEnum3 != null) {
      result
        ..add('intEnum3')
        ..add(serializers.serialize(
          payload.intEnum3!,
          specifiedType: const FullType(_i3.IntegerEnum),
        ));
    }
    if (payload.intEnumList != null) {
      result
        ..add('intEnumList')
        ..add(serializers.serialize(
          payload.intEnumList!,
          specifiedType: const FullType(
            _i4.BuiltList,
            [FullType(_i3.IntegerEnum)],
          ),
        ));
    }
    if (payload.intEnumMap != null) {
      result
        ..add('intEnumMap')
        ..add(serializers.serialize(
          payload.intEnumMap!,
          specifiedType: const FullType(
            _i4.BuiltMap,
            [
              FullType(String),
              FullType(_i3.IntegerEnum),
            ],
          ),
        ));
    }
    if (payload.intEnumSet != null) {
      result
        ..add('intEnumSet')
        ..add(serializers.serialize(
          payload.intEnumSet!,
          specifiedType: const FullType(
            _i4.BuiltSet,
            [FullType(_i3.IntegerEnum)],
          ),
        ));
    }
    return result;
  }
}
