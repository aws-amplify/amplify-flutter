// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.query_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QueryInfo extends QueryInfo {
  @override
  final _i3.BuiltList<_i2.FieldInfo>? selectFields;

  factory _$QueryInfo([void Function(QueryInfoBuilder)? updates]) =>
      (new QueryInfoBuilder()..update(updates))._build();

  _$QueryInfo._({this.selectFields}) : super._();

  @override
  QueryInfo rebuild(void Function(QueryInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QueryInfoBuilder toBuilder() => new QueryInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QueryInfo && selectFields == other.selectFields;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, selectFields.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class QueryInfoBuilder implements Builder<QueryInfo, QueryInfoBuilder> {
  _$QueryInfo? _$v;

  _i3.ListBuilder<_i2.FieldInfo>? _selectFields;
  _i3.ListBuilder<_i2.FieldInfo> get selectFields =>
      _$this._selectFields ??= new _i3.ListBuilder<_i2.FieldInfo>();
  set selectFields(_i3.ListBuilder<_i2.FieldInfo>? selectFields) =>
      _$this._selectFields = selectFields;

  QueryInfoBuilder() {
    QueryInfo._init(this);
  }

  QueryInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectFields = $v.selectFields?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QueryInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QueryInfo;
  }

  @override
  void update(void Function(QueryInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QueryInfo build() => _build();

  _$QueryInfo _build() {
    _$QueryInfo _$result;
    try {
      _$result = _$v ?? new _$QueryInfo._(selectFields: _selectFields?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selectFields';
        _selectFields?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QueryInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
