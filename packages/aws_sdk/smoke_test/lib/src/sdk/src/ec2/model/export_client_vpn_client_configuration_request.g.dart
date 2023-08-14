// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_client_vpn_client_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportClientVpnClientConfigurationRequest
    extends ExportClientVpnClientConfigurationRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final bool dryRun;

  factory _$ExportClientVpnClientConfigurationRequest(
          [void Function(ExportClientVpnClientConfigurationRequestBuilder)?
              updates]) =>
      (new ExportClientVpnClientConfigurationRequestBuilder()..update(updates))
          ._build();

  _$ExportClientVpnClientConfigurationRequest._(
      {this.clientVpnEndpointId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ExportClientVpnClientConfigurationRequest', 'dryRun');
  }

  @override
  ExportClientVpnClientConfigurationRequest rebuild(
          void Function(ExportClientVpnClientConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportClientVpnClientConfigurationRequestBuilder toBuilder() =>
      new ExportClientVpnClientConfigurationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportClientVpnClientConfigurationRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportClientVpnClientConfigurationRequestBuilder
    implements
        Builder<ExportClientVpnClientConfigurationRequest,
            ExportClientVpnClientConfigurationRequestBuilder> {
  _$ExportClientVpnClientConfigurationRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ExportClientVpnClientConfigurationRequestBuilder() {
    ExportClientVpnClientConfigurationRequest._init(this);
  }

  ExportClientVpnClientConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportClientVpnClientConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportClientVpnClientConfigurationRequest;
  }

  @override
  void update(
      void Function(ExportClientVpnClientConfigurationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportClientVpnClientConfigurationRequest build() => _build();

  _$ExportClientVpnClientConfigurationRequest _build() {
    final _$result = _$v ??
        new _$ExportClientVpnClientConfigurationRequest._(
            clientVpnEndpointId: clientVpnEndpointId,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'ExportClientVpnClientConfigurationRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
