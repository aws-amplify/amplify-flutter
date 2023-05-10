// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.upload_ssh_public_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadSshPublicKeyRequest extends UploadSshPublicKeyRequest {
  @override
  final String userName;
  @override
  final String sshPublicKeyBody;

  factory _$UploadSshPublicKeyRequest(
          [void Function(UploadSshPublicKeyRequestBuilder)? updates]) =>
      (new UploadSshPublicKeyRequestBuilder()..update(updates))._build();

  _$UploadSshPublicKeyRequest._(
      {required this.userName, required this.sshPublicKeyBody})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'UploadSshPublicKeyRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        sshPublicKeyBody, r'UploadSshPublicKeyRequest', 'sshPublicKeyBody');
  }

  @override
  UploadSshPublicKeyRequest rebuild(
          void Function(UploadSshPublicKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadSshPublicKeyRequestBuilder toBuilder() =>
      new UploadSshPublicKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadSshPublicKeyRequest &&
        userName == other.userName &&
        sshPublicKeyBody == other.sshPublicKeyBody;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, sshPublicKeyBody.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UploadSshPublicKeyRequestBuilder
    implements
        Builder<UploadSshPublicKeyRequest, UploadSshPublicKeyRequestBuilder> {
  _$UploadSshPublicKeyRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _sshPublicKeyBody;
  String? get sshPublicKeyBody => _$this._sshPublicKeyBody;
  set sshPublicKeyBody(String? sshPublicKeyBody) =>
      _$this._sshPublicKeyBody = sshPublicKeyBody;

  UploadSshPublicKeyRequestBuilder() {
    UploadSshPublicKeyRequest._init(this);
  }

  UploadSshPublicKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _sshPublicKeyBody = $v.sshPublicKeyBody;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadSshPublicKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadSshPublicKeyRequest;
  }

  @override
  void update(void Function(UploadSshPublicKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadSshPublicKeyRequest build() => _build();

  _$UploadSshPublicKeyRequest _build() {
    final _$result = _$v ??
        new _$UploadSshPublicKeyRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'UploadSshPublicKeyRequest', 'userName'),
            sshPublicKeyBody: BuiltValueNullFieldError.checkNotNull(
                sshPublicKeyBody,
                r'UploadSshPublicKeyRequest',
                'sshPublicKeyBody'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
