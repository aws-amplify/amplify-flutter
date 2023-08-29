// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_client_vpn_client_certificate_revocation_list_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportClientVpnClientCertificateRevocationListRequest
    extends ExportClientVpnClientCertificateRevocationListRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final bool dryRun;

  factory _$ExportClientVpnClientCertificateRevocationListRequest(
          [void Function(
                  ExportClientVpnClientCertificateRevocationListRequestBuilder)?
              updates]) =>
      (new ExportClientVpnClientCertificateRevocationListRequestBuilder()
            ..update(updates))
          ._build();

  _$ExportClientVpnClientCertificateRevocationListRequest._(
      {this.clientVpnEndpointId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'ExportClientVpnClientCertificateRevocationListRequest', 'dryRun');
  }

  @override
  ExportClientVpnClientCertificateRevocationListRequest rebuild(
          void Function(
                  ExportClientVpnClientCertificateRevocationListRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportClientVpnClientCertificateRevocationListRequestBuilder toBuilder() =>
      new ExportClientVpnClientCertificateRevocationListRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportClientVpnClientCertificateRevocationListRequest &&
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

class ExportClientVpnClientCertificateRevocationListRequestBuilder
    implements
        Builder<ExportClientVpnClientCertificateRevocationListRequest,
            ExportClientVpnClientCertificateRevocationListRequestBuilder> {
  _$ExportClientVpnClientCertificateRevocationListRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ExportClientVpnClientCertificateRevocationListRequestBuilder() {
    ExportClientVpnClientCertificateRevocationListRequest._init(this);
  }

  ExportClientVpnClientCertificateRevocationListRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportClientVpnClientCertificateRevocationListRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportClientVpnClientCertificateRevocationListRequest;
  }

  @override
  void update(
      void Function(
              ExportClientVpnClientCertificateRevocationListRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportClientVpnClientCertificateRevocationListRequest build() => _build();

  _$ExportClientVpnClientCertificateRevocationListRequest _build() {
    final _$result = _$v ??
        new _$ExportClientVpnClientCertificateRevocationListRequest._(
            clientVpnEndpointId: clientVpnEndpointId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun,
                r'ExportClientVpnClientCertificateRevocationListRequest',
                'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
