// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload_config.dart';

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
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PayloadConfigBuilder
    implements Builder<PayloadConfig, PayloadConfigBuilder> {
  _$PayloadConfig? _$v;

  int? _data;
  int? get data => _$this._data;
  set data(int? data) => _$this._data = data;

  PayloadConfigBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
