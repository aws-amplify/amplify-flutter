// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library aws_json1_1_v2.json_protocol.model.kitchen_sink; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:typed_data' as _i3;

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:aws_json1_1_v2/src/json_protocol/model/empty_struct.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/simple_struct.dart';
import 'package:aws_json1_1_v2/src/json_protocol/model/struct_with_json_name.dart';
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart' as _i5;
import 'package:built_value/serializer.dart';
import 'package:fixnum/fixnum.dart' as _i4;
import 'package:smithy/smithy.dart' as _i1;

part 'kitchen_sink.g.dart';

abstract class KitchenSink
    with _i1.HttpInput<KitchenSink>, _i2.AWSEquatable<KitchenSink>
    implements Built<KitchenSink, KitchenSinkBuilder> {
  factory KitchenSink({
    _i3.Uint8List? blob,
    bool? boolean,
    double? double_,
    EmptyStruct? emptyStruct,
    double? float,
    DateTime? httpdateTimestamp,
    int? integer,
    DateTime? iso8601Timestamp,
    Object? jsonValue,
    List<List<String>>? listOfLists,
    List<Map<String, String>>? listOfMapsOfStrings,
    List<String>? listOfStrings,
    List<SimpleStruct>? listOfStructs,
    _i4.Int64? long,
    Map<String, List<String>>? mapOfListsOfStrings,
    Map<String, Map<String, String>>? mapOfMaps,
    Map<String, String>? mapOfStrings,
    Map<String, SimpleStruct>? mapOfStructs,
    List<KitchenSink>? recursiveList,
    Map<String, KitchenSink>? recursiveMap,
    KitchenSink? recursiveStruct,
    SimpleStruct? simpleStruct,
    String? string,
    StructWithJsonName? structWithJsonName,
    DateTime? timestamp,
    DateTime? unixTimestamp,
  }) {
    return _$KitchenSink._(
      blob: blob,
      boolean: boolean,
      double_: double_,
      emptyStruct: emptyStruct,
      float: float,
      httpdateTimestamp: httpdateTimestamp,
      integer: integer,
      iso8601Timestamp: iso8601Timestamp,
      jsonValue: jsonValue == null ? null : _i5.JsonObject(jsonValue),
      listOfLists: listOfLists == null
          ? null
          : _i6.BuiltList(listOfLists.map((el) => _i6.BuiltList(el))),
      listOfMapsOfStrings: listOfMapsOfStrings == null
          ? null
          : _i6.BuiltList(listOfMapsOfStrings.map((el) => _i6.BuiltMap(el))),
      listOfStrings:
          listOfStrings == null ? null : _i6.BuiltList(listOfStrings),
      listOfStructs:
          listOfStructs == null ? null : _i6.BuiltList(listOfStructs),
      long: long,
      mapOfListsOfStrings: mapOfListsOfStrings == null
          ? null
          : _i6.BuiltListMultimap(mapOfListsOfStrings),
      mapOfMaps: mapOfMaps == null
          ? null
          : _i6.BuiltMap(mapOfMaps.map((
              key,
              value,
            ) =>
              MapEntry(
                key,
                _i6.BuiltMap(value),
              ))),
      mapOfStrings: mapOfStrings == null ? null : _i6.BuiltMap(mapOfStrings),
      mapOfStructs: mapOfStructs == null ? null : _i6.BuiltMap(mapOfStructs),
      recursiveList:
          recursiveList == null ? null : _i6.BuiltList(recursiveList),
      recursiveMap: recursiveMap == null ? null : _i6.BuiltMap(recursiveMap),
      recursiveStruct: recursiveStruct,
      simpleStruct: simpleStruct,
      string: string,
      structWithJsonName: structWithJsonName,
      timestamp: timestamp,
      unixTimestamp: unixTimestamp,
    );
  }

  factory KitchenSink.build([void Function(KitchenSinkBuilder) updates]) =
      _$KitchenSink;

  const KitchenSink._();

  factory KitchenSink.fromRequest(
    KitchenSink payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  /// Constructs a [KitchenSink] from a [payload] and [response].
  factory KitchenSink.fromResponse(
    KitchenSink payload,
    _i2.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i1.SmithySerializer<KitchenSink>> serializers = [
    KitchenSinkAwsJson11Serializer()
  ];

  _i3.Uint8List? get blob;
  bool? get boolean;
  double? get double_;
  EmptyStruct? get emptyStruct;
  double? get float;
  DateTime? get httpdateTimestamp;
  int? get integer;
  DateTime? get iso8601Timestamp;
  _i5.JsonObject? get jsonValue;
  _i6.BuiltList<_i6.BuiltList<String>>? get listOfLists;
  _i6.BuiltList<_i6.BuiltMap<String, String>>? get listOfMapsOfStrings;
  _i6.BuiltList<String>? get listOfStrings;
  _i6.BuiltList<SimpleStruct>? get listOfStructs;
  _i4.Int64? get long;
  _i6.BuiltListMultimap<String, String>? get mapOfListsOfStrings;
  _i6.BuiltMap<String, _i6.BuiltMap<String, String>>? get mapOfMaps;
  _i6.BuiltMap<String, String>? get mapOfStrings;
  _i6.BuiltMap<String, SimpleStruct>? get mapOfStructs;
  _i6.BuiltList<KitchenSink>? get recursiveList;
  _i6.BuiltMap<String, KitchenSink>? get recursiveMap;
  KitchenSink? get recursiveStruct;
  SimpleStruct? get simpleStruct;
  String? get string;
  StructWithJsonName? get structWithJsonName;
  DateTime? get timestamp;
  DateTime? get unixTimestamp;
  @override
  KitchenSink getPayload() => this;

  @override
  List<Object?> get props => [
        blob,
        boolean,
        double_,
        emptyStruct,
        float,
        httpdateTimestamp,
        integer,
        iso8601Timestamp,
        jsonValue,
        listOfLists,
        listOfMapsOfStrings,
        listOfStrings,
        listOfStructs,
        long,
        mapOfListsOfStrings,
        mapOfMaps,
        mapOfStrings,
        mapOfStructs,
        recursiveList,
        recursiveMap,
        recursiveStruct,
        simpleStruct,
        string,
        structWithJsonName,
        timestamp,
        unixTimestamp,
      ];

  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('KitchenSink')
      ..add(
        'blob',
        blob,
      )
      ..add(
        'boolean',
        boolean,
      )
      ..add(
        'double_',
        double_,
      )
      ..add(
        'emptyStruct',
        emptyStruct,
      )
      ..add(
        'float',
        float,
      )
      ..add(
        'httpdateTimestamp',
        httpdateTimestamp,
      )
      ..add(
        'integer',
        integer,
      )
      ..add(
        'iso8601Timestamp',
        iso8601Timestamp,
      )
      ..add(
        'jsonValue',
        jsonValue,
      )
      ..add(
        'listOfLists',
        listOfLists,
      )
      ..add(
        'listOfMapsOfStrings',
        listOfMapsOfStrings,
      )
      ..add(
        'listOfStrings',
        listOfStrings,
      )
      ..add(
        'listOfStructs',
        listOfStructs,
      )
      ..add(
        'long',
        long,
      )
      ..add(
        'mapOfListsOfStrings',
        mapOfListsOfStrings,
      )
      ..add(
        'mapOfMaps',
        mapOfMaps,
      )
      ..add(
        'mapOfStrings',
        mapOfStrings,
      )
      ..add(
        'mapOfStructs',
        mapOfStructs,
      )
      ..add(
        'recursiveList',
        recursiveList,
      )
      ..add(
        'recursiveMap',
        recursiveMap,
      )
      ..add(
        'recursiveStruct',
        recursiveStruct,
      )
      ..add(
        'simpleStruct',
        simpleStruct,
      )
      ..add(
        'string',
        string,
      )
      ..add(
        'structWithJsonName',
        structWithJsonName,
      )
      ..add(
        'timestamp',
        timestamp,
      )
      ..add(
        'unixTimestamp',
        unixTimestamp,
      );
    return helper.toString();
  }
}

class KitchenSinkAwsJson11Serializer
    extends _i1.StructuredSmithySerializer<KitchenSink> {
  const KitchenSinkAwsJson11Serializer() : super('KitchenSink');

  @override
  Iterable<Type> get types => const [
        KitchenSink,
        _$KitchenSink,
      ];

  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];

  @override
  KitchenSink deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KitchenSinkBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Blob':
          result.blob = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.Uint8List),
          ) as _i3.Uint8List);
        case 'Boolean':
          result.boolean = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Double':
          result.double_ = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'EmptyStruct':
          result.emptyStruct.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(EmptyStruct),
          ) as EmptyStruct));
        case 'Float':
          result.float = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'HttpdateTimestamp':
          result.httpdateTimestamp =
              _i1.TimestampSerializer.httpDate.deserialize(
            serializers,
            value,
          );
        case 'Integer':
          result.integer = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Iso8601Timestamp':
          result.iso8601Timestamp =
              _i1.TimestampSerializer.dateTime.deserialize(
            serializers,
            value,
          );
        case 'JsonValue':
          result.jsonValue = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i5.JsonObject),
          ) as _i5.JsonObject);
        case 'ListOfLists':
          result.listOfLists.replace((serializers.deserialize(
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
        case 'ListOfMapsOfStrings':
          result.listOfMapsOfStrings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [
                FullType(
                  _i6.BuiltMap,
                  [
                    FullType(String),
                    FullType(String),
                  ],
                )
              ],
            ),
          ) as _i6.BuiltList<_i6.BuiltMap<String, String>>));
        case 'ListOfStrings':
          result.listOfStrings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(String)],
            ),
          ) as _i6.BuiltList<String>));
        case 'ListOfStructs':
          result.listOfStructs.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(SimpleStruct)],
            ),
          ) as _i6.BuiltList<SimpleStruct>));
        case 'Long':
          result.long = (serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.Int64),
          ) as _i4.Int64);
        case 'MapOfListsOfStrings':
          result.mapOfListsOfStrings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltListMultimap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i6.BuiltListMultimap<String, String>));
        case 'MapOfMaps':
          result.mapOfMaps.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(
                  _i6.BuiltMap,
                  [
                    FullType(String),
                    FullType(String),
                  ],
                ),
              ],
            ),
          ) as _i6.BuiltMap<String, _i6.BuiltMap<String, String>>));
        case 'MapOfStrings':
          result.mapOfStrings.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(String),
              ],
            ),
          ) as _i6.BuiltMap<String, String>));
        case 'MapOfStructs':
          result.mapOfStructs.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(SimpleStruct),
              ],
            ),
          ) as _i6.BuiltMap<String, SimpleStruct>));
        case 'RecursiveList':
          result.recursiveList.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltList,
              [FullType(KitchenSink)],
            ),
          ) as _i6.BuiltList<KitchenSink>));
        case 'RecursiveMap':
          result.recursiveMap.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(
              _i6.BuiltMap,
              [
                FullType(String),
                FullType(KitchenSink),
              ],
            ),
          ) as _i6.BuiltMap<String, KitchenSink>));
        case 'RecursiveStruct':
          result.recursiveStruct.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(KitchenSink),
          ) as KitchenSink));
        case 'SimpleStruct':
          result.simpleStruct.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SimpleStruct),
          ) as SimpleStruct));
        case 'String':
          result.string = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StructWithJsonName':
          result.structWithJsonName.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StructWithJsonName),
          ) as StructWithJsonName));
        case 'Timestamp':
          result.timestamp = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'UnixTimestamp':
          result.unixTimestamp =
              _i1.TimestampSerializer.epochSeconds.deserialize(
            serializers,
            value,
          );
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    KitchenSink object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final KitchenSink(
      :blob,
      :boolean,
      :double_,
      :emptyStruct,
      :float,
      :httpdateTimestamp,
      :integer,
      :iso8601Timestamp,
      :jsonValue,
      :listOfLists,
      :listOfMapsOfStrings,
      :listOfStrings,
      :listOfStructs,
      :long,
      :mapOfListsOfStrings,
      :mapOfMaps,
      :mapOfStrings,
      :mapOfStructs,
      :recursiveList,
      :recursiveMap,
      :recursiveStruct,
      :simpleStruct,
      :string,
      :structWithJsonName,
      :timestamp,
      :unixTimestamp
    ) = object;
    if (blob != null) {
      result$
        ..add('Blob')
        ..add(serializers.serialize(
          blob,
          specifiedType: const FullType(_i3.Uint8List),
        ));
    }
    if (boolean != null) {
      result$
        ..add('Boolean')
        ..add(serializers.serialize(
          boolean,
          specifiedType: const FullType(bool),
        ));
    }
    if (double_ != null) {
      result$
        ..add('Double')
        ..add(serializers.serialize(
          double_,
          specifiedType: const FullType(double),
        ));
    }
    if (emptyStruct != null) {
      result$
        ..add('EmptyStruct')
        ..add(serializers.serialize(
          emptyStruct,
          specifiedType: const FullType(EmptyStruct),
        ));
    }
    if (float != null) {
      result$
        ..add('Float')
        ..add(serializers.serialize(
          float,
          specifiedType: const FullType(double),
        ));
    }
    if (httpdateTimestamp != null) {
      result$
        ..add('HttpdateTimestamp')
        ..add(_i1.TimestampSerializer.httpDate.serialize(
          serializers,
          httpdateTimestamp,
        ));
    }
    if (integer != null) {
      result$
        ..add('Integer')
        ..add(serializers.serialize(
          integer,
          specifiedType: const FullType(int),
        ));
    }
    if (iso8601Timestamp != null) {
      result$
        ..add('Iso8601Timestamp')
        ..add(_i1.TimestampSerializer.dateTime.serialize(
          serializers,
          iso8601Timestamp,
        ));
    }
    if (jsonValue != null) {
      result$
        ..add('JsonValue')
        ..add(serializers.serialize(
          jsonValue,
          specifiedType: const FullType(_i5.JsonObject),
        ));
    }
    if (listOfLists != null) {
      result$
        ..add('ListOfLists')
        ..add(serializers.serialize(
          listOfLists,
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
    if (listOfMapsOfStrings != null) {
      result$
        ..add('ListOfMapsOfStrings')
        ..add(serializers.serialize(
          listOfMapsOfStrings,
          specifiedType: const FullType(
            _i6.BuiltList,
            [
              FullType(
                _i6.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              )
            ],
          ),
        ));
    }
    if (listOfStrings != null) {
      result$
        ..add('ListOfStrings')
        ..add(serializers.serialize(
          listOfStrings,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (listOfStructs != null) {
      result$
        ..add('ListOfStructs')
        ..add(serializers.serialize(
          listOfStructs,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(SimpleStruct)],
          ),
        ));
    }
    if (long != null) {
      result$
        ..add('Long')
        ..add(serializers.serialize(
          long,
          specifiedType: const FullType(_i4.Int64),
        ));
    }
    if (mapOfListsOfStrings != null) {
      result$
        ..add('MapOfListsOfStrings')
        ..add(serializers.serialize(
          mapOfListsOfStrings,
          specifiedType: const FullType(
            _i6.BuiltListMultimap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (mapOfMaps != null) {
      result$
        ..add('MapOfMaps')
        ..add(serializers.serialize(
          mapOfMaps,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(
                _i6.BuiltMap,
                [
                  FullType(String),
                  FullType(String),
                ],
              ),
            ],
          ),
        ));
    }
    if (mapOfStrings != null) {
      result$
        ..add('MapOfStrings')
        ..add(serializers.serialize(
          mapOfStrings,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(String),
            ],
          ),
        ));
    }
    if (mapOfStructs != null) {
      result$
        ..add('MapOfStructs')
        ..add(serializers.serialize(
          mapOfStructs,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(SimpleStruct),
            ],
          ),
        ));
    }
    if (recursiveList != null) {
      result$
        ..add('RecursiveList')
        ..add(serializers.serialize(
          recursiveList,
          specifiedType: const FullType(
            _i6.BuiltList,
            [FullType(KitchenSink)],
          ),
        ));
    }
    if (recursiveMap != null) {
      result$
        ..add('RecursiveMap')
        ..add(serializers.serialize(
          recursiveMap,
          specifiedType: const FullType(
            _i6.BuiltMap,
            [
              FullType(String),
              FullType(KitchenSink),
            ],
          ),
        ));
    }
    if (recursiveStruct != null) {
      result$
        ..add('RecursiveStruct')
        ..add(serializers.serialize(
          recursiveStruct,
          specifiedType: const FullType(KitchenSink),
        ));
    }
    if (simpleStruct != null) {
      result$
        ..add('SimpleStruct')
        ..add(serializers.serialize(
          simpleStruct,
          specifiedType: const FullType(SimpleStruct),
        ));
    }
    if (string != null) {
      result$
        ..add('String')
        ..add(serializers.serialize(
          string,
          specifiedType: const FullType(String),
        ));
    }
    if (structWithJsonName != null) {
      result$
        ..add('StructWithJsonName')
        ..add(serializers.serialize(
          structWithJsonName,
          specifiedType: const FullType(StructWithJsonName),
        ));
    }
    if (timestamp != null) {
      result$
        ..add('Timestamp')
        ..add(serializers.serialize(
          timestamp,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (unixTimestamp != null) {
      result$
        ..add('UnixTimestamp')
        ..add(_i1.TimestampSerializer.epochSeconds.serialize(
          serializers,
          unixTimestamp,
        ));
    }
    return result$;
  }
}
