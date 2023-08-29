// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Filter extends Filter {
  @override
  final String? name;
  @override
  final _i2.BuiltList<String>? values;

  factory _$Filter([void Function(FilterBuilder)? updates]) =>
      (new FilterBuilder()..update(updates))._build();

  _$Filter._({this.name, this.values}) : super._();

  @override
  Filter rebuild(void Function(FilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterBuilder toBuilder() => new FilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Filter && name == other.name && values == other.values;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FilterBuilder implements Builder<Filter, FilterBuilder> {
  _$Filter? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i2.ListBuilder<String>? _values;
  _i2.ListBuilder<String> get values =>
      _$this._values ??= new _i2.ListBuilder<String>();
  set values(_i2.ListBuilder<String>? values) => _$this._values = values;

  FilterBuilder();

  FilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _values = $v.values?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Filter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Filter;
  }

  @override
  void update(void Function(FilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Filter build() => _build();

  _$Filter _build() {
    _$Filter _$result;
    try {
      _$result = _$v ?? new _$Filter._(name: name, values: _values?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        _values?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Filter', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
