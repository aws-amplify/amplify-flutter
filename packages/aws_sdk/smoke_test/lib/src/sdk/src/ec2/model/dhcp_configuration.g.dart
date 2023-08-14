// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dhcp_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DhcpConfiguration extends DhcpConfiguration {
  @override
  final String? key;
  @override
  final _i2.BuiltList<AttributeValue>? values;

  factory _$DhcpConfiguration(
          [void Function(DhcpConfigurationBuilder)? updates]) =>
      (new DhcpConfigurationBuilder()..update(updates))._build();

  _$DhcpConfiguration._({this.key, this.values}) : super._();

  @override
  DhcpConfiguration rebuild(void Function(DhcpConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DhcpConfigurationBuilder toBuilder() =>
      new DhcpConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DhcpConfiguration &&
        key == other.key &&
        values == other.values;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DhcpConfigurationBuilder
    implements Builder<DhcpConfiguration, DhcpConfigurationBuilder> {
  _$DhcpConfiguration? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  _i2.ListBuilder<AttributeValue>? _values;
  _i2.ListBuilder<AttributeValue> get values =>
      _$this._values ??= new _i2.ListBuilder<AttributeValue>();
  set values(_i2.ListBuilder<AttributeValue>? values) =>
      _$this._values = values;

  DhcpConfigurationBuilder();

  DhcpConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _values = $v.values?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DhcpConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DhcpConfiguration;
  }

  @override
  void update(void Function(DhcpConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DhcpConfiguration build() => _build();

  _$DhcpConfiguration _build() {
    _$DhcpConfiguration _$result;
    try {
      _$result =
          _$v ?? new _$DhcpConfiguration._(key: key, values: _values?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        _values?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DhcpConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
