// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_signing_certificate_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateSigningCertificateRequest
    extends UpdateSigningCertificateRequest {
  @override
  final String? userName;
  @override
  final String certificateId;
  @override
  final _i3.StatusType status;

  factory _$UpdateSigningCertificateRequest(
          [void Function(UpdateSigningCertificateRequestBuilder)? updates]) =>
      (new UpdateSigningCertificateRequestBuilder()..update(updates))._build();

  _$UpdateSigningCertificateRequest._(
      {this.userName, required this.certificateId, required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        certificateId, r'UpdateSigningCertificateRequest', 'certificateId');
    BuiltValueNullFieldError.checkNotNull(
        status, r'UpdateSigningCertificateRequest', 'status');
  }

  @override
  UpdateSigningCertificateRequest rebuild(
          void Function(UpdateSigningCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSigningCertificateRequestBuilder toBuilder() =>
      new UpdateSigningCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSigningCertificateRequest &&
        userName == other.userName &&
        certificateId == other.certificateId &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, certificateId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateSigningCertificateRequestBuilder
    implements
        Builder<UpdateSigningCertificateRequest,
            UpdateSigningCertificateRequestBuilder> {
  _$UpdateSigningCertificateRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _certificateId;
  String? get certificateId => _$this._certificateId;
  set certificateId(String? certificateId) =>
      _$this._certificateId = certificateId;

  _i3.StatusType? _status;
  _i3.StatusType? get status => _$this._status;
  set status(_i3.StatusType? status) => _$this._status = status;

  UpdateSigningCertificateRequestBuilder() {
    UpdateSigningCertificateRequest._init(this);
  }

  UpdateSigningCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _certificateId = $v.certificateId;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSigningCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSigningCertificateRequest;
  }

  @override
  void update(void Function(UpdateSigningCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSigningCertificateRequest build() => _build();

  _$UpdateSigningCertificateRequest _build() {
    final _$result = _$v ??
        new _$UpdateSigningCertificateRequest._(
            userName: userName,
            certificateId: BuiltValueNullFieldError.checkNotNull(certificateId,
                r'UpdateSigningCertificateRequest', 'certificateId'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'UpdateSigningCertificateRequest', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
