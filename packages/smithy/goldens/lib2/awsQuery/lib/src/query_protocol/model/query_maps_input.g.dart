// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_maps_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryMapsInput extends QueryMapsInput {
  @override
  final _i3.BuiltMap<String, String>? mapArg;
  @override
  final _i3.BuiltMap<String, String>? renamedMapArg;
  @override
  final _i3.BuiltMap<String, GreetingStruct>? complexMapArg;
  @override
  final _i3.BuiltMap<String, String>? mapWithXmlMemberName;
  @override
  final _i3.BuiltMap<String, String>? flattenedMap;
  @override
  final _i3.BuiltMap<String, String>? flattenedMapWithXmlName;
  @override
  final _i3.BuiltListMultimap<String, String>? mapOfLists;
  @override
  final NestedStructWithMap? nestedStructWithMap;

  factory _$QueryMapsInput([void Function(QueryMapsInputBuilder)? updates]) =>
      (new QueryMapsInputBuilder()..update(updates))._build();

  _$QueryMapsInput._(
      {this.mapArg,
      this.renamedMapArg,
      this.complexMapArg,
      this.mapWithXmlMemberName,
      this.flattenedMap,
      this.flattenedMapWithXmlName,
      this.mapOfLists,
      this.nestedStructWithMap})
      : super._();

  @override
  QueryMapsInput rebuild(void Function(QueryMapsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryMapsInputBuilder toBuilder() =>
      new QueryMapsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryMapsInput &&
        mapArg == other.mapArg &&
        renamedMapArg == other.renamedMapArg &&
        complexMapArg == other.complexMapArg &&
        mapWithXmlMemberName == other.mapWithXmlMemberName &&
        flattenedMap == other.flattenedMap &&
        flattenedMapWithXmlName == other.flattenedMapWithXmlName &&
        mapOfLists == other.mapOfLists &&
        nestedStructWithMap == other.nestedStructWithMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mapArg.hashCode);
    _$hash = $jc(_$hash, renamedMapArg.hashCode);
    _$hash = $jc(_$hash, complexMapArg.hashCode);
    _$hash = $jc(_$hash, mapWithXmlMemberName.hashCode);
    _$hash = $jc(_$hash, flattenedMap.hashCode);
    _$hash = $jc(_$hash, flattenedMapWithXmlName.hashCode);
    _$hash = $jc(_$hash, mapOfLists.hashCode);
    _$hash = $jc(_$hash, nestedStructWithMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class QueryMapsInputBuilder
    implements Builder<QueryMapsInput, QueryMapsInputBuilder> {
  _$QueryMapsInput? _$v;

  _i3.MapBuilder<String, String>? _mapArg;
  _i3.MapBuilder<String, String> get mapArg =>
      _$this._mapArg ??= new _i3.MapBuilder<String, String>();
  set mapArg(_i3.MapBuilder<String, String>? mapArg) => _$this._mapArg = mapArg;

  _i3.MapBuilder<String, String>? _renamedMapArg;
  _i3.MapBuilder<String, String> get renamedMapArg =>
      _$this._renamedMapArg ??= new _i3.MapBuilder<String, String>();
  set renamedMapArg(_i3.MapBuilder<String, String>? renamedMapArg) =>
      _$this._renamedMapArg = renamedMapArg;

  _i3.MapBuilder<String, GreetingStruct>? _complexMapArg;
  _i3.MapBuilder<String, GreetingStruct> get complexMapArg =>
      _$this._complexMapArg ??= new _i3.MapBuilder<String, GreetingStruct>();
  set complexMapArg(_i3.MapBuilder<String, GreetingStruct>? complexMapArg) =>
      _$this._complexMapArg = complexMapArg;

  _i3.MapBuilder<String, String>? _mapWithXmlMemberName;
  _i3.MapBuilder<String, String> get mapWithXmlMemberName =>
      _$this._mapWithXmlMemberName ??= new _i3.MapBuilder<String, String>();
  set mapWithXmlMemberName(
          _i3.MapBuilder<String, String>? mapWithXmlMemberName) =>
      _$this._mapWithXmlMemberName = mapWithXmlMemberName;

  _i3.MapBuilder<String, String>? _flattenedMap;
  _i3.MapBuilder<String, String> get flattenedMap =>
      _$this._flattenedMap ??= new _i3.MapBuilder<String, String>();
  set flattenedMap(_i3.MapBuilder<String, String>? flattenedMap) =>
      _$this._flattenedMap = flattenedMap;

  _i3.MapBuilder<String, String>? _flattenedMapWithXmlName;
  _i3.MapBuilder<String, String> get flattenedMapWithXmlName =>
      _$this._flattenedMapWithXmlName ??= new _i3.MapBuilder<String, String>();
  set flattenedMapWithXmlName(
          _i3.MapBuilder<String, String>? flattenedMapWithXmlName) =>
      _$this._flattenedMapWithXmlName = flattenedMapWithXmlName;

  _i3.ListMultimapBuilder<String, String>? _mapOfLists;
  _i3.ListMultimapBuilder<String, String> get mapOfLists =>
      _$this._mapOfLists ??= new _i3.ListMultimapBuilder<String, String>();
  set mapOfLists(_i3.ListMultimapBuilder<String, String>? mapOfLists) =>
      _$this._mapOfLists = mapOfLists;

  NestedStructWithMapBuilder? _nestedStructWithMap;
  NestedStructWithMapBuilder get nestedStructWithMap =>
      _$this._nestedStructWithMap ??= new NestedStructWithMapBuilder();
  set nestedStructWithMap(NestedStructWithMapBuilder? nestedStructWithMap) =>
      _$this._nestedStructWithMap = nestedStructWithMap;

  QueryMapsInputBuilder();

  QueryMapsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mapArg = $v.mapArg?.toBuilder();
      _renamedMapArg = $v.renamedMapArg?.toBuilder();
      _complexMapArg = $v.complexMapArg?.toBuilder();
      _mapWithXmlMemberName = $v.mapWithXmlMemberName?.toBuilder();
      _flattenedMap = $v.flattenedMap?.toBuilder();
      _flattenedMapWithXmlName = $v.flattenedMapWithXmlName?.toBuilder();
      _mapOfLists = $v.mapOfLists?.toBuilder();
      _nestedStructWithMap = $v.nestedStructWithMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryMapsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryMapsInput;
  }

  @override
  void update(void Function(QueryMapsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryMapsInput build() => _build();

  _$QueryMapsInput _build() {
    _$QueryMapsInput _$result;
    try {
      _$result = _$v ??
          new _$QueryMapsInput._(
              mapArg: _mapArg?.build(),
              renamedMapArg: _renamedMapArg?.build(),
              complexMapArg: _complexMapArg?.build(),
              mapWithXmlMemberName: _mapWithXmlMemberName?.build(),
              flattenedMap: _flattenedMap?.build(),
              flattenedMapWithXmlName: _flattenedMapWithXmlName?.build(),
              mapOfLists: _mapOfLists?.build(),
              nestedStructWithMap: _nestedStructWithMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mapArg';
        _mapArg?.build();
        _$failedField = 'renamedMapArg';
        _renamedMapArg?.build();
        _$failedField = 'complexMapArg';
        _complexMapArg?.build();
        _$failedField = 'mapWithXmlMemberName';
        _mapWithXmlMemberName?.build();
        _$failedField = 'flattenedMap';
        _flattenedMap?.build();
        _$failedField = 'flattenedMapWithXmlName';
        _flattenedMapWithXmlName?.build();
        _$failedField = 'mapOfLists';
        _mapOfLists?.build();
        _$failedField = 'nestedStructWithMap';
        _nestedStructWithMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QueryMapsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
