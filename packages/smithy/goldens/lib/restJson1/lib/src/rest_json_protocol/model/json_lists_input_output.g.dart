// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.json_lists_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonListsInputOutput extends JsonListsInputOutput {
  @override
  final _i5.BuiltList<bool>? booleanList;
  @override
  final _i5.BuiltList<_i3.FooEnum>? enumList;
  @override
  final _i5.BuiltList<int>? integerList;
  @override
  final _i5.BuiltList<_i5.BuiltList<String>>? nestedStringList;
  @override
  final _i5.BuiltList<String?>? sparseStringList;
  @override
  final _i5.BuiltList<String>? stringList;
  @override
  final _i5.BuiltSet<String>? stringSet;
  @override
  final _i5.BuiltList<_i4.StructureListMember>? structureList;
  @override
  final _i5.BuiltList<DateTime>? timestampList;

  factory _$JsonListsInputOutput(
          [void Function(JsonListsInputOutputBuilder)? updates]) =>
      (new JsonListsInputOutputBuilder()..update(updates))._build();

  _$JsonListsInputOutput._(
      {this.booleanList,
      this.enumList,
      this.integerList,
      this.nestedStringList,
      this.sparseStringList,
      this.stringList,
      this.stringSet,
      this.structureList,
      this.timestampList})
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
        booleanList == other.booleanList &&
        enumList == other.enumList &&
        integerList == other.integerList &&
        nestedStringList == other.nestedStringList &&
        sparseStringList == other.sparseStringList &&
        stringList == other.stringList &&
        stringSet == other.stringSet &&
        structureList == other.structureList &&
        timestampList == other.timestampList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, booleanList.hashCode);
    _$hash = $jc(_$hash, enumList.hashCode);
    _$hash = $jc(_$hash, integerList.hashCode);
    _$hash = $jc(_$hash, nestedStringList.hashCode);
    _$hash = $jc(_$hash, sparseStringList.hashCode);
    _$hash = $jc(_$hash, stringList.hashCode);
    _$hash = $jc(_$hash, stringSet.hashCode);
    _$hash = $jc(_$hash, structureList.hashCode);
    _$hash = $jc(_$hash, timestampList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class JsonListsInputOutputBuilder
    implements Builder<JsonListsInputOutput, JsonListsInputOutputBuilder> {
  _$JsonListsInputOutput? _$v;

  _i5.ListBuilder<bool>? _booleanList;
  _i5.ListBuilder<bool> get booleanList =>
      _$this._booleanList ??= new _i5.ListBuilder<bool>();
  set booleanList(_i5.ListBuilder<bool>? booleanList) =>
      _$this._booleanList = booleanList;

  _i5.ListBuilder<_i3.FooEnum>? _enumList;
  _i5.ListBuilder<_i3.FooEnum> get enumList =>
      _$this._enumList ??= new _i5.ListBuilder<_i3.FooEnum>();
  set enumList(_i5.ListBuilder<_i3.FooEnum>? enumList) =>
      _$this._enumList = enumList;

  _i5.ListBuilder<int>? _integerList;
  _i5.ListBuilder<int> get integerList =>
      _$this._integerList ??= new _i5.ListBuilder<int>();
  set integerList(_i5.ListBuilder<int>? integerList) =>
      _$this._integerList = integerList;

  _i5.ListBuilder<_i5.BuiltList<String>>? _nestedStringList;
  _i5.ListBuilder<_i5.BuiltList<String>> get nestedStringList =>
      _$this._nestedStringList ??= new _i5.ListBuilder<_i5.BuiltList<String>>();
  set nestedStringList(
          _i5.ListBuilder<_i5.BuiltList<String>>? nestedStringList) =>
      _$this._nestedStringList = nestedStringList;

  _i5.ListBuilder<String?>? _sparseStringList;
  _i5.ListBuilder<String?> get sparseStringList =>
      _$this._sparseStringList ??= new _i5.ListBuilder<String?>();
  set sparseStringList(_i5.ListBuilder<String?>? sparseStringList) =>
      _$this._sparseStringList = sparseStringList;

  _i5.ListBuilder<String>? _stringList;
  _i5.ListBuilder<String> get stringList =>
      _$this._stringList ??= new _i5.ListBuilder<String>();
  set stringList(_i5.ListBuilder<String>? stringList) =>
      _$this._stringList = stringList;

  _i5.SetBuilder<String>? _stringSet;
  _i5.SetBuilder<String> get stringSet =>
      _$this._stringSet ??= new _i5.SetBuilder<String>();
  set stringSet(_i5.SetBuilder<String>? stringSet) =>
      _$this._stringSet = stringSet;

  _i5.ListBuilder<_i4.StructureListMember>? _structureList;
  _i5.ListBuilder<_i4.StructureListMember> get structureList =>
      _$this._structureList ??= new _i5.ListBuilder<_i4.StructureListMember>();
  set structureList(_i5.ListBuilder<_i4.StructureListMember>? structureList) =>
      _$this._structureList = structureList;

  _i5.ListBuilder<DateTime>? _timestampList;
  _i5.ListBuilder<DateTime> get timestampList =>
      _$this._timestampList ??= new _i5.ListBuilder<DateTime>();
  set timestampList(_i5.ListBuilder<DateTime>? timestampList) =>
      _$this._timestampList = timestampList;

  JsonListsInputOutputBuilder() {
    JsonListsInputOutput._init(this);
  }

  JsonListsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _booleanList = $v.booleanList?.toBuilder();
      _enumList = $v.enumList?.toBuilder();
      _integerList = $v.integerList?.toBuilder();
      _nestedStringList = $v.nestedStringList?.toBuilder();
      _sparseStringList = $v.sparseStringList?.toBuilder();
      _stringList = $v.stringList?.toBuilder();
      _stringSet = $v.stringSet?.toBuilder();
      _structureList = $v.structureList?.toBuilder();
      _timestampList = $v.timestampList?.toBuilder();
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
              booleanList: _booleanList?.build(),
              enumList: _enumList?.build(),
              integerList: _integerList?.build(),
              nestedStringList: _nestedStringList?.build(),
              sparseStringList: _sparseStringList?.build(),
              stringList: _stringList?.build(),
              stringSet: _stringSet?.build(),
              structureList: _structureList?.build(),
              timestampList: _timestampList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'booleanList';
        _booleanList?.build();
        _$failedField = 'enumList';
        _enumList?.build();
        _$failedField = 'integerList';
        _integerList?.build();
        _$failedField = 'nestedStringList';
        _nestedStringList?.build();
        _$failedField = 'sparseStringList';
        _sparseStringList?.build();
        _$failedField = 'stringList';
        _stringList?.build();
        _$failedField = 'stringSet';
        _stringSet?.build();
        _$failedField = 'structureList';
        _structureList?.build();
        _$failedField = 'timestampList';
        _timestampList?.build();
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
