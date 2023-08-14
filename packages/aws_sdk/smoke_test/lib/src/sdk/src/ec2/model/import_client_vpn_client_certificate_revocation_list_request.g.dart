// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_client_vpn_client_certificate_revocation_list_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportClientVpnClientCertificateRevocationListRequest
    extends ImportClientVpnClientCertificateRevocationListRequest {
  @override
  final String? clientVpnEndpointId;
  @override
  final String? certificateRevocationList;
  @override
  final bool dryRun;

  factory _$ImportClientVpnClientCertificateRevocationListRequest(
          [void Function(
                  ImportClientVpnClientCertificateRevocationListRequestBuilder)?
              updates]) =>
      (new ImportClientVpnClientCertificateRevocationListRequestBuilder()
            ..update(updates))
          ._build();

  _$ImportClientVpnClientCertificateRevocationListRequest._(
      {this.clientVpnEndpointId,
      this.certificateRevocationList,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'ImportClientVpnClientCertificateRevocationListRequest', 'dryRun');
  }

  @override
  ImportClientVpnClientCertificateRevocationListRequest rebuild(
          void Function(
                  ImportClientVpnClientCertificateRevocationListRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportClientVpnClientCertificateRevocationListRequestBuilder toBuilder() =>
      new ImportClientVpnClientCertificateRevocationListRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportClientVpnClientCertificateRevocationListRequest &&
        clientVpnEndpointId == other.clientVpnEndpointId &&
        certificateRevocationList == other.certificateRevocationList &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientVpnEndpointId.hashCode);
    _$hash = $jc(_$hash, certificateRevocationList.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportClientVpnClientCertificateRevocationListRequestBuilder
    implements
        Builder<ImportClientVpnClientCertificateRevocationListRequest,
            ImportClientVpnClientCertificateRevocationListRequestBuilder> {
  _$ImportClientVpnClientCertificateRevocationListRequest? _$v;

  String? _clientVpnEndpointId;
  String? get clientVpnEndpointId => _$this._clientVpnEndpointId;
  set clientVpnEndpointId(String? clientVpnEndpointId) =>
      _$this._clientVpnEndpointId = clientVpnEndpointId;

  String? _certificateRevocationList;
  String? get certificateRevocationList => _$this._certificateRevocationList;
  set certificateRevocationList(String? certificateRevocationList) =>
      _$this._certificateRevocationList = certificateRevocationList;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ImportClientVpnClientCertificateRevocationListRequestBuilder() {
    ImportClientVpnClientCertificateRevocationListRequest._init(this);
  }

  ImportClientVpnClientCertificateRevocationListRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientVpnEndpointId = $v.clientVpnEndpointId;
      _certificateRevocationList = $v.certificateRevocationList;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportClientVpnClientCertificateRevocationListRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportClientVpnClientCertificateRevocationListRequest;
  }

  @override
  void update(
      void Function(
              ImportClientVpnClientCertificateRevocationListRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportClientVpnClientCertificateRevocationListRequest build() => _build();

  _$ImportClientVpnClientCertificateRevocationListRequest _build() {
    final _$result = _$v ??
        new _$ImportClientVpnClientCertificateRevocationListRequest._(
            clientVpnEndpointId: clientVpnEndpointId,
            certificateRevocationList: certificateRevocationList,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun,
                r'ImportClientVpnClientCertificateRevocationListRequest',
                'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
