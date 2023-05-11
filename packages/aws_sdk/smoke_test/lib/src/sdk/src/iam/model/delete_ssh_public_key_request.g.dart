// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_ssh_public_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteSshPublicKeyRequest extends DeleteSshPublicKeyRequest {
  @override
  final String userName;
  @override
  final String sshPublicKeyId;

  factory _$DeleteSshPublicKeyRequest(
          [void Function(DeleteSshPublicKeyRequestBuilder)? updates]) =>
      (new DeleteSshPublicKeyRequestBuilder()..update(updates))._build();

  _$DeleteSshPublicKeyRequest._(
      {required this.userName, required this.sshPublicKeyId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'DeleteSshPublicKeyRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        sshPublicKeyId, r'DeleteSshPublicKeyRequest', 'sshPublicKeyId');
  }

  @override
  DeleteSshPublicKeyRequest rebuild(
          void Function(DeleteSshPublicKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteSshPublicKeyRequestBuilder toBuilder() =>
      new DeleteSshPublicKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteSshPublicKeyRequest &&
        userName == other.userName &&
        sshPublicKeyId == other.sshPublicKeyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, sshPublicKeyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteSshPublicKeyRequestBuilder
    implements
        Builder<DeleteSshPublicKeyRequest, DeleteSshPublicKeyRequestBuilder> {
  _$DeleteSshPublicKeyRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _sshPublicKeyId;
  String? get sshPublicKeyId => _$this._sshPublicKeyId;
  set sshPublicKeyId(String? sshPublicKeyId) =>
      _$this._sshPublicKeyId = sshPublicKeyId;

  DeleteSshPublicKeyRequestBuilder() {
    DeleteSshPublicKeyRequest._init(this);
  }

  DeleteSshPublicKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _sshPublicKeyId = $v.sshPublicKeyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteSshPublicKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteSshPublicKeyRequest;
  }

  @override
  void update(void Function(DeleteSshPublicKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteSshPublicKeyRequest build() => _build();

  _$DeleteSshPublicKeyRequest _build() {
    final _$result = _$v ??
        new _$DeleteSshPublicKeyRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'DeleteSshPublicKeyRequest', 'userName'),
            sshPublicKeyId: BuiltValueNullFieldError.checkNotNull(
                sshPublicKeyId,
                r'DeleteSshPublicKeyRequest',
                'sshPublicKeyId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
