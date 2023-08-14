// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dns_servers_options_modify_structure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DnsServersOptionsModifyStructure
    extends DnsServersOptionsModifyStructure {
  @override
  final _i2.BuiltList<String>? customDnsServers;
  @override
  final bool enabled;

  factory _$DnsServersOptionsModifyStructure(
          [void Function(DnsServersOptionsModifyStructureBuilder)? updates]) =>
      (new DnsServersOptionsModifyStructureBuilder()..update(updates))._build();

  _$DnsServersOptionsModifyStructure._(
      {this.customDnsServers, required this.enabled})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'DnsServersOptionsModifyStructure', 'enabled');
  }

  @override
  DnsServersOptionsModifyStructure rebuild(
          void Function(DnsServersOptionsModifyStructureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DnsServersOptionsModifyStructureBuilder toBuilder() =>
      new DnsServersOptionsModifyStructureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DnsServersOptionsModifyStructure &&
        customDnsServers == other.customDnsServers &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customDnsServers.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DnsServersOptionsModifyStructureBuilder
    implements
        Builder<DnsServersOptionsModifyStructure,
            DnsServersOptionsModifyStructureBuilder> {
  _$DnsServersOptionsModifyStructure? _$v;

  _i2.ListBuilder<String>? _customDnsServers;
  _i2.ListBuilder<String> get customDnsServers =>
      _$this._customDnsServers ??= new _i2.ListBuilder<String>();
  set customDnsServers(_i2.ListBuilder<String>? customDnsServers) =>
      _$this._customDnsServers = customDnsServers;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  DnsServersOptionsModifyStructureBuilder() {
    DnsServersOptionsModifyStructure._init(this);
  }

  DnsServersOptionsModifyStructureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customDnsServers = $v.customDnsServers?.toBuilder();
      _enabled = $v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DnsServersOptionsModifyStructure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DnsServersOptionsModifyStructure;
  }

  @override
  void update(void Function(DnsServersOptionsModifyStructureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DnsServersOptionsModifyStructure build() => _build();

  _$DnsServersOptionsModifyStructure _build() {
    _$DnsServersOptionsModifyStructure _$result;
    try {
      _$result = _$v ??
          new _$DnsServersOptionsModifyStructure._(
              customDnsServers: _customDnsServers?.build(),
              enabled: BuiltValueNullFieldError.checkNotNull(
                  enabled, r'DnsServersOptionsModifyStructure', 'enabled'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customDnsServers';
        _customDnsServers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DnsServersOptionsModifyStructure', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
