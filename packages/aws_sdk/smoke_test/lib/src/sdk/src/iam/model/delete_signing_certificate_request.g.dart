// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_signing_certificate_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteSigningCertificateRequest
    extends DeleteSigningCertificateRequest {
  @override
  final String? userName;
  @override
  final String certificateId;

  factory _$DeleteSigningCertificateRequest(
          [void Function(DeleteSigningCertificateRequestBuilder)? updates]) =>
      (new DeleteSigningCertificateRequestBuilder()..update(updates))._build();

  _$DeleteSigningCertificateRequest._(
      {this.userName, required this.certificateId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        certificateId, r'DeleteSigningCertificateRequest', 'certificateId');
  }

  @override
  DeleteSigningCertificateRequest rebuild(
          void Function(DeleteSigningCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteSigningCertificateRequestBuilder toBuilder() =>
      new DeleteSigningCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteSigningCertificateRequest &&
        userName == other.userName &&
        certificateId == other.certificateId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, certificateId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteSigningCertificateRequestBuilder
    implements
        Builder<DeleteSigningCertificateRequest,
            DeleteSigningCertificateRequestBuilder> {
  _$DeleteSigningCertificateRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _certificateId;
  String? get certificateId => _$this._certificateId;
  set certificateId(String? certificateId) =>
      _$this._certificateId = certificateId;

  DeleteSigningCertificateRequestBuilder() {
    DeleteSigningCertificateRequest._init(this);
  }

  DeleteSigningCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _certificateId = $v.certificateId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteSigningCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteSigningCertificateRequest;
  }

  @override
  void update(void Function(DeleteSigningCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteSigningCertificateRequest build() => _build();

  _$DeleteSigningCertificateRequest _build() {
    final _$result = _$v ??
        new _$DeleteSigningCertificateRequest._(
            userName: userName,
            certificateId: BuiltValueNullFieldError.checkNotNull(certificateId,
                r'DeleteSigningCertificateRequest', 'certificateId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
