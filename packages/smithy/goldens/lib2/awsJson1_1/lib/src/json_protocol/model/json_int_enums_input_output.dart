// Generated with smithy-dart 0.3.2. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,unnecessary_library_name

library aws_json1_1_v2.json_protocol.model.json_int_enums_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_json1_1_v2/src/json_protocol/model/integer_enum.dart';
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
    IntegerEnum? intEnum1,
    IntegerEnum? intEnum2,
    IntegerEnum? intEnum3,
    List<IntegerEnum>? intEnumList,
    Set<IntegerEnum>? intEnumSet,
    Map<String, IntegerEnum>? intEnumMap,
  }) {
    return _$JsonIntEnumsInputOutput._(
      intEnum1: intEnum1,
      intEnum2: intEnum2,
      intEnum3: intEnum3,
      intEnumList: intEnumList == null ? null : _i3.BuiltList(intEnumList),
      intEnumSet: intEnumSet == null ? null : _i3.BuiltSet(intEnumSet),
      intEnumMap: intEnumMap == null ? null : _i3.BuiltMap(intEnumMap),
    );
  }

  factory JsonIntEnumsInputOutput.build([
    void Function(JsonIntEnumsInputOutputBuilder) updates,
  ]) = _$JsonIntEnumsInputOutput;

  const JsonIntEnumsInputOutput._();

  factory JsonIntEnumsInputOutput.fromRequest(
    JsonIntEnumsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) => payload;

  /// Constructs a [JsonIntEnumsInputOutput] from a [payload] and [response].
  factory JsonIntEnumsInputOutput.fromResponse(
    JsonIntEnumsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) => payload;

  static const List<_i1.SmithySerializer<JsonIntEnumsInputOutput>> serializers =
      [JsonIntEnumsInputOutputAwsJson11Serializer()];

  IntegerEnum? get intEnum1;
  IntegerEnum? get intEnum2;
  IntegerEnum? get intEnum3;
  _i3.BuiltList<IntegerEnum>? get intEnumList;
  _i3.BuiltSet<IntegerEnum>? get intEnumSet;
  _i3.BuiltMap<String, IntegerEnum>? get intEnumMap;
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
      ..add('intEnum1', intEnum1)
      ..add('intEnum2', intEnum2)
      ..add('intEnum3', intEnum3)
      ..add('intEnumList', intEnumList)
      ..add('intEnumSet', intEnumSet)
      ..add('intEnumMap', intEnumMap);
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
    _i1.ShapeId(namespace: 'aws.protocols', shape: 'awsJson1_1'),
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
          result.intEnum1 =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(IntegerEnum),
                  )
                  as IntegerEnum);
        case 'intEnum2':
          result.intEnum2 =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(IntegerEnum),
                  )
                  as IntegerEnum);
        case 'intEnum3':
          result.intEnum3 =
              (serializers.deserialize(
                    value,
                    specifiedType: const FullType(IntegerEnum),
                  )
                  as IntegerEnum);
        case 'intEnumList':
          result.intEnumList.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i3.BuiltList, [
                    FullType(IntegerEnum),
                  ]),
                )
                as _i3.BuiltList<IntegerEnum>),
          );
        case 'intEnumSet':
          result.intEnumSet.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i3.BuiltSet, [
                    FullType(IntegerEnum),
                  ]),
                )
                as _i3.BuiltSet<IntegerEnum>),
          );
        case 'intEnumMap':
          result.intEnumMap.replace(
            (serializers.deserialize(
                  value,
                  specifiedType: const FullType(_i3.BuiltMap, [
                    FullType(String),
                    FullType(IntegerEnum),
                  ]),
                )
                as _i3.BuiltMap<String, IntegerEnum>),
          );
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
      :intEnumMap,
    ) = object;
    if (intEnum1 != null) {
      result$
        ..add('intEnum1')
        ..add(
          serializers.serialize(
            intEnum1,
            specifiedType: const FullType(IntegerEnum),
          ),
        );
    }
    if (intEnum2 != null) {
      result$
        ..add('intEnum2')
        ..add(
          serializers.serialize(
            intEnum2,
            specifiedType: const FullType(IntegerEnum),
          ),
        );
    }
    if (intEnum3 != null) {
      result$
        ..add('intEnum3')
        ..add(
          serializers.serialize(
            intEnum3,
            specifiedType: const FullType(IntegerEnum),
          ),
        );
    }
    if (intEnumList != null) {
      result$
        ..add('intEnumList')
        ..add(
          serializers.serialize(
            intEnumList,
            specifiedType: const FullType(_i3.BuiltList, [
              FullType(IntegerEnum),
            ]),
          ),
        );
    }
    if (intEnumSet != null) {
      result$
        ..add('intEnumSet')
        ..add(
          serializers.serialize(
            intEnumSet,
            specifiedType: const FullType(_i3.BuiltSet, [
              FullType(IntegerEnum),
            ]),
          ),
        );
    }
    if (intEnumMap != null) {
      result$
        ..add('intEnumMap')
        ..add(
          serializers.serialize(
            intEnumMap,
            specifiedType: const FullType(_i3.BuiltMap, [
              FullType(String),
              FullType(IntegerEnum),
            ]),
          ),
        );
    }
    return result$;
  }
}
