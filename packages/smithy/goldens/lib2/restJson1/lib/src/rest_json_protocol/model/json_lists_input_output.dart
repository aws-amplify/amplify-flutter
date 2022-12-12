// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_protocol.model.json_lists_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_enum.dart'
    as _i3;
import 'package:rest_json1_v2/src/rest_json_protocol/model/integer_enum.dart'
    as _i4;
import 'package:rest_json1_v2/src/rest_json_protocol/model/structure_list_member.dart'
    as _i5;
import 'package:smithy/smithy.dart' as _i1;

part 'json_lists_input_output.g.dart';

abstract class JsonListsInputOutput
    with
        _i1.HttpInput<JsonListsInputOutput>,
        _i2.AWSEquatable<JsonListsInputOutput>
    implements Built<JsonListsInputOutput, JsonListsInputOutputBuilder> {
  factory JsonListsInputOutput({
    List<bool>? booleanList,
    List<_i3.FooEnum>? enumList,
    List<_i4.IntegerEnum>? intEnumList,
    List<int>? integerList,
    List<List<String>>? nestedStringList,
    List<String?>? sparseStringList,
    List<String>? stringList,
    Set<String>? stringSet,
    List<_i5.StructureListMember>? structureList,
    List<DateTime>? timestampList,
  }) {
    return _$JsonListsInputOutput._(
      booleanList: booleanList == null ? null : _i6.BuiltList(booleanList),
      enumList: enumList == null ? null : _i6.BuiltList(enumList),
      intEnumList: intEnumList == null ? null : _i6.BuiltList(intEnumList),
      integerList: integerList == null ? null : _i6.BuiltList(integerList),
      nestedStringList: nestedStringList == null
          ? null
          : _i6.BuiltList(nestedStringList.map((el) => _i6.BuiltList(el))),
      sparseStringList:
          sparseStringList == null ? null : _i6.BuiltList(sparseStringList),
      stringList: stringList == null ? null : _i6.BuiltList(stringList),
      stringSet: stringSet == null ? null : _i6.BuiltSet(stringSet),
      structureList:
          structureList == null ? null : _i6.BuiltList(structureList),
      timestampList:
          timestampList == null ? null : _i6.BuiltList(timestampList),
    );
  }

  factory JsonListsInputOutput.build(
          [void Function(JsonListsInputOutputBuilder) updates]) =
      _$JsonListsInputOutput;

  const JsonListsInputOutput._();

  factory JsonListsInputOutput.fromRequest(
    JsonListsInputOutput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [JsonListsInputOutput] from a [payload] and [response].
  factory JsonListsInputOutput.fromResponse(
    JsonListsInputOutput payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer> serializers = [
    JsonListsInputOutputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(JsonListsInputOutputBuilder b) {}
  _i6.BuiltList<bool>? get booleanList;
  _i6.BuiltList<_i3.FooEnum>? get enumList;
  _i6.BuiltList<_i4.IntegerEnum>? get intEnumList;
  _i6.BuiltList<int>? get integerList;

  /// A list of lists of strings.
  _i6.BuiltList<_i6.BuiltList<String>>? get nestedStringList;
  _i6.BuiltList<String?>? get sparseStringList;
  _i6.BuiltList<String>? get stringList;
  _i6.BuiltSet<String>? get stringSet;
  _i6.BuiltList<_i5.StructureListMember>? get structureList;
  _i6.BuiltList<DateTime>? get timestampList;
  @override
  JsonListsInputOutput getPayload() => this;
  @override
  List<Object?> get props => [
        booleanList,
        enumList,
        intEnumList,
        integerList,
        nestedStringList,
        sparseStringList,
        stringList,
        stringSet,
        structureList,
        timestampList,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonListsInputOutput');
    helper.add(
      'booleanList',
      booleanList,
    );
    helper.add(
      'enumList',
      enumList,
    );
    helper.add(
      'intEnumList',
      intEnumList,
    );
    helper.add(
      'integerList',
      integerList,
    );
    helper.add(
      'nestedStringList',
      nestedStringList,
    );
    helper.add(
      'sparseStringList',
      sparseStringList,
    );
    helper.add(
      'stringList',
      stringList,
    );
    helper.add(
      'stringSet',
      stringSet,
    );
    helper.add(
      'structureList',
      structureList,
    );
    helper.add(
      'timestampList',
      timestampList,
    );
    return helper.toString();
  }
}

class JsonListsInputOutputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<JsonListsInputOutput> {
  const JsonListsInputOutputRestJson1Serializer()
      : super('JsonListsInputOutput');

  @override
  Iterable<Type> get types => const [
        JsonListsInputOutput,
        _$JsonListsInputOutput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  JsonListsInputOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonListsInputOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'booleanList':
          if (value != null) {
            result.booleanList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(bool)],
              ),
            ) as _i6.BuiltList<bool>));
          }
          break;
        case 'enumList':
          if (value != null) {
            result.enumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.FooEnum)],
              ),
            ) as _i6.BuiltList<_i3.FooEnum>));
          }
          break;
        case 'intEnumList':
          if (value != null) {
            result.intEnumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i4.IntegerEnum)],
              ),
            ) as _i6.BuiltList<_i4.IntegerEnum>));
          }
          break;
        case 'integerList':
          if (value != null) {
            result.integerList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(int)],
              ),
            ) as _i6.BuiltList<int>));
          }
          break;
        case 'nestedStringList':
          if (value != null) {
            result.nestedStringList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [
                  FullType(
                    _i6.BuiltList,
                    [FullType(String)],
                  )
                ],
              ),
            ) as _i6.BuiltList<_i6.BuiltList<String>>));
          }
          break;
        case 'sparseStringList':
          if (value != null) {
            result.sparseStringList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType.nullable(String)],
              ),
            ) as _i6.BuiltList<String?>));
          }
          break;
        case 'stringList':
          if (value != null) {
            result.stringList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(String)],
              ),
            ) as _i6.BuiltList<String>));
          }
          break;
        case 'stringSet':
          if (value != null) {
            result.stringSet.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltSet,
                [FullType(String)],
              ),
            ) as _i6.BuiltSet<String>));
          }
          break;
        case 'myStructureList':
          if (value != null) {
            result.structureList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i5.StructureListMember)],
              ),
            ) as _i6.BuiltList<_i5.StructureListMember>));
          }
          break;
        case 'timestampList':
          if (value != null) {
            result.timestampList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(DateTime)],
              ),
            ) as _i6.BuiltList<DateTime>));
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
    final payload = (object as JsonListsInputOutput);
    final result = <Object?>[];
    if (payload.booleanList != null) {
      result
        ..add('booleanList')
        ..add(serializers.serialize(
          payload.booleanList!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(bool)],
          ),
        ));
    }
    if (payload.enumList != null) {
      result
        ..add('enumList')
        ..add(serializers.serialize(
          payload.enumList!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i3.FooEnum)],
          ),
        ));
    }
    if (payload.intEnumList != null) {
      result
        ..add('intEnumList')
        ..add(serializers.serialize(
          payload.intEnumList!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i4.IntegerEnum)],
          ),
        ));
    }
    if (payload.integerList != null) {
      result
        ..add('integerList')
        ..add(serializers.serialize(
          payload.integerList!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    if (payload.nestedStringList != null) {
      result
        ..add('nestedStringList')
        ..add(serializers.serialize(
          payload.nestedStringList!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [
              FullType(
                _i6.BuiltList,
                [FullType(String)],
              )
            ],
          ),
        ));
    }
    if (payload.sparseStringList != null) {
      result
        ..add('sparseStringList')
        ..add(serializers.serialize(
          payload.sparseStringList!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType.nullable(String)],
          ),
        ));
    }
    if (payload.stringList != null) {
      result
        ..add('stringList')
        ..add(serializers.serialize(
          payload.stringList!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (payload.stringSet != null) {
      result
        ..add('stringSet')
        ..add(serializers.serialize(
          payload.stringSet!,
          specifiedType: const FullType(
            _i6.BuiltSet,
            [FullType(String)],
          ),
        ));
    }
    if (payload.structureList != null) {
      result
        ..add('myStructureList')
        ..add(serializers.serialize(
          payload.structureList!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(_i5.StructureListMember)],
          ),
        ));
    }
    if (payload.timestampList != null) {
      result
        ..add('timestampList')
        ..add(serializers.serialize(
          payload.timestampList!,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(DateTime)],
          ),
        ));
    }
    return result;
  }
}
