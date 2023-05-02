// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_validation_protocol.model.malformed_unique_items_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedUniqueItemsInput extends MalformedUniqueItemsInput {
  @override
  final _i8.BuiltSet<_i3.Uint8List>? blobList;
  @override
  final _i8.BuiltSet<bool>? booleanList;
  @override
  final _i8.BuiltSet<String>? stringList;
  @override
  final _i8.BuiltSet<int>? byteList;
  @override
  final _i8.BuiltSet<int>? shortList;
  @override
  final _i8.BuiltSet<int>? integerList;
  @override
  final _i8.BuiltSet<_i4.Int64>? longList;
  @override
  final _i8.BuiltSet<DateTime>? timestampList;
  @override
  final _i8.BuiltSet<DateTime>? dateTimeList;
  @override
  final _i8.BuiltSet<DateTime>? httpDateList;
  @override
  final _i8.BuiltSet<_i5.FooEnum>? enumList;
  @override
  final _i8.BuiltSet<int>? intEnumList;
  @override
  final _i8.BuiltSet<_i8.BuiltList<String>>? listList;
  @override
  final _i8.BuiltSet<_i6.GreetingStruct>? structureList;
  @override
  final _i8.BuiltSet<_i7.FooUnion>? unionList;

  factory _$MalformedUniqueItemsInput(
          [void Function(MalformedUniqueItemsInputBuilder)? updates]) =>
      (new MalformedUniqueItemsInputBuilder()..update(updates))._build();

  _$MalformedUniqueItemsInput._(
      {this.blobList,
      this.booleanList,
      this.stringList,
      this.byteList,
      this.shortList,
      this.integerList,
      this.longList,
      this.timestampList,
      this.dateTimeList,
      this.httpDateList,
      this.enumList,
      this.intEnumList,
      this.listList,
      this.structureList,
      this.unionList})
      : super._();

  @override
  MalformedUniqueItemsInput rebuild(
          void Function(MalformedUniqueItemsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedUniqueItemsInputBuilder toBuilder() =>
      new MalformedUniqueItemsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedUniqueItemsInput &&
        blobList == other.blobList &&
        booleanList == other.booleanList &&
        stringList == other.stringList &&
        byteList == other.byteList &&
        shortList == other.shortList &&
        integerList == other.integerList &&
        longList == other.longList &&
        timestampList == other.timestampList &&
        dateTimeList == other.dateTimeList &&
        httpDateList == other.httpDateList &&
        enumList == other.enumList &&
        intEnumList == other.intEnumList &&
        listList == other.listList &&
        structureList == other.structureList &&
        unionList == other.unionList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blobList.hashCode);
    _$hash = $jc(_$hash, booleanList.hashCode);
    _$hash = $jc(_$hash, stringList.hashCode);
    _$hash = $jc(_$hash, byteList.hashCode);
    _$hash = $jc(_$hash, shortList.hashCode);
    _$hash = $jc(_$hash, integerList.hashCode);
    _$hash = $jc(_$hash, longList.hashCode);
    _$hash = $jc(_$hash, timestampList.hashCode);
    _$hash = $jc(_$hash, dateTimeList.hashCode);
    _$hash = $jc(_$hash, httpDateList.hashCode);
    _$hash = $jc(_$hash, enumList.hashCode);
    _$hash = $jc(_$hash, intEnumList.hashCode);
    _$hash = $jc(_$hash, listList.hashCode);
    _$hash = $jc(_$hash, structureList.hashCode);
    _$hash = $jc(_$hash, unionList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedUniqueItemsInputBuilder
    implements
        Builder<MalformedUniqueItemsInput, MalformedUniqueItemsInputBuilder> {
  _$MalformedUniqueItemsInput? _$v;

  _i8.SetBuilder<_i3.Uint8List>? _blobList;
  _i8.SetBuilder<_i3.Uint8List> get blobList =>
      _$this._blobList ??= new _i8.SetBuilder<_i3.Uint8List>();
  set blobList(_i8.SetBuilder<_i3.Uint8List>? blobList) =>
      _$this._blobList = blobList;

  _i8.SetBuilder<bool>? _booleanList;
  _i8.SetBuilder<bool> get booleanList =>
      _$this._booleanList ??= new _i8.SetBuilder<bool>();
  set booleanList(_i8.SetBuilder<bool>? booleanList) =>
      _$this._booleanList = booleanList;

  _i8.SetBuilder<String>? _stringList;
  _i8.SetBuilder<String> get stringList =>
      _$this._stringList ??= new _i8.SetBuilder<String>();
  set stringList(_i8.SetBuilder<String>? stringList) =>
      _$this._stringList = stringList;

  _i8.SetBuilder<int>? _byteList;
  _i8.SetBuilder<int> get byteList =>
      _$this._byteList ??= new _i8.SetBuilder<int>();
  set byteList(_i8.SetBuilder<int>? byteList) => _$this._byteList = byteList;

  _i8.SetBuilder<int>? _shortList;
  _i8.SetBuilder<int> get shortList =>
      _$this._shortList ??= new _i8.SetBuilder<int>();
  set shortList(_i8.SetBuilder<int>? shortList) =>
      _$this._shortList = shortList;

  _i8.SetBuilder<int>? _integerList;
  _i8.SetBuilder<int> get integerList =>
      _$this._integerList ??= new _i8.SetBuilder<int>();
  set integerList(_i8.SetBuilder<int>? integerList) =>
      _$this._integerList = integerList;

  _i8.SetBuilder<_i4.Int64>? _longList;
  _i8.SetBuilder<_i4.Int64> get longList =>
      _$this._longList ??= new _i8.SetBuilder<_i4.Int64>();
  set longList(_i8.SetBuilder<_i4.Int64>? longList) =>
      _$this._longList = longList;

  _i8.SetBuilder<DateTime>? _timestampList;
  _i8.SetBuilder<DateTime> get timestampList =>
      _$this._timestampList ??= new _i8.SetBuilder<DateTime>();
  set timestampList(_i8.SetBuilder<DateTime>? timestampList) =>
      _$this._timestampList = timestampList;

  _i8.SetBuilder<DateTime>? _dateTimeList;
  _i8.SetBuilder<DateTime> get dateTimeList =>
      _$this._dateTimeList ??= new _i8.SetBuilder<DateTime>();
  set dateTimeList(_i8.SetBuilder<DateTime>? dateTimeList) =>
      _$this._dateTimeList = dateTimeList;

  _i8.SetBuilder<DateTime>? _httpDateList;
  _i8.SetBuilder<DateTime> get httpDateList =>
      _$this._httpDateList ??= new _i8.SetBuilder<DateTime>();
  set httpDateList(_i8.SetBuilder<DateTime>? httpDateList) =>
      _$this._httpDateList = httpDateList;

  _i8.SetBuilder<_i5.FooEnum>? _enumList;
  _i8.SetBuilder<_i5.FooEnum> get enumList =>
      _$this._enumList ??= new _i8.SetBuilder<_i5.FooEnum>();
  set enumList(_i8.SetBuilder<_i5.FooEnum>? enumList) =>
      _$this._enumList = enumList;

  _i8.SetBuilder<int>? _intEnumList;
  _i8.SetBuilder<int> get intEnumList =>
      _$this._intEnumList ??= new _i8.SetBuilder<int>();
  set intEnumList(_i8.SetBuilder<int>? intEnumList) =>
      _$this._intEnumList = intEnumList;

  _i8.SetBuilder<_i8.BuiltList<String>>? _listList;
  _i8.SetBuilder<_i8.BuiltList<String>> get listList =>
      _$this._listList ??= new _i8.SetBuilder<_i8.BuiltList<String>>();
  set listList(_i8.SetBuilder<_i8.BuiltList<String>>? listList) =>
      _$this._listList = listList;

  _i8.SetBuilder<_i6.GreetingStruct>? _structureList;
  _i8.SetBuilder<_i6.GreetingStruct> get structureList =>
      _$this._structureList ??= new _i8.SetBuilder<_i6.GreetingStruct>();
  set structureList(_i8.SetBuilder<_i6.GreetingStruct>? structureList) =>
      _$this._structureList = structureList;

  _i8.SetBuilder<_i7.FooUnion>? _unionList;
  _i8.SetBuilder<_i7.FooUnion> get unionList =>
      _$this._unionList ??= new _i8.SetBuilder<_i7.FooUnion>();
  set unionList(_i8.SetBuilder<_i7.FooUnion>? unionList) =>
      _$this._unionList = unionList;

  MalformedUniqueItemsInputBuilder() {
    MalformedUniqueItemsInput._init(this);
  }

  MalformedUniqueItemsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blobList = $v.blobList?.toBuilder();
      _booleanList = $v.booleanList?.toBuilder();
      _stringList = $v.stringList?.toBuilder();
      _byteList = $v.byteList?.toBuilder();
      _shortList = $v.shortList?.toBuilder();
      _integerList = $v.integerList?.toBuilder();
      _longList = $v.longList?.toBuilder();
      _timestampList = $v.timestampList?.toBuilder();
      _dateTimeList = $v.dateTimeList?.toBuilder();
      _httpDateList = $v.httpDateList?.toBuilder();
      _enumList = $v.enumList?.toBuilder();
      _intEnumList = $v.intEnumList?.toBuilder();
      _listList = $v.listList?.toBuilder();
      _structureList = $v.structureList?.toBuilder();
      _unionList = $v.unionList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedUniqueItemsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedUniqueItemsInput;
  }

  @override
  void update(void Function(MalformedUniqueItemsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedUniqueItemsInput build() => _build();

  _$MalformedUniqueItemsInput _build() {
    _$MalformedUniqueItemsInput _$result;
    try {
      _$result = _$v ??
          new _$MalformedUniqueItemsInput._(
              blobList: _blobList?.build(),
              booleanList: _booleanList?.build(),
              stringList: _stringList?.build(),
              byteList: _byteList?.build(),
              shortList: _shortList?.build(),
              integerList: _integerList?.build(),
              longList: _longList?.build(),
              timestampList: _timestampList?.build(),
              dateTimeList: _dateTimeList?.build(),
              httpDateList: _httpDateList?.build(),
              enumList: _enumList?.build(),
              intEnumList: _intEnumList?.build(),
              listList: _listList?.build(),
              structureList: _structureList?.build(),
              unionList: _unionList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'blobList';
        _blobList?.build();
        _$failedField = 'booleanList';
        _booleanList?.build();
        _$failedField = 'stringList';
        _stringList?.build();
        _$failedField = 'byteList';
        _byteList?.build();
        _$failedField = 'shortList';
        _shortList?.build();
        _$failedField = 'integerList';
        _integerList?.build();
        _$failedField = 'longList';
        _longList?.build();
        _$failedField = 'timestampList';
        _timestampList?.build();
        _$failedField = 'dateTimeList';
        _dateTimeList?.build();
        _$failedField = 'httpDateList';
        _httpDateList?.build();
        _$failedField = 'enumList';
        _enumList?.build();
        _$failedField = 'intEnumList';
        _intEnumList?.build();
        _$failedField = 'listList';
        _listList?.build();
        _$failedField = 'structureList';
        _structureList?.build();
        _$failedField = 'unionList';
        _unionList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MalformedUniqueItemsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
