// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_dhcp_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewDhcpConfiguration extends NewDhcpConfiguration {
  @override
  final String? key;
  @override
  final _i2.BuiltList<String>? values;

  factory _$NewDhcpConfiguration(
          [void Function(NewDhcpConfigurationBuilder)? updates]) =>
      (new NewDhcpConfigurationBuilder()..update(updates))._build();

  _$NewDhcpConfiguration._({this.key, this.values}) : super._();

  @override
  NewDhcpConfiguration rebuild(
          void Function(NewDhcpConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewDhcpConfigurationBuilder toBuilder() =>
      new NewDhcpConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewDhcpConfiguration &&
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

class NewDhcpConfigurationBuilder
    implements Builder<NewDhcpConfiguration, NewDhcpConfigurationBuilder> {
  _$NewDhcpConfiguration? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  _i2.ListBuilder<String>? _values;
  _i2.ListBuilder<String> get values =>
      _$this._values ??= new _i2.ListBuilder<String>();
  set values(_i2.ListBuilder<String>? values) => _$this._values = values;

  NewDhcpConfigurationBuilder();

  NewDhcpConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _values = $v.values?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewDhcpConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewDhcpConfiguration;
  }

  @override
  void update(void Function(NewDhcpConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewDhcpConfiguration build() => _build();

  _$NewDhcpConfiguration _build() {
    _$NewDhcpConfiguration _$result;
    try {
      _$result = _$v ??
          new _$NewDhcpConfiguration._(key: key, values: _values?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        _values?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NewDhcpConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
