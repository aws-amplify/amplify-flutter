// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library rest_json1_v2.rest_json_validation_protocol.model.malformed_unique_items_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i10;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/foo_enum.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/foo_union.dart'
    as _i9;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/greeting_struct.dart'
    as _i7;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/integer_enum.dart'
    as _i6;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/missing_key_structure.dart'
    as _i8;
import 'package:smithy/smithy.dart' as _i1;

part 'malformed_unique_items_input.g.dart';

abstract class MalformedUniqueItemsInput
    with
        _i1.HttpInput<MalformedUniqueItemsInput>,
        _i2.AWSEquatable<MalformedUniqueItemsInput>
    implements
        Built<MalformedUniqueItemsInput, MalformedUniqueItemsInputBuilder> {
  factory MalformedUniqueItemsInput({
    Set<_i3.Uint8List>? blobList,
    Set<bool>? booleanList,
    Set<String>? stringList,
    Set<int>? byteList,
    Set<int>? shortList,
    Set<int>? integerList,
    Set<_i4.Int64>? longList,
    Set<DateTime>? timestampList,
    Set<DateTime>? dateTimeList,
    Set<DateTime>? httpDateList,
    Set<_i5.FooEnum>? enumList,
    Set<_i6.IntegerEnum>? intEnumList,
    Set<List<String>>? listList,
    Set<_i7.GreetingStruct>? structureList,
    Set<_i8.MissingKeyStructure>? structureListWithNoKey,
    Set<_i9.FooUnion>? unionList,
  }) {
    return _$MalformedUniqueItemsInput._(
      blobList: blobList == null ? null : _i10.BuiltSet(blobList),
      booleanList: booleanList == null ? null : _i10.BuiltSet(booleanList),
      stringList: stringList == null ? null : _i10.BuiltSet(stringList),
      byteList: byteList == null ? null : _i10.BuiltSet(byteList),
      shortList: shortList == null ? null : _i10.BuiltSet(shortList),
      integerList: integerList == null ? null : _i10.BuiltSet(integerList),
      longList: longList == null ? null : _i10.BuiltSet(longList),
      timestampList:
          timestampList == null ? null : _i10.BuiltSet(timestampList),
      dateTimeList: dateTimeList == null ? null : _i10.BuiltSet(dateTimeList),
      httpDateList: httpDateList == null ? null : _i10.BuiltSet(httpDateList),
      enumList: enumList == null ? null : _i10.BuiltSet(enumList),
      intEnumList: intEnumList == null ? null : _i10.BuiltSet(intEnumList),
      listList: listList == null
          ? null
          : _i10.BuiltSet(listList.map((el) => _i10.BuiltList(el))),
      structureList:
          structureList == null ? null : _i10.BuiltSet(structureList),
      structureListWithNoKey: structureListWithNoKey == null
          ? null
          : _i10.BuiltSet(structureListWithNoKey),
      unionList: unionList == null ? null : _i10.BuiltSet(unionList),
    );
  }

  factory MalformedUniqueItemsInput.build(
          [void Function(MalformedUniqueItemsInputBuilder) updates]) =
      _$MalformedUniqueItemsInput;

  const MalformedUniqueItemsInput._();

  factory MalformedUniqueItemsInput.fromRequest(
    MalformedUniqueItemsInput payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<MalformedUniqueItemsInput>>
      serializers = [MalformedUniqueItemsInputRestJson1Serializer()];

  _i10.BuiltSet<_i3.Uint8List>? get blobList;
  _i10.BuiltSet<bool>? get booleanList;
  _i10.BuiltSet<String>? get stringList;
  _i10.BuiltSet<int>? get byteList;
  _i10.BuiltSet<int>? get shortList;
  _i10.BuiltSet<int>? get integerList;
  _i10.BuiltSet<_i4.Int64>? get longList;
  _i10.BuiltSet<DateTime>? get timestampList;
  _i10.BuiltSet<DateTime>? get dateTimeList;
  _i10.BuiltSet<DateTime>? get httpDateList;
  _i10.BuiltSet<_i5.FooEnum>? get enumList;
  _i10.BuiltSet<_i6.IntegerEnum>? get intEnumList;
  _i10.BuiltSet<_i10.BuiltList<String>>? get listList;
  _i10.BuiltSet<_i7.GreetingStruct>? get structureList;
  _i10.BuiltSet<_i8.MissingKeyStructure>? get structureListWithNoKey;
  _i10.BuiltSet<_i9.FooUnion>? get unionList;
  @override
  MalformedUniqueItemsInput getPayload() => this;
  @override
  List<Object?> get props => [
        blobList,
        booleanList,
        stringList,
        byteList,
        shortList,
        integerList,
        longList,
        timestampList,
        dateTimeList,
        httpDateList,
        enumList,
        intEnumList,
        listList,
        structureList,
        structureListWithNoKey,
        unionList,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedUniqueItemsInput')
      ..add(
        'blobList',
        blobList,
      )
      ..add(
        'booleanList',
        booleanList,
      )
      ..add(
        'stringList',
        stringList,
      )
      ..add(
        'byteList',
        byteList,
      )
      ..add(
        'shortList',
        shortList,
      )
      ..add(
        'integerList',
        integerList,
      )
      ..add(
        'longList',
        longList,
      )
      ..add(
        'timestampList',
        timestampList,
      )
      ..add(
        'dateTimeList',
        dateTimeList,
      )
      ..add(
        'httpDateList',
        httpDateList,
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
        'listList',
        listList,
      )
      ..add(
        'structureList',
        structureList,
      )
      ..add(
        'structureListWithNoKey',
        structureListWithNoKey,
      )
      ..add(
        'unionList',
        unionList,
      );
    return helper.toString();
  }
}

class MalformedUniqueItemsInputRestJson1Serializer
    extends _i1.StructuredSmithySerializer<MalformedUniqueItemsInput> {
  const MalformedUniqueItemsInputRestJson1Serializer()
      : super('MalformedUniqueItemsInput');

  @override
  Iterable<Type> get types => const [
        MalformedUniqueItemsInput,
        _$MalformedUniqueItemsInput,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MalformedUniqueItemsInput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MalformedUniqueItemsInputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'blobList':
          result.blobList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(_i3.Uint8List)],
            ),
          ) as _i10.BuiltSet<_i3.Uint8List>));
        case 'booleanList':
          result.booleanList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(bool)],
            ),
          ) as _i10.BuiltSet<bool>));
        case 'byteList':
          result.byteList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(int)],
            ),
          ) as _i10.BuiltSet<int>));
        case 'dateTimeList':
          result.dateTimeList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(DateTime)],
            ),
          ) as _i10.BuiltSet<DateTime>));
        case 'enumList':
          result.enumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(_i5.FooEnum)],
            ),
          ) as _i10.BuiltSet<_i5.FooEnum>));
        case 'httpDateList':
          result.httpDateList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(DateTime)],
            ),
          ) as _i10.BuiltSet<DateTime>));
        case 'intEnumList':
          result.intEnumList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(_i6.IntegerEnum)],
            ),
          ) as _i10.BuiltSet<_i6.IntegerEnum>));
        case 'integerList':
          result.integerList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(int)],
            ),
          ) as _i10.BuiltSet<int>));
        case 'listList':
          result.listList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [
                FullType(
                  _i10.BuiltList,
                  [FullType(String)],
                )
              ],
            ),
          ) as _i10.BuiltSet<_i10.BuiltList<String>>));
        case 'longList':
          result.longList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(_i4.Int64)],
            ),
          ) as _i10.BuiltSet<_i4.Int64>));
        case 'shortList':
          result.shortList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(int)],
            ),
          ) as _i10.BuiltSet<int>));
        case 'stringList':
          result.stringList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(String)],
            ),
          ) as _i10.BuiltSet<String>));
        case 'structureList':
          result.structureList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(_i7.GreetingStruct)],
            ),
          ) as _i10.BuiltSet<_i7.GreetingStruct>));
        case 'structureListWithNoKey':
          result.structureListWithNoKey.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(_i8.MissingKeyStructure)],
            ),
          ) as _i10.BuiltSet<_i8.MissingKeyStructure>));
        case 'timestampList':
          result.timestampList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(DateTime)],
            ),
          ) as _i10.BuiltSet<DateTime>));
        case 'unionList':
          result.unionList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i10.BuiltSet,
              [FullType(_i9.FooUnion)],
            ),
          ) as _i10.BuiltSet<_i9.FooUnion>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    MalformedUniqueItemsInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final MalformedUniqueItemsInput(
      :blobList,
      :booleanList,
      :byteList,
      :dateTimeList,
      :enumList,
      :httpDateList,
      :intEnumList,
      :integerList,
      :listList,
      :longList,
      :shortList,
      :stringList,
      :structureList,
      :structureListWithNoKey,
      :timestampList,
      :unionList
    ) = object;
    if (blobList != null) {
      result$
        ..add('blobList')
        ..add(serializers.serialize(
          blobList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(_i3.Uint8List)],
          ),
        ));
    }
    if (booleanList != null) {
      result$
        ..add('booleanList')
        ..add(serializers.serialize(
          booleanList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(bool)],
          ),
        ));
    }
    if (byteList != null) {
      result$
        ..add('byteList')
        ..add(serializers.serialize(
          byteList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(int)],
          ),
        ));
    }
    if (dateTimeList != null) {
      result$
        ..add('dateTimeList')
        ..add(serializers.serialize(
          dateTimeList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(DateTime)],
          ),
        ));
    }
    if (enumList != null) {
      result$
        ..add('enumList')
        ..add(serializers.serialize(
          enumList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(_i5.FooEnum)],
          ),
        ));
    }
    if (httpDateList != null) {
      result$
        ..add('httpDateList')
        ..add(serializers.serialize(
          httpDateList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(DateTime)],
          ),
        ));
    }
    if (intEnumList != null) {
      result$
        ..add('intEnumList')
        ..add(serializers.serialize(
          intEnumList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(_i6.IntegerEnum)],
          ),
        ));
    }
    if (integerList != null) {
      result$
        ..add('integerList')
        ..add(serializers.serialize(
          integerList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(int)],
          ),
        ));
    }
    if (listList != null) {
      result$
        ..add('listList')
        ..add(serializers.serialize(
          listList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [
              FullType(
                _i10.BuiltList,
                [FullType(String)],
              )
            ],
          ),
        ));
    }
    if (longList != null) {
      result$
        ..add('longList')
        ..add(serializers.serialize(
          longList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(_i4.Int64)],
          ),
        ));
    }
    if (shortList != null) {
      result$
        ..add('shortList')
        ..add(serializers.serialize(
          shortList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(int)],
          ),
        ));
    }
    if (stringList != null) {
      result$
        ..add('stringList')
        ..add(serializers.serialize(
          stringList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(String)],
          ),
        ));
    }
    if (structureList != null) {
      result$
        ..add('structureList')
        ..add(serializers.serialize(
          structureList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(_i7.GreetingStruct)],
          ),
        ));
    }
    if (structureListWithNoKey != null) {
      result$
        ..add('structureListWithNoKey')
        ..add(serializers.serialize(
          structureListWithNoKey,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(_i8.MissingKeyStructure)],
          ),
        ));
    }
    if (timestampList != null) {
      result$
        ..add('timestampList')
        ..add(serializers.serialize(
          timestampList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(DateTime)],
          ),
        ));
    }
    if (unionList != null) {
      result$
        ..add('unionList')
        ..add(serializers.serialize(
          unionList,
          specifiedType: const FullType(
            _i10.BuiltSet,
            [FullType(_i9.FooUnion)],
          ),
        ));
    }
    return result$;
  }
}
