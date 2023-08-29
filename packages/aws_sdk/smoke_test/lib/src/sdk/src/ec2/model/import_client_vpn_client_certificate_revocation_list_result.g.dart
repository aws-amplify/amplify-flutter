// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_client_vpn_client_certificate_revocation_list_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportClientVpnClientCertificateRevocationListResult
    extends ImportClientVpnClientCertificateRevocationListResult {
  @override
  final bool return_;

  factory _$ImportClientVpnClientCertificateRevocationListResult(
          [void Function(
                  ImportClientVpnClientCertificateRevocationListResultBuilder)?
              updates]) =>
      (new ImportClientVpnClientCertificateRevocationListResultBuilder()
            ..update(updates))
          ._build();

  _$ImportClientVpnClientCertificateRevocationListResult._(
      {required this.return_})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(return_,
        r'ImportClientVpnClientCertificateRevocationListResult', 'return_');
  }

  @override
  ImportClientVpnClientCertificateRevocationListResult rebuild(
          void Function(
                  ImportClientVpnClientCertificateRevocationListResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportClientVpnClientCertificateRevocationListResultBuilder toBuilder() =>
      new ImportClientVpnClientCertificateRevocationListResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportClientVpnClientCertificateRevocationListResult &&
        return_ == other.return_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, return_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportClientVpnClientCertificateRevocationListResultBuilder
    implements
        Builder<ImportClientVpnClientCertificateRevocationListResult,
            ImportClientVpnClientCertificateRevocationListResultBuilder> {
  _$ImportClientVpnClientCertificateRevocationListResult? _$v;

  bool? _return_;
  bool? get return_ => _$this._return_;
  set return_(bool? return_) => _$this._return_ = return_;

  ImportClientVpnClientCertificateRevocationListResultBuilder() {
    ImportClientVpnClientCertificateRevocationListResult._init(this);
  }

  ImportClientVpnClientCertificateRevocationListResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _return_ = $v.return_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportClientVpnClientCertificateRevocationListResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportClientVpnClientCertificateRevocationListResult;
  }

  @override
  void update(
      void Function(
              ImportClientVpnClientCertificateRevocationListResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportClientVpnClientCertificateRevocationListResult build() => _build();

  _$ImportClientVpnClientCertificateRevocationListResult _build() {
    final _$result = _$v ??
        new _$ImportClientVpnClientCertificateRevocationListResult._(
            return_: BuiltValueNullFieldError.checkNotNull(
                return_,
                r'ImportClientVpnClientCertificateRevocationListResult',
                'return_'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
