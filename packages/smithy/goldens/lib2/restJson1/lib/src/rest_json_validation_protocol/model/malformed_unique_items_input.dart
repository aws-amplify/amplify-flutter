// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.model.malformed_unique_items_input; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i9;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/foo_enum.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/foo_union.dart'
    as _i8;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/greeting_struct.dart'
    as _i7;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/integer_enum.dart'
    as _i6;
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
    Set<_i8.FooUnion>? unionList,
  }) {
    return _$MalformedUniqueItemsInput._(
      blobList: blobList == null ? null : _i9.BuiltSet(blobList),
      booleanList: booleanList == null ? null : _i9.BuiltSet(booleanList),
      stringList: stringList == null ? null : _i9.BuiltSet(stringList),
      byteList: byteList == null ? null : _i9.BuiltSet(byteList),
      shortList: shortList == null ? null : _i9.BuiltSet(shortList),
      integerList: integerList == null ? null : _i9.BuiltSet(integerList),
      longList: longList == null ? null : _i9.BuiltSet(longList),
      timestampList: timestampList == null ? null : _i9.BuiltSet(timestampList),
      dateTimeList: dateTimeList == null ? null : _i9.BuiltSet(dateTimeList),
      httpDateList: httpDateList == null ? null : _i9.BuiltSet(httpDateList),
      enumList: enumList == null ? null : _i9.BuiltSet(enumList),
      intEnumList: intEnumList == null ? null : _i9.BuiltSet(intEnumList),
      listList: listList == null
          ? null
          : _i9.BuiltSet(listList.map((el) => _i9.BuiltList(el))),
      structureList: structureList == null ? null : _i9.BuiltSet(structureList),
      unionList: unionList == null ? null : _i9.BuiltSet(unionList),
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

  static const List<_i1.SmithySerializer> serializers = [
    MalformedUniqueItemsInputRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MalformedUniqueItemsInputBuilder b) {}
  _i9.BuiltSet<_i3.Uint8List>? get blobList;
  _i9.BuiltSet<bool>? get booleanList;
  _i9.BuiltSet<String>? get stringList;
  _i9.BuiltSet<int>? get byteList;
  _i9.BuiltSet<int>? get shortList;
  _i9.BuiltSet<int>? get integerList;
  _i9.BuiltSet<_i4.Int64>? get longList;
  _i9.BuiltSet<DateTime>? get timestampList;
  _i9.BuiltSet<DateTime>? get dateTimeList;
  _i9.BuiltSet<DateTime>? get httpDateList;
  _i9.BuiltSet<_i5.FooEnum>? get enumList;
  _i9.BuiltSet<_i6.IntegerEnum>? get intEnumList;
  _i9.BuiltSet<_i9.BuiltList<String>>? get listList;
  _i9.BuiltSet<_i7.GreetingStruct>? get structureList;
  _i9.BuiltSet<_i8.FooUnion>? get unionList;
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
        unionList,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MalformedUniqueItemsInput');
    helper.add(
      'blobList',
      blobList,
    );
    helper.add(
      'booleanList',
      booleanList,
    );
    helper.add(
      'stringList',
      stringList,
    );
    helper.add(
      'byteList',
      byteList,
    );
    helper.add(
      'shortList',
      shortList,
    );
    helper.add(
      'integerList',
      integerList,
    );
    helper.add(
      'longList',
      longList,
    );
    helper.add(
      'timestampList',
      timestampList,
    );
    helper.add(
      'dateTimeList',
      dateTimeList,
    );
    helper.add(
      'httpDateList',
      httpDateList,
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
      'listList',
      listList,
    );
    helper.add(
      'structureList',
      structureList,
    );
    helper.add(
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
      switch (key) {
        case 'blobList':
          if (value != null) {
            result.blobList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(_i3.Uint8List)],
              ),
            ) as _i9.BuiltSet<_i3.Uint8List>));
          }
          break;
        case 'booleanList':
          if (value != null) {
            result.booleanList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(bool)],
              ),
            ) as _i9.BuiltSet<bool>));
          }
          break;
        case 'byteList':
          if (value != null) {
            result.byteList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(int)],
              ),
            ) as _i9.BuiltSet<int>));
          }
          break;
        case 'dateTimeList':
          if (value != null) {
            result.dateTimeList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(DateTime)],
              ),
            ) as _i9.BuiltSet<DateTime>));
          }
          break;
        case 'enumList':
          if (value != null) {
            result.enumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(_i5.FooEnum)],
              ),
            ) as _i9.BuiltSet<_i5.FooEnum>));
          }
          break;
        case 'httpDateList':
          if (value != null) {
            result.httpDateList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(DateTime)],
              ),
            ) as _i9.BuiltSet<DateTime>));
          }
          break;
        case 'intEnumList':
          if (value != null) {
            result.intEnumList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(_i6.IntegerEnum)],
              ),
            ) as _i9.BuiltSet<_i6.IntegerEnum>));
          }
          break;
        case 'integerList':
          if (value != null) {
            result.integerList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(int)],
              ),
            ) as _i9.BuiltSet<int>));
          }
          break;
        case 'listList':
          if (value != null) {
            result.listList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [
                  FullType(
                    _i9.BuiltList,
                    [FullType(String)],
                  )
                ],
              ),
            ) as _i9.BuiltSet<_i9.BuiltList<String>>));
          }
          break;
        case 'longList':
          if (value != null) {
            result.longList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(_i4.Int64)],
              ),
            ) as _i9.BuiltSet<_i4.Int64>));
          }
          break;
        case 'shortList':
          if (value != null) {
            result.shortList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(int)],
              ),
            ) as _i9.BuiltSet<int>));
          }
          break;
        case 'stringList':
          if (value != null) {
            result.stringList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(String)],
              ),
            ) as _i9.BuiltSet<String>));
          }
          break;
        case 'structureList':
          if (value != null) {
            result.structureList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(_i7.GreetingStruct)],
              ),
            ) as _i9.BuiltSet<_i7.GreetingStruct>));
          }
          break;
        case 'timestampList':
          if (value != null) {
            result.timestampList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(DateTime)],
              ),
            ) as _i9.BuiltSet<DateTime>));
          }
          break;
        case 'unionList':
          if (value != null) {
            result.unionList.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(
                _i9.BuiltSet,
                [FullType(_i8.FooUnion)],
              ),
            ) as _i9.BuiltSet<_i8.FooUnion>));
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
    final payload = (object as MalformedUniqueItemsInput);
    final result = <Object?>[];
    if (payload.blobList != null) {
      result
        ..add('blobList')
        ..add(serializers.serialize(
          payload.blobList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(_i3.Uint8List)],
          ),
        ));
    }
    if (payload.booleanList != null) {
      result
        ..add('booleanList')
        ..add(serializers.serialize(
          payload.booleanList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(bool)],
          ),
        ));
    }
    if (payload.byteList != null) {
      result
        ..add('byteList')
        ..add(serializers.serialize(
          payload.byteList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(int)],
          ),
        ));
    }
    if (payload.dateTimeList != null) {
      result
        ..add('dateTimeList')
        ..add(serializers.serialize(
          payload.dateTimeList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(DateTime)],
          ),
        ));
    }
    if (payload.enumList != null) {
      result
        ..add('enumList')
        ..add(serializers.serialize(
          payload.enumList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(_i5.FooEnum)],
          ),
        ));
    }
    if (payload.httpDateList != null) {
      result
        ..add('httpDateList')
        ..add(serializers.serialize(
          payload.httpDateList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(DateTime)],
          ),
        ));
    }
    if (payload.intEnumList != null) {
      result
        ..add('intEnumList')
        ..add(serializers.serialize(
          payload.intEnumList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(_i6.IntegerEnum)],
          ),
        ));
    }
    if (payload.integerList != null) {
      result
        ..add('integerList')
        ..add(serializers.serialize(
          payload.integerList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(int)],
          ),
        ));
    }
    if (payload.listList != null) {
      result
        ..add('listList')
        ..add(serializers.serialize(
          payload.listList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [
              FullType(
                _i9.BuiltList,
                [FullType(String)],
              )
            ],
          ),
        ));
    }
    if (payload.longList != null) {
      result
        ..add('longList')
        ..add(serializers.serialize(
          payload.longList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(_i4.Int64)],
          ),
        ));
    }
    if (payload.shortList != null) {
      result
        ..add('shortList')
        ..add(serializers.serialize(
          payload.shortList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(int)],
          ),
        ));
    }
    if (payload.stringList != null) {
      result
        ..add('stringList')
        ..add(serializers.serialize(
          payload.stringList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(String)],
          ),
        ));
    }
    if (payload.structureList != null) {
      result
        ..add('structureList')
        ..add(serializers.serialize(
          payload.structureList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(_i7.GreetingStruct)],
          ),
        ));
    }
    if (payload.timestampList != null) {
      result
        ..add('timestampList')
        ..add(serializers.serialize(
          payload.timestampList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(DateTime)],
          ),
        ));
    }
    if (payload.unionList != null) {
      result
        ..add('unionList')
        ..add(serializers.serialize(
          payload.unionList!,
          specifiedType: const FullType(
            _i9.BuiltSet,
            [FullType(_i8.FooUnion)],
          ),
        ));
    }
    return result;
  }
}
