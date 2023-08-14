// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_associated_enclave_certificate_iam_roles_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAssociatedEnclaveCertificateIamRolesRequest
    extends GetAssociatedEnclaveCertificateIamRolesRequest {
  @override
  final String? certificateArn;
  @override
  final bool dryRun;

  factory _$GetAssociatedEnclaveCertificateIamRolesRequest(
          [void Function(GetAssociatedEnclaveCertificateIamRolesRequestBuilder)?
              updates]) =>
      (new GetAssociatedEnclaveCertificateIamRolesRequestBuilder()
            ..update(updates))
          ._build();

  _$GetAssociatedEnclaveCertificateIamRolesRequest._(
      {this.certificateArn, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetAssociatedEnclaveCertificateIamRolesRequest', 'dryRun');
  }

  @override
  GetAssociatedEnclaveCertificateIamRolesRequest rebuild(
          void Function(GetAssociatedEnclaveCertificateIamRolesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAssociatedEnclaveCertificateIamRolesRequestBuilder toBuilder() =>
      new GetAssociatedEnclaveCertificateIamRolesRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAssociatedEnclaveCertificateIamRolesRequest &&
        certificateArn == other.certificateArn &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, certificateArn.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAssociatedEnclaveCertificateIamRolesRequestBuilder
    implements
        Builder<GetAssociatedEnclaveCertificateIamRolesRequest,
            GetAssociatedEnclaveCertificateIamRolesRequestBuilder> {
  _$GetAssociatedEnclaveCertificateIamRolesRequest? _$v;

  String? _certificateArn;
  String? get certificateArn => _$this._certificateArn;
  set certificateArn(String? certificateArn) =>
      _$this._certificateArn = certificateArn;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetAssociatedEnclaveCertificateIamRolesRequestBuilder() {
    GetAssociatedEnclaveCertificateIamRolesRequest._init(this);
  }

  GetAssociatedEnclaveCertificateIamRolesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _certificateArn = $v.certificateArn;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAssociatedEnclaveCertificateIamRolesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAssociatedEnclaveCertificateIamRolesRequest;
  }

  @override
  void update(
      void Function(GetAssociatedEnclaveCertificateIamRolesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAssociatedEnclaveCertificateIamRolesRequest build() => _build();

  _$GetAssociatedEnclaveCertificateIamRolesRequest _build() {
    final _$result = _$v ??
        new _$GetAssociatedEnclaveCertificateIamRolesRequest._(
            certificateArn: certificateArn,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'GetAssociatedEnclaveCertificateIamRolesRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
