// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_client_vpn_client_configuration_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportClientVpnClientConfigurationResult
    extends ExportClientVpnClientConfigurationResult {
  @override
  final String? clientConfiguration;

  factory _$ExportClientVpnClientConfigurationResult(
          [void Function(ExportClientVpnClientConfigurationResultBuilder)?
              updates]) =>
      (new ExportClientVpnClientConfigurationResultBuilder()..update(updates))
          ._build();

  _$ExportClientVpnClientConfigurationResult._({this.clientConfiguration})
      : super._();

  @override
  ExportClientVpnClientConfigurationResult rebuild(
          void Function(ExportClientVpnClientConfigurationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportClientVpnClientConfigurationResultBuilder toBuilder() =>
      new ExportClientVpnClientConfigurationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportClientVpnClientConfigurationResult &&
        clientConfiguration == other.clientConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportClientVpnClientConfigurationResultBuilder
    implements
        Builder<ExportClientVpnClientConfigurationResult,
            ExportClientVpnClientConfigurationResultBuilder> {
  _$ExportClientVpnClientConfigurationResult? _$v;

  String? _clientConfiguration;
  String? get clientConfiguration => _$this._clientConfiguration;
  set clientConfiguration(String? clientConfiguration) =>
      _$this._clientConfiguration = clientConfiguration;

  ExportClientVpnClientConfigurationResultBuilder();

  ExportClientVpnClientConfigurationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientConfiguration = $v.clientConfiguration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportClientVpnClientConfigurationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportClientVpnClientConfigurationResult;
  }

  @override
  void update(
      void Function(ExportClientVpnClientConfigurationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportClientVpnClientConfigurationResult build() => _build();

  _$ExportClientVpnClientConfigurationResult _build() {
    final _$result = _$v ??
        new _$ExportClientVpnClientConfigurationResult._(
            clientConfiguration: clientConfiguration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
