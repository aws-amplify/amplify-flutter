// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_ssh_public_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateSshPublicKeyRequest extends UpdateSshPublicKeyRequest {
  @override
  final String userName;
  @override
  final String sshPublicKeyId;
  @override
  final _i3.StatusType status;

  factory _$UpdateSshPublicKeyRequest(
          [void Function(UpdateSshPublicKeyRequestBuilder)? updates]) =>
      (new UpdateSshPublicKeyRequestBuilder()..update(updates))._build();

  _$UpdateSshPublicKeyRequest._(
      {required this.userName,
      required this.sshPublicKeyId,
      required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'UpdateSshPublicKeyRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        sshPublicKeyId, r'UpdateSshPublicKeyRequest', 'sshPublicKeyId');
    BuiltValueNullFieldError.checkNotNull(
        status, r'UpdateSshPublicKeyRequest', 'status');
  }

  @override
  UpdateSshPublicKeyRequest rebuild(
          void Function(UpdateSshPublicKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSshPublicKeyRequestBuilder toBuilder() =>
      new UpdateSshPublicKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSshPublicKeyRequest &&
        userName == other.userName &&
        sshPublicKeyId == other.sshPublicKeyId &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, sshPublicKeyId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateSshPublicKeyRequestBuilder
    implements
        Builder<UpdateSshPublicKeyRequest, UpdateSshPublicKeyRequestBuilder> {
  _$UpdateSshPublicKeyRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _sshPublicKeyId;
  String? get sshPublicKeyId => _$this._sshPublicKeyId;
  set sshPublicKeyId(String? sshPublicKeyId) =>
      _$this._sshPublicKeyId = sshPublicKeyId;

  _i3.StatusType? _status;
  _i3.StatusType? get status => _$this._status;
  set status(_i3.StatusType? status) => _$this._status = status;

  UpdateSshPublicKeyRequestBuilder() {
    UpdateSshPublicKeyRequest._init(this);
  }

  UpdateSshPublicKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _sshPublicKeyId = $v.sshPublicKeyId;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSshPublicKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSshPublicKeyRequest;
  }

  @override
  void update(void Function(UpdateSshPublicKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSshPublicKeyRequest build() => _build();

  _$UpdateSshPublicKeyRequest _build() {
    final _$result = _$v ??
        new _$UpdateSshPublicKeyRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'UpdateSshPublicKeyRequest', 'userName'),
            sshPublicKeyId: BuiltValueNullFieldError.checkNotNull(
                sshPublicKeyId, r'UpdateSshPublicKeyRequest', 'sshPublicKeyId'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'UpdateSshPublicKeyRequest', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
