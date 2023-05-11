// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.upload_signing_certificate_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadSigningCertificateResponse
    extends UploadSigningCertificateResponse {
  @override
  final _i2.SigningCertificate certificate;

  factory _$UploadSigningCertificateResponse(
          [void Function(UploadSigningCertificateResponseBuilder)? updates]) =>
      (new UploadSigningCertificateResponseBuilder()..update(updates))._build();

  _$UploadSigningCertificateResponse._({required this.certificate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        certificate, r'UploadSigningCertificateResponse', 'certificate');
  }

  @override
  UploadSigningCertificateResponse rebuild(
          void Function(UploadSigningCertificateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadSigningCertificateResponseBuilder toBuilder() =>
      new UploadSigningCertificateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadSigningCertificateResponse &&
        certificate == other.certificate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, certificate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UploadSigningCertificateResponseBuilder
    implements
        Builder<UploadSigningCertificateResponse,
            UploadSigningCertificateResponseBuilder> {
  _$UploadSigningCertificateResponse? _$v;

  _i2.SigningCertificateBuilder? _certificate;
  _i2.SigningCertificateBuilder get certificate =>
      _$this._certificate ??= new _i2.SigningCertificateBuilder();
  set certificate(_i2.SigningCertificateBuilder? certificate) =>
      _$this._certificate = certificate;

  UploadSigningCertificateResponseBuilder() {
    UploadSigningCertificateResponse._init(this);
  }

  UploadSigningCertificateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _certificate = $v.certificate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadSigningCertificateResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadSigningCertificateResponse;
  }

  @override
  void update(void Function(UploadSigningCertificateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadSigningCertificateResponse build() => _build();

  _$UploadSigningCertificateResponse _build() {
    _$UploadSigningCertificateResponse _$result;
    try {
      _$result = _$v ??
          new _$UploadSigningCertificateResponse._(
              certificate: certificate.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'certificate';
        certificate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UploadSigningCertificateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
