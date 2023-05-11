// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.omits_serializing_empty_lists_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OmitsSerializingEmptyListsInput
    extends OmitsSerializingEmptyListsInput {
  @override
  final _i5.BuiltList<String>? queryStringList;
  @override
  final _i5.BuiltList<int>? queryIntegerList;
  @override
  final _i5.BuiltList<double>? queryDoubleList;
  @override
  final _i5.BuiltList<bool>? queryBooleanList;
  @override
  final _i5.BuiltList<DateTime>? queryTimestampList;
  @override
  final _i5.BuiltList<_i3.FooEnum>? queryEnumList;
  @override
  final _i5.BuiltList<_i4.IntegerEnum>? queryIntegerEnumList;

  factory _$OmitsSerializingEmptyListsInput(
          [void Function(OmitsSerializingEmptyListsInputBuilder)? updates]) =>
      (new OmitsSerializingEmptyListsInputBuilder()..update(updates))._build();

  _$OmitsSerializingEmptyListsInput._(
      {this.queryStringList,
      this.queryIntegerList,
      this.queryDoubleList,
      this.queryBooleanList,
      this.queryTimestampList,
      this.queryEnumList,
      this.queryIntegerEnumList})
      : super._();

  @override
  OmitsSerializingEmptyListsInput rebuild(
          void Function(OmitsSerializingEmptyListsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OmitsSerializingEmptyListsInputBuilder toBuilder() =>
      new OmitsSerializingEmptyListsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OmitsSerializingEmptyListsInput &&
        queryStringList == other.queryStringList &&
        queryIntegerList == other.queryIntegerList &&
        queryDoubleList == other.queryDoubleList &&
        queryBooleanList == other.queryBooleanList &&
        queryTimestampList == other.queryTimestampList &&
        queryEnumList == other.queryEnumList &&
        queryIntegerEnumList == other.queryIntegerEnumList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, queryStringList.hashCode);
    _$hash = $jc(_$hash, queryIntegerList.hashCode);
    _$hash = $jc(_$hash, queryDoubleList.hashCode);
    _$hash = $jc(_$hash, queryBooleanList.hashCode);
    _$hash = $jc(_$hash, queryTimestampList.hashCode);
    _$hash = $jc(_$hash, queryEnumList.hashCode);
    _$hash = $jc(_$hash, queryIntegerEnumList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OmitsSerializingEmptyListsInputBuilder
    implements
        Builder<OmitsSerializingEmptyListsInput,
            OmitsSerializingEmptyListsInputBuilder> {
  _$OmitsSerializingEmptyListsInput? _$v;

  _i5.ListBuilder<String>? _queryStringList;
  _i5.ListBuilder<String> get queryStringList =>
      _$this._queryStringList ??= new _i5.ListBuilder<String>();
  set queryStringList(_i5.ListBuilder<String>? queryStringList) =>
      _$this._queryStringList = queryStringList;

  _i5.ListBuilder<int>? _queryIntegerList;
  _i5.ListBuilder<int> get queryIntegerList =>
      _$this._queryIntegerList ??= new _i5.ListBuilder<int>();
  set queryIntegerList(_i5.ListBuilder<int>? queryIntegerList) =>
      _$this._queryIntegerList = queryIntegerList;

  _i5.ListBuilder<double>? _queryDoubleList;
  _i5.ListBuilder<double> get queryDoubleList =>
      _$this._queryDoubleList ??= new _i5.ListBuilder<double>();
  set queryDoubleList(_i5.ListBuilder<double>? queryDoubleList) =>
      _$this._queryDoubleList = queryDoubleList;

  _i5.ListBuilder<bool>? _queryBooleanList;
  _i5.ListBuilder<bool> get queryBooleanList =>
      _$this._queryBooleanList ??= new _i5.ListBuilder<bool>();
  set queryBooleanList(_i5.ListBuilder<bool>? queryBooleanList) =>
      _$this._queryBooleanList = queryBooleanList;

  _i5.ListBuilder<DateTime>? _queryTimestampList;
  _i5.ListBuilder<DateTime> get queryTimestampList =>
      _$this._queryTimestampList ??= new _i5.ListBuilder<DateTime>();
  set queryTimestampList(_i5.ListBuilder<DateTime>? queryTimestampList) =>
      _$this._queryTimestampList = queryTimestampList;

  _i5.ListBuilder<_i3.FooEnum>? _queryEnumList;
  _i5.ListBuilder<_i3.FooEnum> get queryEnumList =>
      _$this._queryEnumList ??= new _i5.ListBuilder<_i3.FooEnum>();
  set queryEnumList(_i5.ListBuilder<_i3.FooEnum>? queryEnumList) =>
      _$this._queryEnumList = queryEnumList;

  _i5.ListBuilder<_i4.IntegerEnum>? _queryIntegerEnumList;
  _i5.ListBuilder<_i4.IntegerEnum> get queryIntegerEnumList =>
      _$this._queryIntegerEnumList ??= new _i5.ListBuilder<_i4.IntegerEnum>();
  set queryIntegerEnumList(
          _i5.ListBuilder<_i4.IntegerEnum>? queryIntegerEnumList) =>
      _$this._queryIntegerEnumList = queryIntegerEnumList;

  OmitsSerializingEmptyListsInputBuilder() {
    OmitsSerializingEmptyListsInput._init(this);
  }

  OmitsSerializingEmptyListsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _queryStringList = $v.queryStringList?.toBuilder();
      _queryIntegerList = $v.queryIntegerList?.toBuilder();
      _queryDoubleList = $v.queryDoubleList?.toBuilder();
      _queryBooleanList = $v.queryBooleanList?.toBuilder();
      _queryTimestampList = $v.queryTimestampList?.toBuilder();
      _queryEnumList = $v.queryEnumList?.toBuilder();
      _queryIntegerEnumList = $v.queryIntegerEnumList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OmitsSerializingEmptyListsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OmitsSerializingEmptyListsInput;
  }

  @override
  void update(void Function(OmitsSerializingEmptyListsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OmitsSerializingEmptyListsInput build() => _build();

  _$OmitsSerializingEmptyListsInput _build() {
    _$OmitsSerializingEmptyListsInput _$result;
    try {
      _$result = _$v ??
          new _$OmitsSerializingEmptyListsInput._(
              queryStringList: _queryStringList?.build(),
              queryIntegerList: _queryIntegerList?.build(),
              queryDoubleList: _queryDoubleList?.build(),
              queryBooleanList: _queryBooleanList?.build(),
              queryTimestampList: _queryTimestampList?.build(),
              queryEnumList: _queryEnumList?.build(),
              queryIntegerEnumList: _queryIntegerEnumList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'queryStringList';
        _queryStringList?.build();
        _$failedField = 'queryIntegerList';
        _queryIntegerList?.build();
        _$failedField = 'queryDoubleList';
        _queryDoubleList?.build();
        _$failedField = 'queryBooleanList';
        _queryBooleanList?.build();
        _$failedField = 'queryTimestampList';
        _queryTimestampList?.build();
        _$failedField = 'queryEnumList';
        _queryEnumList?.build();
        _$failedField = 'queryIntegerEnumList';
        _queryIntegerEnumList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OmitsSerializingEmptyListsInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$OmitsSerializingEmptyListsInputPayload
    extends OmitsSerializingEmptyListsInputPayload {
  factory _$OmitsSerializingEmptyListsInputPayload(
          [void Function(OmitsSerializingEmptyListsInputPayloadBuilder)?
              updates]) =>
      (new OmitsSerializingEmptyListsInputPayloadBuilder()..update(updates))
          ._build();

  _$OmitsSerializingEmptyListsInputPayload._() : super._();

  @override
  OmitsSerializingEmptyListsInputPayload rebuild(
          void Function(OmitsSerializingEmptyListsInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OmitsSerializingEmptyListsInputPayloadBuilder toBuilder() =>
      new OmitsSerializingEmptyListsInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OmitsSerializingEmptyListsInputPayload;
  }

  @override
  int get hashCode {
    return 909208018;
  }
}

class OmitsSerializingEmptyListsInputPayloadBuilder
    implements
        Builder<OmitsSerializingEmptyListsInputPayload,
            OmitsSerializingEmptyListsInputPayloadBuilder> {
  _$OmitsSerializingEmptyListsInputPayload? _$v;

  OmitsSerializingEmptyListsInputPayloadBuilder() {
    OmitsSerializingEmptyListsInputPayload._init(this);
  }

  @override
  void replace(OmitsSerializingEmptyListsInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OmitsSerializingEmptyListsInputPayload;
  }

  @override
  void update(
      void Function(OmitsSerializingEmptyListsInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OmitsSerializingEmptyListsInputPayload build() => _build();

  _$OmitsSerializingEmptyListsInputPayload _build() {
    final _$result = _$v ?? new _$OmitsSerializingEmptyListsInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
