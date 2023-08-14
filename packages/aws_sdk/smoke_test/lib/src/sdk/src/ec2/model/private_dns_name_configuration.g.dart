// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_dns_name_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PrivateDnsNameConfiguration extends PrivateDnsNameConfiguration {
  @override
  final DnsNameState? state;
  @override
  final String? type;
  @override
  final String? value;
  @override
  final String? name;

  factory _$PrivateDnsNameConfiguration(
          [void Function(PrivateDnsNameConfigurationBuilder)? updates]) =>
      (new PrivateDnsNameConfigurationBuilder()..update(updates))._build();

  _$PrivateDnsNameConfiguration._(
      {this.state, this.type, this.value, this.name})
      : super._();

  @override
  PrivateDnsNameConfiguration rebuild(
          void Function(PrivateDnsNameConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivateDnsNameConfigurationBuilder toBuilder() =>
      new PrivateDnsNameConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrivateDnsNameConfiguration &&
        state == other.state &&
        type == other.type &&
        value == other.value &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PrivateDnsNameConfigurationBuilder
    implements
        Builder<PrivateDnsNameConfiguration,
            PrivateDnsNameConfigurationBuilder> {
  _$PrivateDnsNameConfiguration? _$v;

  DnsNameState? _state;
  DnsNameState? get state => _$this._state;
  set state(DnsNameState? state) => _$this._state = state;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PrivateDnsNameConfigurationBuilder();

  PrivateDnsNameConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _type = $v.type;
      _value = $v.value;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrivateDnsNameConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrivateDnsNameConfiguration;
  }

  @override
  void update(void Function(PrivateDnsNameConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrivateDnsNameConfiguration build() => _build();

  _$PrivateDnsNameConfiguration _build() {
    final _$result = _$v ??
        new _$PrivateDnsNameConfiguration._(
            state: state, type: type, value: value, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
