// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v1.json_protocol.model.kitchen_sink;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KitchenSink extends KitchenSink {
  @override
  final _i3.Uint8List? blob;
  @override
  final bool? boolean;
  @override
  final double? double_;
  @override
  final _i4.EmptyStruct? emptyStruct;
  @override
  final double? float;
  @override
  final DateTime? httpdateTimestamp;
  @override
  final int? integer;
  @override
  final DateTime? iso8601Timestamp;
  @override
  final _i8.JsonObject? jsonValue;
  @override
  final _i9.BuiltList<_i9.BuiltList<String>>? listOfLists;
  @override
  final _i9.BuiltList<_i9.BuiltMap<String, String>>? listOfMapsOfStrings;
  @override
  final _i9.BuiltList<String>? listOfStrings;
  @override
  final _i9.BuiltList<_i5.SimpleStruct>? listOfStructs;
  @override
  final _i6.Int64? long;
  @override
  final _i9.BuiltListMultimap<String, String>? mapOfListsOfStrings;
  @override
  final _i9.BuiltMap<String, _i9.BuiltMap<String, String>>? mapOfMaps;
  @override
  final _i9.BuiltMap<String, String>? mapOfStrings;
  @override
  final _i9.BuiltMap<String, _i5.SimpleStruct>? mapOfStructs;
  @override
  final _i9.BuiltList<KitchenSink>? recursiveList;
  @override
  final _i9.BuiltMap<String, KitchenSink>? recursiveMap;
  @override
  final KitchenSink? recursiveStruct;
  @override
  final _i5.SimpleStruct? simpleStruct;
  @override
  final String? string;
  @override
  final _i7.StructWithJsonName? structWithJsonName;
  @override
  final DateTime? timestamp;
  @override
  final DateTime? unixTimestamp;

  factory _$KitchenSink([void Function(KitchenSinkBuilder)? updates]) =>
      (new KitchenSinkBuilder()..update(updates))._build();

  _$KitchenSink._(
      {this.blob,
      this.boolean,
      this.double_,
      this.emptyStruct,
      this.float,
      this.httpdateTimestamp,
      this.integer,
      this.iso8601Timestamp,
      this.jsonValue,
      this.listOfLists,
      this.listOfMapsOfStrings,
      this.listOfStrings,
      this.listOfStructs,
      this.long,
      this.mapOfListsOfStrings,
      this.mapOfMaps,
      this.mapOfStrings,
      this.mapOfStructs,
      this.recursiveList,
      this.recursiveMap,
      this.recursiveStruct,
      this.simpleStruct,
      this.string,
      this.structWithJsonName,
      this.timestamp,
      this.unixTimestamp})
      : super._();

  @override
  KitchenSink rebuild(void Function(KitchenSinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KitchenSinkBuilder toBuilder() => new KitchenSinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KitchenSink &&
        blob == other.blob &&
        boolean == other.boolean &&
        double_ == other.double_ &&
        emptyStruct == other.emptyStruct &&
        float == other.float &&
        httpdateTimestamp == other.httpdateTimestamp &&
        integer == other.integer &&
        iso8601Timestamp == other.iso8601Timestamp &&
        jsonValue == other.jsonValue &&
        listOfLists == other.listOfLists &&
        listOfMapsOfStrings == other.listOfMapsOfStrings &&
        listOfStrings == other.listOfStrings &&
        listOfStructs == other.listOfStructs &&
        long == other.long &&
        mapOfListsOfStrings == other.mapOfListsOfStrings &&
        mapOfMaps == other.mapOfMaps &&
        mapOfStrings == other.mapOfStrings &&
        mapOfStructs == other.mapOfStructs &&
        recursiveList == other.recursiveList &&
        recursiveMap == other.recursiveMap &&
        recursiveStruct == other.recursiveStruct &&
        simpleStruct == other.simpleStruct &&
        string == other.string &&
        structWithJsonName == other.structWithJsonName &&
        timestamp == other.timestamp &&
        unixTimestamp == other.unixTimestamp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blob.hashCode);
    _$hash = $jc(_$hash, boolean.hashCode);
    _$hash = $jc(_$hash, double_.hashCode);
    _$hash = $jc(_$hash, emptyStruct.hashCode);
    _$hash = $jc(_$hash, float.hashCode);
    _$hash = $jc(_$hash, httpdateTimestamp.hashCode);
    _$hash = $jc(_$hash, integer.hashCode);
    _$hash = $jc(_$hash, iso8601Timestamp.hashCode);
    _$hash = $jc(_$hash, jsonValue.hashCode);
    _$hash = $jc(_$hash, listOfLists.hashCode);
    _$hash = $jc(_$hash, listOfMapsOfStrings.hashCode);
    _$hash = $jc(_$hash, listOfStrings.hashCode);
    _$hash = $jc(_$hash, listOfStructs.hashCode);
    _$hash = $jc(_$hash, long.hashCode);
    _$hash = $jc(_$hash, mapOfListsOfStrings.hashCode);
    _$hash = $jc(_$hash, mapOfMaps.hashCode);
    _$hash = $jc(_$hash, mapOfStrings.hashCode);
    _$hash = $jc(_$hash, mapOfStructs.hashCode);
    _$hash = $jc(_$hash, recursiveList.hashCode);
    _$hash = $jc(_$hash, recursiveMap.hashCode);
    _$hash = $jc(_$hash, recursiveStruct.hashCode);
    _$hash = $jc(_$hash, simpleStruct.hashCode);
    _$hash = $jc(_$hash, string.hashCode);
    _$hash = $jc(_$hash, structWithJsonName.hashCode);
    _$hash = $jc(_$hash, timestamp.hashCode);
    _$hash = $jc(_$hash, unixTimestamp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class KitchenSinkBuilder implements Builder<KitchenSink, KitchenSinkBuilder> {
  _$KitchenSink? _$v;

  _i3.Uint8List? _blob;
  _i3.Uint8List? get blob => _$this._blob;
  set blob(_i3.Uint8List? blob) => _$this._blob = blob;

  bool? _boolean;
  bool? get boolean => _$this._boolean;
  set boolean(bool? boolean) => _$this._boolean = boolean;

  double? _double_;
  double? get double_ => _$this._double_;
  set double_(double? double_) => _$this._double_ = double_;

  _i4.EmptyStructBuilder? _emptyStruct;
  _i4.EmptyStructBuilder get emptyStruct =>
      _$this._emptyStruct ??= new _i4.EmptyStructBuilder();
  set emptyStruct(_i4.EmptyStructBuilder? emptyStruct) =>
      _$this._emptyStruct = emptyStruct;

  double? _float;
  double? get float => _$this._float;
  set float(double? float) => _$this._float = float;

  DateTime? _httpdateTimestamp;
  DateTime? get httpdateTimestamp => _$this._httpdateTimestamp;
  set httpdateTimestamp(DateTime? httpdateTimestamp) =>
      _$this._httpdateTimestamp = httpdateTimestamp;

  int? _integer;
  int? get integer => _$this._integer;
  set integer(int? integer) => _$this._integer = integer;

  DateTime? _iso8601Timestamp;
  DateTime? get iso8601Timestamp => _$this._iso8601Timestamp;
  set iso8601Timestamp(DateTime? iso8601Timestamp) =>
      _$this._iso8601Timestamp = iso8601Timestamp;

  _i8.JsonObject? _jsonValue;
  _i8.JsonObject? get jsonValue => _$this._jsonValue;
  set jsonValue(_i8.JsonObject? jsonValue) => _$this._jsonValue = jsonValue;

  _i9.ListBuilder<_i9.BuiltList<String>>? _listOfLists;
  _i9.ListBuilder<_i9.BuiltList<String>> get listOfLists =>
      _$this._listOfLists ??= new _i9.ListBuilder<_i9.BuiltList<String>>();
  set listOfLists(_i9.ListBuilder<_i9.BuiltList<String>>? listOfLists) =>
      _$this._listOfLists = listOfLists;

  _i9.ListBuilder<_i9.BuiltMap<String, String>>? _listOfMapsOfStrings;
  _i9.ListBuilder<_i9.BuiltMap<String, String>> get listOfMapsOfStrings =>
      _$this._listOfMapsOfStrings ??=
          new _i9.ListBuilder<_i9.BuiltMap<String, String>>();
  set listOfMapsOfStrings(
          _i9.ListBuilder<_i9.BuiltMap<String, String>>? listOfMapsOfStrings) =>
      _$this._listOfMapsOfStrings = listOfMapsOfStrings;

  _i9.ListBuilder<String>? _listOfStrings;
  _i9.ListBuilder<String> get listOfStrings =>
      _$this._listOfStrings ??= new _i9.ListBuilder<String>();
  set listOfStrings(_i9.ListBuilder<String>? listOfStrings) =>
      _$this._listOfStrings = listOfStrings;

  _i9.ListBuilder<_i5.SimpleStruct>? _listOfStructs;
  _i9.ListBuilder<_i5.SimpleStruct> get listOfStructs =>
      _$this._listOfStructs ??= new _i9.ListBuilder<_i5.SimpleStruct>();
  set listOfStructs(_i9.ListBuilder<_i5.SimpleStruct>? listOfStructs) =>
      _$this._listOfStructs = listOfStructs;

  _i6.Int64? _long;
  _i6.Int64? get long => _$this._long;
  set long(_i6.Int64? long) => _$this._long = long;

  _i9.ListMultimapBuilder<String, String>? _mapOfListsOfStrings;
  _i9.ListMultimapBuilder<String, String> get mapOfListsOfStrings =>
      _$this._mapOfListsOfStrings ??=
          new _i9.ListMultimapBuilder<String, String>();
  set mapOfListsOfStrings(
          _i9.ListMultimapBuilder<String, String>? mapOfListsOfStrings) =>
      _$this._mapOfListsOfStrings = mapOfListsOfStrings;

  _i9.MapBuilder<String, _i9.BuiltMap<String, String>>? _mapOfMaps;
  _i9.MapBuilder<String, _i9.BuiltMap<String, String>> get mapOfMaps =>
      _$this._mapOfMaps ??=
          new _i9.MapBuilder<String, _i9.BuiltMap<String, String>>();
  set mapOfMaps(
          _i9.MapBuilder<String, _i9.BuiltMap<String, String>>? mapOfMaps) =>
      _$this._mapOfMaps = mapOfMaps;

  _i9.MapBuilder<String, String>? _mapOfStrings;
  _i9.MapBuilder<String, String> get mapOfStrings =>
      _$this._mapOfStrings ??= new _i9.MapBuilder<String, String>();
  set mapOfStrings(_i9.MapBuilder<String, String>? mapOfStrings) =>
      _$this._mapOfStrings = mapOfStrings;

  _i9.MapBuilder<String, _i5.SimpleStruct>? _mapOfStructs;
  _i9.MapBuilder<String, _i5.SimpleStruct> get mapOfStructs =>
      _$this._mapOfStructs ??= new _i9.MapBuilder<String, _i5.SimpleStruct>();
  set mapOfStructs(_i9.MapBuilder<String, _i5.SimpleStruct>? mapOfStructs) =>
      _$this._mapOfStructs = mapOfStructs;

  _i9.ListBuilder<KitchenSink>? _recursiveList;
  _i9.ListBuilder<KitchenSink> get recursiveList =>
      _$this._recursiveList ??= new _i9.ListBuilder<KitchenSink>();
  set recursiveList(_i9.ListBuilder<KitchenSink>? recursiveList) =>
      _$this._recursiveList = recursiveList;

  _i9.MapBuilder<String, KitchenSink>? _recursiveMap;
  _i9.MapBuilder<String, KitchenSink> get recursiveMap =>
      _$this._recursiveMap ??= new _i9.MapBuilder<String, KitchenSink>();
  set recursiveMap(_i9.MapBuilder<String, KitchenSink>? recursiveMap) =>
      _$this._recursiveMap = recursiveMap;

  KitchenSinkBuilder? _recursiveStruct;
  KitchenSinkBuilder get recursiveStruct =>
      _$this._recursiveStruct ??= new KitchenSinkBuilder();
  set recursiveStruct(KitchenSinkBuilder? recursiveStruct) =>
      _$this._recursiveStruct = recursiveStruct;

  _i5.SimpleStructBuilder? _simpleStruct;
  _i5.SimpleStructBuilder get simpleStruct =>
      _$this._simpleStruct ??= new _i5.SimpleStructBuilder();
  set simpleStruct(_i5.SimpleStructBuilder? simpleStruct) =>
      _$this._simpleStruct = simpleStruct;

  String? _string;
  String? get string => _$this._string;
  set string(String? string) => _$this._string = string;

  _i7.StructWithJsonNameBuilder? _structWithJsonName;
  _i7.StructWithJsonNameBuilder get structWithJsonName =>
      _$this._structWithJsonName ??= new _i7.StructWithJsonNameBuilder();
  set structWithJsonName(_i7.StructWithJsonNameBuilder? structWithJsonName) =>
      _$this._structWithJsonName = structWithJsonName;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  DateTime? _unixTimestamp;
  DateTime? get unixTimestamp => _$this._unixTimestamp;
  set unixTimestamp(DateTime? unixTimestamp) =>
      _$this._unixTimestamp = unixTimestamp;

  KitchenSinkBuilder() {
    KitchenSink._init(this);
  }

  KitchenSinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blob = $v.blob;
      _boolean = $v.boolean;
      _double_ = $v.double_;
      _emptyStruct = $v.emptyStruct?.toBuilder();
      _float = $v.float;
      _httpdateTimestamp = $v.httpdateTimestamp;
      _integer = $v.integer;
      _iso8601Timestamp = $v.iso8601Timestamp;
      _jsonValue = $v.jsonValue;
      _listOfLists = $v.listOfLists?.toBuilder();
      _listOfMapsOfStrings = $v.listOfMapsOfStrings?.toBuilder();
      _listOfStrings = $v.listOfStrings?.toBuilder();
      _listOfStructs = $v.listOfStructs?.toBuilder();
      _long = $v.long;
      _mapOfListsOfStrings = $v.mapOfListsOfStrings?.toBuilder();
      _mapOfMaps = $v.mapOfMaps?.toBuilder();
      _mapOfStrings = $v.mapOfStrings?.toBuilder();
      _mapOfStructs = $v.mapOfStructs?.toBuilder();
      _recursiveList = $v.recursiveList?.toBuilder();
      _recursiveMap = $v.recursiveMap?.toBuilder();
      _recursiveStruct = $v.recursiveStruct?.toBuilder();
      _simpleStruct = $v.simpleStruct?.toBuilder();
      _string = $v.string;
      _structWithJsonName = $v.structWithJsonName?.toBuilder();
      _timestamp = $v.timestamp;
      _unixTimestamp = $v.unixTimestamp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KitchenSink other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KitchenSink;
  }

  @override
  void update(void Function(KitchenSinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KitchenSink build() => _build();

  _$KitchenSink _build() {
    _$KitchenSink _$result;
    try {
      _$result = _$v ??
          new _$KitchenSink._(
              blob: blob,
              boolean: boolean,
              double_: double_,
              emptyStruct: _emptyStruct?.build(),
              float: float,
              httpdateTimestamp: httpdateTimestamp,
              integer: integer,
              iso8601Timestamp: iso8601Timestamp,
              jsonValue: jsonValue,
              listOfLists: _listOfLists?.build(),
              listOfMapsOfStrings: _listOfMapsOfStrings?.build(),
              listOfStrings: _listOfStrings?.build(),
              listOfStructs: _listOfStructs?.build(),
              long: long,
              mapOfListsOfStrings: _mapOfListsOfStrings?.build(),
              mapOfMaps: _mapOfMaps?.build(),
              mapOfStrings: _mapOfStrings?.build(),
              mapOfStructs: _mapOfStructs?.build(),
              recursiveList: _recursiveList?.build(),
              recursiveMap: _recursiveMap?.build(),
              recursiveStruct: _recursiveStruct?.build(),
              simpleStruct: _simpleStruct?.build(),
              string: string,
              structWithJsonName: _structWithJsonName?.build(),
              timestamp: timestamp,
              unixTimestamp: unixTimestamp);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'emptyStruct';
        _emptyStruct?.build();

        _$failedField = 'listOfLists';
        _listOfLists?.build();
        _$failedField = 'listOfMapsOfStrings';
        _listOfMapsOfStrings?.build();
        _$failedField = 'listOfStrings';
        _listOfStrings?.build();
        _$failedField = 'listOfStructs';
        _listOfStructs?.build();

        _$failedField = 'mapOfListsOfStrings';
        _mapOfListsOfStrings?.build();
        _$failedField = 'mapOfMaps';
        _mapOfMaps?.build();
        _$failedField = 'mapOfStrings';
        _mapOfStrings?.build();
        _$failedField = 'mapOfStructs';
        _mapOfStructs?.build();
        _$failedField = 'recursiveList';
        _recursiveList?.build();
        _$failedField = 'recursiveMap';
        _recursiveMap?.build();
        _$failedField = 'recursiveStruct';
        _recursiveStruct?.build();
        _$failedField = 'simpleStruct';
        _simpleStruct?.build();

        _$failedField = 'structWithJsonName';
        _structWithJsonName?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'KitchenSink', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
