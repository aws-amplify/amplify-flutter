// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_protocol.model.json_lists_input_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/foo_enum.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/integer_enum.dart';
import 'package:rest_json1_v2/src/rest_json_protocol/model/structure_list_member.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'json_lists_input_output.g.dart';

abstract class JsonListsInputOutput
    with
        _i1.HttpInput<JsonListsInputOutput>,
        _i2.AWSEquatable<JsonListsInputOutput>
    implements Built<JsonListsInputOutput, JsonListsInputOutputBuilder> {
  factory JsonListsInputOutput({
    List<String>? stringList,
    List<String?>? sparseStringList,
    Set<String>? stringSet,
    List<int>? integerList,
    List<bool>? booleanList,
    List<DateTime>? timestampList,
    List<FooEnum>? enumList,
    List<IntegerEnum>? intEnumList,
    List<List<String>>? nestedStringList,
    List<StructureListMember>? structureList,
  }) {
    return _$JsonListsInputOutput._(
      stringList: stringList == null ? null : _i3.BuiltList(stringList),
      sparseStringList:
          sparseStringList == null ? null : _i3.BuiltList(sparseStringList),
      stringSet: stringSet == null ? null : _i3.BuiltSet(stringSet),
      integerList: integerList == null ? null : _i3.BuiltList(integerList),
      booleanList: booleanList == null ? null : _i3.BuiltList(booleanList),
      timestampList:
          timestampList == null ? null : _i3.BuiltList(timestampList),
      enumList: enumList == null ? null : _i3.BuiltList(enumList),
      intEnumList: intEnumList == null ? null : _i3.BuiltList(intEnumList),
      nestedStringList: nestedStringList == null
          ? null
          : _i3.BuiltList(nestedStringList.map((el) => _i3.BuiltList(el))),
      structureList:
          structureList == null ? null : _i3.BuiltList(structureList),
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

  static const List<_i1.SmithySerializer<JsonListsInputOutput>> serializers = [
    JsonListsInputOutputRestJson1Serializer()
  ];

  _i3.BuiltList<String>? get stringList;
  _i3.BuiltList<String?>? get sparseStringList;
  _i3.BuiltSet<String>? get stringSet;
  _i3.BuiltList<int>? get integerList;
  _i3.BuiltList<bool>? get booleanList;
  _i3.BuiltList<DateTime>? get timestampList;
  _i3.BuiltList<FooEnum>? get enumList;
  _i3.BuiltList<IntegerEnum>? get intEnumList;

  /// A list of lists of strings.
  _i3.BuiltList<_i3.BuiltList<String>>? get nestedStringList;
  _i3.BuiltList<StructureListMember>? get structureList;
  @override
  JsonListsInputOutput getPayload() => this;

  @override
  List<Object?> get props => [
        stringList,
        sparseStringList,
        stringSet,
        integerList,
        booleanList,
        timestampList,
        enumList,
        intEnumList,
        nestedStringList,
        structureList,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('JsonListsInputOutput')
      ..add(
        'stringList',
        stringList,
      )
      ..add(
        'sparseStringList',
        sparseStringList,
      )
      ..add(
        'stringSet',
        stringSet,
      )
      ..add(
        'integerList',
        integerList,
      )
      ..add(
        'booleanList',
        booleanList,
      )
      ..add(
        'timestampList',
        timestampList,
      )
      ..add(
        'enumList',
        enumList,
      )
      ..add(
        'intEnumList',
        intEnumList,
      )
      ..add(
        'nestedStringList',
        nestedStringList,
      )
      ..add(
        'structureList',
        structureList,
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
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'booleanList':
          result.booleanList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(bool)],
            ),
          ) as _i3.BuiltList<bool>));
        case 'enumList':
          result.enumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(FooEnum)],
            ),
          ) as _i3.BuiltList<FooEnum>));
        case 'intEnumList':
          result.intEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(IntegerEnum)],
            ),
          ) as _i3.BuiltList<IntegerEnum>));
        case 'integerList':
          result.integerList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(int)],
            ),
          ) as _i3.BuiltList<int>));
        case 'nestedStringList':
          result.nestedStringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [
                FullType(
                  _i3.BuiltList,
                  [FullType(String)],
                )
              ],
            ),
          ) as _i3.BuiltList<_i3.BuiltList<String>>));
        case 'sparseStringList':
          result.sparseStringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType.nullable(String)],
            ),
          ) as _i3.BuiltList<String?>));
        case 'stringList':
          result.stringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(String)],
            ),
          ) as _i3.BuiltList<String>));
        case 'stringSet':
          result.stringSet.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltSet,
              [FullType(String)],
            ),
          ) as _i3.BuiltSet<String>));
        case 'myStructureList':
          result.structureList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(StructureListMember)],
            ),
          ) as _i3.BuiltList<StructureListMember>));
        case 'timestampList':
          result.timestampList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(DateTime)],
            ),
          ) as _i3.BuiltList<DateTime>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    JsonListsInputOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final JsonListsInputOutput(
      :booleanList,
      :enumList,
      :intEnumList,
      :integerList,
      :nestedStringList,
      :sparseStringList,
      :stringList,
      :stringSet,
      :structureList,
      :timestampList
    ) = object;
    if (booleanList != null) {
      result$
        ..add('booleanList')
        ..add(serializers.serialize(
          booleanList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(bool)],
          ),
        ));
    }
    if (enumList != null) {
      result$
        ..add('enumList')
        ..add(serializers.serialize(
          enumList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(FooEnum)],
          ),
        ));
    }
    if (intEnumList != null) {
      result$
        ..add('intEnumList')
        ..add(serializers.serialize(
          intEnumList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(IntegerEnum)],
          ),
        ));
    }
    if (integerList != null) {
      result$
        ..add('integerList')
        ..add(serializers.serialize(
          integerList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(int)],
          ),
        ));
    }
    if (nestedStringList != null) {
      result$
        ..add('nestedStringList')
        ..add(serializers.serialize(
          nestedStringList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [
              FullType(
                _i3.BuiltList,
                [FullType(String)],
              )
            ],
          ),
        ));
    }
    if (sparseStringList != null) {
      result$
        ..add('sparseStringList')
        ..add(serializers.serialize(
          sparseStringList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType.nullable(String)],
          ),
        ));
    }
    if (stringList != null) {
      result$
        ..add('stringList')
        ..add(serializers.serialize(
          stringList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (stringSet != null) {
      result$
        ..add('stringSet')
        ..add(serializers.serialize(
          stringSet,
          specifiedType: const FullType(
            _i3.BuiltSet,
            [FullType(String)],
          ),
        ));
    }
    if (structureList != null) {
      result$
        ..add('myStructureList')
        ..add(serializers.serialize(
          structureList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(StructureListMember)],
          ),
        ));
    }
    if (timestampList != null) {
      result$
        ..add('timestampList')
        ..add(serializers.serialize(
          timestampList,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(DateTime)],
          ),
        ));
    }
    return result$;
  }
}
