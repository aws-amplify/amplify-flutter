// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_lists_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonListsInputOutput extends JsonListsInputOutput {
  @override
  final _i3.BuiltList<String>? stringList;
  @override
  final _i3.BuiltList<String?>? sparseStringList;
  @override
  final _i3.BuiltSet<String>? stringSet;
  @override
  final _i3.BuiltList<int>? integerList;
  @override
  final _i3.BuiltList<bool>? booleanList;
  @override
  final _i3.BuiltList<DateTime>? timestampList;
  @override
  final _i3.BuiltList<FooEnum>? enumList;
  @override
  final _i3.BuiltList<IntegerEnum>? intEnumList;
  @override
  final _i3.BuiltList<_i3.BuiltList<String>>? nestedStringList;
  @override
  final _i3.BuiltList<StructureListMember>? structureList;

  factory _$JsonListsInputOutput(
          [void Function(JsonListsInputOutputBuilder)? updates]) =>
      (new JsonListsInputOutputBuilder()..update(updates))._build();

  _$JsonListsInputOutput._(
      {this.stringList,
      this.sparseStringList,
      this.stringSet,
      this.integerList,
      this.booleanList,
      this.timestampList,
      this.enumList,
      this.intEnumList,
      this.nestedStringList,
      this.structureList})
      : super._();

  @override
  JsonListsInputOutput rebuild(
          void Function(JsonListsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonListsInputOutputBuilder toBuilder() =>
      new JsonListsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonListsInputOutput &&
        stringList == other.stringList &&
        sparseStringList == other.sparseStringList &&
        stringSet == other.stringSet &&
        integerList == other.integerList &&
        booleanList == other.booleanList &&
        timestampList == other.timestampList &&
        enumList == other.enumList &&
        intEnumList == other.intEnumList &&
        nestedStringList == other.nestedStringList &&
        structureList == other.structureList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, stringList.hashCode);
    _$hash = $jc(_$hash, sparseStringList.hashCode);
    _$hash = $jc(_$hash, stringSet.hashCode);
    _$hash = $jc(_$hash, integerList.hashCode);
    _$hash = $jc(_$hash, booleanList.hashCode);
    _$hash = $jc(_$hash, timestampList.hashCode);
    _$hash = $jc(_$hash, enumList.hashCode);
    _$hash = $jc(_$hash, intEnumList.hashCode);
    _$hash = $jc(_$hash, nestedStringList.hashCode);
    _$hash = $jc(_$hash, structureList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class JsonListsInputOutputBuilder
    implements Builder<JsonListsInputOutput, JsonListsInputOutputBuilder> {
  _$JsonListsInputOutput? _$v;

  _i3.ListBuilder<String>? _stringList;
  _i3.ListBuilder<String> get stringList =>
      _$this._stringList ??= new _i3.ListBuilder<String>();
  set stringList(_i3.ListBuilder<String>? stringList) =>
      _$this._stringList = stringList;

  _i3.ListBuilder<String?>? _sparseStringList;
  _i3.ListBuilder<String?> get sparseStringList =>
      _$this._sparseStringList ??= new _i3.ListBuilder<String?>();
  set sparseStringList(_i3.ListBuilder<String?>? sparseStringList) =>
      _$this._sparseStringList = sparseStringList;

  _i3.SetBuilder<String>? _stringSet;
  _i3.SetBuilder<String> get stringSet =>
      _$this._stringSet ??= new _i3.SetBuilder<String>();
  set stringSet(_i3.SetBuilder<String>? stringSet) =>
      _$this._stringSet = stringSet;

  _i3.ListBuilder<int>? _integerList;
  _i3.ListBuilder<int> get integerList =>
      _$this._integerList ??= new _i3.ListBuilder<int>();
  set integerList(_i3.ListBuilder<int>? integerList) =>
      _$this._integerList = integerList;

  _i3.ListBuilder<bool>? _booleanList;
  _i3.ListBuilder<bool> get booleanList =>
      _$this._booleanList ??= new _i3.ListBuilder<bool>();
  set booleanList(_i3.ListBuilder<bool>? booleanList) =>
      _$this._booleanList = booleanList;

  _i3.ListBuilder<DateTime>? _timestampList;
  _i3.ListBuilder<DateTime> get timestampList =>
      _$this._timestampList ??= new _i3.ListBuilder<DateTime>();
  set timestampList(_i3.ListBuilder<DateTime>? timestampList) =>
      _$this._timestampList = timestampList;

  _i3.ListBuilder<FooEnum>? _enumList;
  _i3.ListBuilder<FooEnum> get enumList =>
      _$this._enumList ??= new _i3.ListBuilder<FooEnum>();
  set enumList(_i3.ListBuilder<FooEnum>? enumList) =>
      _$this._enumList = enumList;

  _i3.ListBuilder<IntegerEnum>? _intEnumList;
  _i3.ListBuilder<IntegerEnum> get intEnumList =>
      _$this._intEnumList ??= new _i3.ListBuilder<IntegerEnum>();
  set intEnumList(_i3.ListBuilder<IntegerEnum>? intEnumList) =>
      _$this._intEnumList = intEnumList;

  _i3.ListBuilder<_i3.BuiltList<String>>? _nestedStringList;
  _i3.ListBuilder<_i3.BuiltList<String>> get nestedStringList =>
      _$this._nestedStringList ??= new _i3.ListBuilder<_i3.BuiltList<String>>();
  set nestedStringList(
          _i3.ListBuilder<_i3.BuiltList<String>>? nestedStringList) =>
      _$this._nestedStringList = nestedStringList;

  _i3.ListBuilder<StructureListMember>? _structureList;
  _i3.ListBuilder<StructureListMember> get structureList =>
      _$this._structureList ??= new _i3.ListBuilder<StructureListMember>();
  set structureList(_i3.ListBuilder<StructureListMember>? structureList) =>
      _$this._structureList = structureList;

  JsonListsInputOutputBuilder();

  JsonListsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _stringList = $v.stringList?.toBuilder();
      _sparseStringList = $v.sparseStringList?.toBuilder();
      _stringSet = $v.stringSet?.toBuilder();
      _integerList = $v.integerList?.toBuilder();
      _booleanList = $v.booleanList?.toBuilder();
      _timestampList = $v.timestampList?.toBuilder();
      _enumList = $v.enumList?.toBuilder();
      _intEnumList = $v.intEnumList?.toBuilder();
      _nestedStringList = $v.nestedStringList?.toBuilder();
      _structureList = $v.structureList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonListsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonListsInputOutput;
  }

  @override
  void update(void Function(JsonListsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonListsInputOutput build() => _build();

  _$JsonListsInputOutput _build() {
    _$JsonListsInputOutput _$result;
    try {
      _$result = _$v ??
          new _$JsonListsInputOutput._(
              stringList: _stringList?.build(),
              sparseStringList: _sparseStringList?.build(),
              stringSet: _stringSet?.build(),
              integerList: _integerList?.build(),
              booleanList: _booleanList?.build(),
              timestampList: _timestampList?.build(),
              enumList: _enumList?.build(),
              intEnumList: _intEnumList?.build(),
              nestedStringList: _nestedStringList?.build(),
              structureList: _structureList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'stringList';
        _stringList?.build();
        _$failedField = 'sparseStringList';
        _sparseStringList?.build();
        _$failedField = 'stringSet';
        _stringSet?.build();
        _$failedField = 'integerList';
        _integerList?.build();
        _$failedField = 'booleanList';
        _booleanList?.build();
        _$failedField = 'timestampList';
        _timestampList?.build();
        _$failedField = 'enumList';
        _enumList?.build();
        _$failedField = 'intEnumList';
        _intEnumList?.build();
        _$failedField = 'nestedStringList';
        _nestedStringList?.build();
        _$failedField = 'structureList';
        _structureList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'JsonListsInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
