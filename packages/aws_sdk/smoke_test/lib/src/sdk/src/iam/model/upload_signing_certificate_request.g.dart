// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.upload_signing_certificate_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadSigningCertificateRequest
    extends UploadSigningCertificateRequest {
  @override
  final String? userName;
  @override
  final String certificateBody;

  factory _$UploadSigningCertificateRequest(
          [void Function(UploadSigningCertificateRequestBuilder)? updates]) =>
      (new UploadSigningCertificateRequestBuilder()..update(updates))._build();

  _$UploadSigningCertificateRequest._(
      {this.userName, required this.certificateBody})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        certificateBody, r'UploadSigningCertificateRequest', 'certificateBody');
  }

  @override
  UploadSigningCertificateRequest rebuild(
          void Function(UploadSigningCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadSigningCertificateRequestBuilder toBuilder() =>
      new UploadSigningCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadSigningCertificateRequest &&
        userName == other.userName &&
        certificateBody == other.certificateBody;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, certificateBody.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UploadSigningCertificateRequestBuilder
    implements
        Builder<UploadSigningCertificateRequest,
            UploadSigningCertificateRequestBuilder> {
  _$UploadSigningCertificateRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _certificateBody;
  String? get certificateBody => _$this._certificateBody;
  set certificateBody(String? certificateBody) =>
      _$this._certificateBody = certificateBody;

  UploadSigningCertificateRequestBuilder() {
    UploadSigningCertificateRequest._init(this);
  }

  UploadSigningCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _certificateBody = $v.certificateBody;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadSigningCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadSigningCertificateRequest;
  }

  @override
  void update(void Function(UploadSigningCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadSigningCertificateRequest build() => _build();

  _$UploadSigningCertificateRequest _build() {
    final _$result = _$v ??
        new _$UploadSigningCertificateRequest._(
            userName: userName,
            certificateBody: BuiltValueNullFieldError.checkNotNull(
                certificateBody,
                r'UploadSigningCertificateRequest',
                'certificateBody'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
