// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_keys.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiKeys extends ApiKeys {
  @override
  final _i2.BuiltList<String>? warnings;
  @override
  final _i2.BuiltList<ApiKey>? items;
  @override
  final String? position;

  factory _$ApiKeys([void Function(ApiKeysBuilder)? updates]) =>
      (new ApiKeysBuilder()..update(updates))._build();

  _$ApiKeys._({this.warnings, this.items, this.position}) : super._();

  @override
  ApiKeys rebuild(void Function(ApiKeysBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiKeysBuilder toBuilder() => new ApiKeysBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiKeys &&
        warnings == other.warnings &&
        items == other.items &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, warnings.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ApiKeysBuilder implements Builder<ApiKeys, ApiKeysBuilder> {
  _$ApiKeys? _$v;

  _i2.ListBuilder<String>? _warnings;
  _i2.ListBuilder<String> get warnings =>
      _$this._warnings ??= new _i2.ListBuilder<String>();
  set warnings(_i2.ListBuilder<String>? warnings) =>
      _$this._warnings = warnings;

  _i2.ListBuilder<ApiKey>? _items;
  _i2.ListBuilder<ApiKey> get items =>
      _$this._items ??= new _i2.ListBuilder<ApiKey>();
  set items(_i2.ListBuilder<ApiKey>? items) => _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  ApiKeysBuilder();

  ApiKeysBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _warnings = $v.warnings?.toBuilder();
      _items = $v.items?.toBuilder();
      _position = $v.position;
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
              warnings: _warnings?.build(),
              items: _items?.build(),
              position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'warnings';
        _warnings?.build();
        _$failedField = 'items';
        _items?.build();
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
