// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_enclave_certificate_iam_role_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateEnclaveCertificateIamRoleRequest
    extends AssociateEnclaveCertificateIamRoleRequest {
  @override
  final String? certificateArn;
  @override
  final String? roleArn;
  @override
  final bool dryRun;

  factory _$AssociateEnclaveCertificateIamRoleRequest(
          [void Function(AssociateEnclaveCertificateIamRoleRequestBuilder)?
              updates]) =>
      (new AssociateEnclaveCertificateIamRoleRequestBuilder()..update(updates))
          ._build();

  _$AssociateEnclaveCertificateIamRoleRequest._(
      {this.certificateArn, this.roleArn, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AssociateEnclaveCertificateIamRoleRequest', 'dryRun');
  }

  @override
  AssociateEnclaveCertificateIamRoleRequest rebuild(
          void Function(AssociateEnclaveCertificateIamRoleRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateEnclaveCertificateIamRoleRequestBuilder toBuilder() =>
      new AssociateEnclaveCertificateIamRoleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateEnclaveCertificateIamRoleRequest &&
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

class AssociateEnclaveCertificateIamRoleRequestBuilder
    implements
        Builder<AssociateEnclaveCertificateIamRoleRequest,
            AssociateEnclaveCertificateIamRoleRequestBuilder> {
  _$AssociateEnclaveCertificateIamRoleRequest? _$v;

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

  AssociateEnclaveCertificateIamRoleRequestBuilder() {
    AssociateEnclaveCertificateIamRoleRequest._init(this);
  }

  AssociateEnclaveCertificateIamRoleRequestBuilder get _$this {
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
  void replace(AssociateEnclaveCertificateIamRoleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateEnclaveCertificateIamRoleRequest;
  }

  @override
  void update(
      void Function(AssociateEnclaveCertificateIamRoleRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateEnclaveCertificateIamRoleRequest build() => _build();

  _$AssociateEnclaveCertificateIamRoleRequest _build() {
    final _$result = _$v ??
        new _$AssociateEnclaveCertificateIamRoleRequest._(
            certificateArn: certificateArn,
            roleArn: roleArn,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'AssociateEnclaveCertificateIamRoleRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
