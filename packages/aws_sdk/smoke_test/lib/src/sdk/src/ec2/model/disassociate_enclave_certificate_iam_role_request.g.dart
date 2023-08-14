// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disassociate_enclave_certificate_iam_role_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisassociateEnclaveCertificateIamRoleRequest
    extends DisassociateEnclaveCertificateIamRoleRequest {
  @override
  final String? certificateArn;
  @override
  final String? roleArn;
  @override
  final bool dryRun;

  factory _$DisassociateEnclaveCertificateIamRoleRequest(
          [void Function(DisassociateEnclaveCertificateIamRoleRequestBuilder)?
              updates]) =>
      (new DisassociateEnclaveCertificateIamRoleRequestBuilder()
            ..update(updates))
          ._build();

  _$DisassociateEnclaveCertificateIamRoleRequest._(
      {this.certificateArn, this.roleArn, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisassociateEnclaveCertificateIamRoleRequest', 'dryRun');
  }

  @override
  DisassociateEnclaveCertificateIamRoleRequest rebuild(
          void Function(DisassociateEnclaveCertificateIamRoleRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisassociateEnclaveCertificateIamRoleRequestBuilder toBuilder() =>
      new DisassociateEnclaveCertificateIamRoleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisassociateEnclaveCertificateIamRoleRequest &&
        certificateArn == other.certificateArn &&
        roleArn == other.roleArn &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, certificateArn.hashCode);
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisassociateEnclaveCertificateIamRoleRequestBuilder
    implements
        Builder<DisassociateEnclaveCertificateIamRoleRequest,
            DisassociateEnclaveCertificateIamRoleRequestBuilder> {
  _$DisassociateEnclaveCertificateIamRoleRequest? _$v;

  String? _certificateArn;
  String? get certificateArn => _$this._certificateArn;
  set certificateArn(String? certificateArn) =>
      _$this._certificateArn = certificateArn;

  String? _roleArn;
  String? get roleArn => _$this._roleArn;
  set roleArn(String? roleArn) => _$this._roleArn = roleArn;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DisassociateEnclaveCertificateIamRoleRequestBuilder() {
    DisassociateEnclaveCertificateIamRoleRequest._init(this);
  }

  DisassociateEnclaveCertificateIamRoleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _certificateArn = $v.certificateArn;
      _roleArn = $v.roleArn;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisassociateEnclaveCertificateIamRoleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisassociateEnclaveCertificateIamRoleRequest;
  }

  @override
  void update(
      void Function(DisassociateEnclaveCertificateIamRoleRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisassociateEnclaveCertificateIamRoleRequest build() => _build();

  _$DisassociateEnclaveCertificateIamRoleRequest _build() {
    final _$result = _$v ??
        new _$DisassociateEnclaveCertificateIamRoleRequest._(
            certificateArn: certificateArn,
            roleArn: roleArn,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'DisassociateEnclaveCertificateIamRoleRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
