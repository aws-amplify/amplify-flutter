// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.static_value;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StaticValue extends StaticValue {
  @override
  final _i2.BuiltList<String> values;

  factory _$StaticValue([void Function(StaticValueBuilder)? updates]) =>
      (new StaticValueBuilder()..update(updates))._build();

  _$StaticValue._({required this.values}) : super._() {
    BuiltValueNullFieldError.checkNotNull(values, r'StaticValue', 'values');
  }

  @override
  StaticValue rebuild(void Function(StaticValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StaticValueBuilder toBuilder() => new StaticValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StaticValue && values == other.values;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StaticValueBuilder implements Builder<StaticValue, StaticValueBuilder> {
  _$StaticValue? _$v;

  _i2.ListBuilder<String>? _values;
  _i2.ListBuilder<String> get values =>
      _$this._values ??= new _i2.ListBuilder<String>();
  set values(_i2.ListBuilder<String>? values) => _$this._values = values;

  StaticValueBuilder() {
    StaticValue._init(this);
  }

  StaticValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _values = $v.values.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StaticValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StaticValue;
  }

  @override
  void update(void Function(StaticValueBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StaticValue build() => _build();

  _$StaticValue _build() {
    _$StaticValue _$result;
    try {
      _$result = _$v ?? new _$StaticValue._(values: values.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StaticValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
