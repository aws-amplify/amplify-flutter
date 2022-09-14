// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.payload_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayloadConfig extends PayloadConfig {
  @override
  final int? data;

  factory _$PayloadConfig([void Function(PayloadConfigBuilder)? updates]) =>
      (new PayloadConfigBuilder()..update(updates))._build();

  _$PayloadConfig._({this.data}) : super._();

  @override
  PayloadConfig rebuild(void Function(PayloadConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayloadConfigBuilder toBuilder() => new PayloadConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayloadConfig && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }
}

class PayloadConfigBuilder
    implements Builder<PayloadConfig, PayloadConfigBuilder> {
  _$PayloadConfig? _$v;

  int? _data;
  int? get data => _$this._data;
  set data(int? data) => _$this._data = data;

  PayloadConfigBuilder() {
    PayloadConfig._init(this);
  }

  PayloadConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayloadConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayloadConfig;
  }

  @override
  void update(void Function(PayloadConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayloadConfig build() => _build();

  _$PayloadConfig _build() {
    final _$result = _$v ?? new _$PayloadConfig._(data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
