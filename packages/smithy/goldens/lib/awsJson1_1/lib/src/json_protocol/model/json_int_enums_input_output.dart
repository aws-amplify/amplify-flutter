// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library aws_json1_1_v1.json_protocol.model.json_int_enums_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
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
    int? intEnum1,
    int? intEnum2,
    int? intEnum3,
    List<int>? intEnumList,
    Map<String, int>? intEnumMap,
    Set<int>? intEnumSet,
  }) {
    return _$JsonIntEnumsInputOutput._(
      intEnum1: intEnum1,
      intEnum2: intEnum2,
      intEnum3: intEnum3,
      intEnumList: intEnumList == null ? null : _i3.BuiltList(intEnumList),
      intEnumMap: intEnumMap == null ? null : _i3.BuiltMap(intEnumMap),
      intEnumSet: intEnumSet == null ? null : _i3.BuiltSet(intEnumSet),
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
  int? get intEnum1;
  int? get intEnum2;
  int? get intEnum3;
  _i3.BuiltList<int>? get intEnumList;
  _i3.BuiltMap<String, int>? get intEnumMap;
  _i3.BuiltSet<int>? get intEnumSet;
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
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'intEnum2':
          if (value != null) {
            result.intEnum2 = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'intEnum3':
          if (value != null) {
            result.intEnum3 = (serializers.deserialize(
              value,
              specifiedType: const FullType(int),
            ) as int);
          }
          break;
        case 'intEnumList':
          if (value != null) {
            result.intEnumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltList,
                [FullType(int)],
              ),
            ) as _i3.BuiltList<int>));
          }
          break;
        case 'intEnumMap':
          if (value != null) {
            result.intEnumMap.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltMap,
                [
                  FullType(String),
                  FullType(int),
                ],
              ),
            ) as _i3.BuiltMap<String, int>));
          }
          break;
        case 'intEnumSet':
          if (value != null) {
            result.intEnumSet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i3.BuiltSet,
                [FullType(int)],
              ),
            ) as _i3.BuiltSet<int>));
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
          specifiedType: const FullType(int),
        ));
    }
    if (payload.intEnum2 != null) {
      result
        ..add('intEnum2')
        ..add(serializers.serialize(
          payload.intEnum2!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.intEnum3 != null) {
      result
        ..add('intEnum3')
        ..add(serializers.serialize(
          payload.intEnum3!,
          specifiedType: const FullType(int),
        ));
    }
    if (payload.intEnumList != null) {
      result
        ..add('intEnumList')
        ..add(serializers.serialize(
          payload.intEnumList!,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    if (payload.intEnumMap != null) {
      result
        ..add('intEnumMap')
        ..add(serializers.serialize(
          payload.intEnumMap!,
          specifiedType: const FullType(
            _i3.BuiltMap,
            [
              FullType(String),
              FullType(int),
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
            _i3.BuiltSet,
            [FullType(int)],
          ),
        ));
    }
    return result;
  }
}
