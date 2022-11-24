// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.api_keys;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiKeys extends ApiKeys {
  @override
  final _i3.BuiltList<_i2.ApiKey>? items;
  @override
  final String? position;
  @override
  final _i3.BuiltList<String>? warnings;

  factory _$ApiKeys([void Function(ApiKeysBuilder)? updates]) =>
      (new ApiKeysBuilder()..update(updates))._build();

  _$ApiKeys._({this.items, this.position, this.warnings}) : super._();

  @override
  ApiKeys rebuild(void Function(ApiKeysBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiKeysBuilder toBuilder() => new ApiKeysBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiKeys &&
        items == other.items &&
        position == other.position &&
        warnings == other.warnings;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, items.hashCode), position.hashCode), warnings.hashCode));
  }
}

class ApiKeysBuilder implements Builder<ApiKeys, ApiKeysBuilder> {
  _$ApiKeys? _$v;

  _i3.ListBuilder<_i2.ApiKey>? _items;
  _i3.ListBuilder<_i2.ApiKey> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.ApiKey>();
  set items(_i3.ListBuilder<_i2.ApiKey>? items) => _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  _i3.ListBuilder<String>? _warnings;
  _i3.ListBuilder<String> get warnings =>
      _$this._warnings ??= new _i3.ListBuilder<String>();
  set warnings(_i3.ListBuilder<String>? warnings) =>
      _$this._warnings = warnings;

  ApiKeysBuilder() {
    ApiKeys._init(this);
  }

  ApiKeysBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _warnings = $v.warnings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiKeys other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiKeys;
  }

  @override
  void update(void Function(ApiKeysBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiKeys build() => _build();

  _$ApiKeys _build() {
    _$ApiKeys _$result;
    try {
      _$result = _$v ??
          new _$ApiKeys._(
              items: _items?.build(),
              position: position,
              warnings: _warnings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();

        _$failedField = 'warnings';
        _warnings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ApiKeys', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
