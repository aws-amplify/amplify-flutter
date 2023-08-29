// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_client_vpn_client_certificate_revocation_list_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportClientVpnClientCertificateRevocationListResult
    extends ExportClientVpnClientCertificateRevocationListResult {
  @override
  final String? certificateRevocationList;
  @override
  final ClientCertificateRevocationListStatus? status;

  factory _$ExportClientVpnClientCertificateRevocationListResult(
          [void Function(
                  ExportClientVpnClientCertificateRevocationListResultBuilder)?
              updates]) =>
      (new ExportClientVpnClientCertificateRevocationListResultBuilder()
            ..update(updates))
          ._build();

  _$ExportClientVpnClientCertificateRevocationListResult._(
      {this.certificateRevocationList, this.status})
      : super._();

  @override
  ExportClientVpnClientCertificateRevocationListResult rebuild(
          void Function(
                  ExportClientVpnClientCertificateRevocationListResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportClientVpnClientCertificateRevocationListResultBuilder toBuilder() =>
      new ExportClientVpnClientCertificateRevocationListResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportClientVpnClientCertificateRevocationListResult &&
        certificateRevocationList == other.certificateRevocationList &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, certificateRevocationList.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportClientVpnClientCertificateRevocationListResultBuilder
    implements
        Builder<ExportClientVpnClientCertificateRevocationListResult,
            ExportClientVpnClientCertificateRevocationListResultBuilder> {
  _$ExportClientVpnClientCertificateRevocationListResult? _$v;

  String? _certificateRevocationList;
  String? get certificateRevocationList => _$this._certificateRevocationList;
  set certificateRevocationList(String? certificateRevocationList) =>
      _$this._certificateRevocationList = certificateRevocationList;

  ClientCertificateRevocationListStatusBuilder? _status;
  ClientCertificateRevocationListStatusBuilder get status =>
      _$this._status ??= new ClientCertificateRevocationListStatusBuilder();
  set status(ClientCertificateRevocationListStatusBuilder? status) =>
      _$this._status = status;

  ExportClientVpnClientCertificateRevocationListResultBuilder();

  ExportClientVpnClientCertificateRevocationListResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _certificateRevocationList = $v.certificateRevocationList;
      _status = $v.status?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportClientVpnClientCertificateRevocationListResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportClientVpnClientCertificateRevocationListResult;
  }

  @override
  void update(
      void Function(
              ExportClientVpnClientCertificateRevocationListResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportClientVpnClientCertificateRevocationListResult build() => _build();

  _$ExportClientVpnClientCertificateRevocationListResult _build() {
    _$ExportClientVpnClientCertificateRevocationListResult _$result;
    try {
      _$result = _$v ??
          new _$ExportClientVpnClientCertificateRevocationListResult._(
              certificateRevocationList: certificateRevocationList,
              status: _status?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'status';
        _status?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExportClientVpnClientCertificateRevocationListResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
