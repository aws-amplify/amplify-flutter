// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_ssh_public_key_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSshPublicKeyRequest extends GetSshPublicKeyRequest {
  @override
  final String userName;
  @override
  final String sshPublicKeyId;
  @override
  final _i3.EncodingType encoding;

  factory _$GetSshPublicKeyRequest(
          [void Function(GetSshPublicKeyRequestBuilder)? updates]) =>
      (new GetSshPublicKeyRequestBuilder()..update(updates))._build();

  _$GetSshPublicKeyRequest._(
      {required this.userName,
      required this.sshPublicKeyId,
      required this.encoding})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'GetSshPublicKeyRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        sshPublicKeyId, r'GetSshPublicKeyRequest', 'sshPublicKeyId');
    BuiltValueNullFieldError.checkNotNull(
        encoding, r'GetSshPublicKeyRequest', 'encoding');
  }

  @override
  GetSshPublicKeyRequest rebuild(
          void Function(GetSshPublicKeyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSshPublicKeyRequestBuilder toBuilder() =>
      new GetSshPublicKeyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSshPublicKeyRequest &&
        userName == other.userName &&
        sshPublicKeyId == other.sshPublicKeyId &&
        encoding == other.encoding;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, sshPublicKeyId.hashCode);
    _$hash = $jc(_$hash, encoding.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetSshPublicKeyRequestBuilder
    implements Builder<GetSshPublicKeyRequest, GetSshPublicKeyRequestBuilder> {
  _$GetSshPublicKeyRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _sshPublicKeyId;
  String? get sshPublicKeyId => _$this._sshPublicKeyId;
  set sshPublicKeyId(String? sshPublicKeyId) =>
      _$this._sshPublicKeyId = sshPublicKeyId;

  _i3.EncodingType? _encoding;
  _i3.EncodingType? get encoding => _$this._encoding;
  set encoding(_i3.EncodingType? encoding) => _$this._encoding = encoding;

  GetSshPublicKeyRequestBuilder() {
    GetSshPublicKeyRequest._init(this);
  }

  GetSshPublicKeyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _sshPublicKeyId = $v.sshPublicKeyId;
      _encoding = $v.encoding;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSshPublicKeyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSshPublicKeyRequest;
  }

  @override
  void update(void Function(GetSshPublicKeyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSshPublicKeyRequest build() => _build();

  _$GetSshPublicKeyRequest _build() {
    final _$result = _$v ??
        new _$GetSshPublicKeyRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'GetSshPublicKeyRequest', 'userName'),
            sshPublicKeyId: BuiltValueNullFieldError.checkNotNull(
                sshPublicKeyId, r'GetSshPublicKeyRequest', 'sshPublicKeyId'),
            encoding: BuiltValueNullFieldError.checkNotNull(
                encoding, r'GetSshPublicKeyRequest', 'encoding'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
