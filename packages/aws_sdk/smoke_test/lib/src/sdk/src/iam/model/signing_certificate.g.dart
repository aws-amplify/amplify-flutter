// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.signing_certificate;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SigningCertificate extends SigningCertificate {
  @override
  final String userName;
  @override
  final String certificateId;
  @override
  final String certificateBody;
  @override
  final _i2.StatusType status;
  @override
  final DateTime? uploadDate;

  factory _$SigningCertificate(
          [void Function(SigningCertificateBuilder)? updates]) =>
      (new SigningCertificateBuilder()..update(updates))._build();

  _$SigningCertificate._(
      {required this.userName,
      required this.certificateId,
      required this.certificateBody,
      required this.status,
      this.uploadDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'SigningCertificate', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        certificateId, r'SigningCertificate', 'certificateId');
    BuiltValueNullFieldError.checkNotNull(
        certificateBody, r'SigningCertificate', 'certificateBody');
    BuiltValueNullFieldError.checkNotNull(
        status, r'SigningCertificate', 'status');
  }

  @override
  SigningCertificate rebuild(
          void Function(SigningCertificateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SigningCertificateBuilder toBuilder() =>
      new SigningCertificateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SigningCertificate &&
        userName == other.userName &&
        certificateId == other.certificateId &&
        certificateBody == other.certificateBody &&
        status == other.status &&
        uploadDate == other.uploadDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, certificateId.hashCode);
    _$hash = $jc(_$hash, certificateBody.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, uploadDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SigningCertificateBuilder
    implements Builder<SigningCertificate, SigningCertificateBuilder> {
  _$SigningCertificate? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _certificateId;
  String? get certificateId => _$this._certificateId;
  set certificateId(String? certificateId) =>
      _$this._certificateId = certificateId;

  String? _certificateBody;
  String? get certificateBody => _$this._certificateBody;
  set certificateBody(String? certificateBody) =>
      _$this._certificateBody = certificateBody;

  _i2.StatusType? _status;
  _i2.StatusType? get status => _$this._status;
  set status(_i2.StatusType? status) => _$this._status = status;

  DateTime? _uploadDate;
  DateTime? get uploadDate => _$this._uploadDate;
  set uploadDate(DateTime? uploadDate) => _$this._uploadDate = uploadDate;

  SigningCertificateBuilder() {
    SigningCertificate._init(this);
  }

  SigningCertificateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _certificateId = $v.certificateId;
      _certificateBody = $v.certificateBody;
      _status = $v.status;
      _uploadDate = $v.uploadDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SigningCertificate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SigningCertificate;
  }

  @override
  void update(void Function(SigningCertificateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SigningCertificate build() => _build();

  _$SigningCertificate _build() {
    final _$result = _$v ??
        new _$SigningCertificate._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'SigningCertificate', 'userName'),
            certificateId: BuiltValueNullFieldError.checkNotNull(
                certificateId, r'SigningCertificate', 'certificateId'),
            certificateBody: BuiltValueNullFieldError.checkNotNull(
                certificateBody, r'SigningCertificate', 'certificateBody'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'SigningCertificate', 'status'),
            uploadDate: uploadDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
