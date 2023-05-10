// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.upload_ssh_public_key_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadSshPublicKeyResponse extends UploadSshPublicKeyResponse {
  @override
  final _i2.SshPublicKey? sshPublicKey;

  factory _$UploadSshPublicKeyResponse(
          [void Function(UploadSshPublicKeyResponseBuilder)? updates]) =>
      (new UploadSshPublicKeyResponseBuilder()..update(updates))._build();

  _$UploadSshPublicKeyResponse._({this.sshPublicKey}) : super._();

  @override
  UploadSshPublicKeyResponse rebuild(
          void Function(UploadSshPublicKeyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadSshPublicKeyResponseBuilder toBuilder() =>
      new UploadSshPublicKeyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadSshPublicKeyResponse &&
        sshPublicKey == other.sshPublicKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sshPublicKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UploadSshPublicKeyResponseBuilder
    implements
        Builder<UploadSshPublicKeyResponse, UploadSshPublicKeyResponseBuilder> {
  _$UploadSshPublicKeyResponse? _$v;

  _i2.SshPublicKeyBuilder? _sshPublicKey;
  _i2.SshPublicKeyBuilder get sshPublicKey =>
      _$this._sshPublicKey ??= new _i2.SshPublicKeyBuilder();
  set sshPublicKey(_i2.SshPublicKeyBuilder? sshPublicKey) =>
      _$this._sshPublicKey = sshPublicKey;

  UploadSshPublicKeyResponseBuilder() {
    UploadSshPublicKeyResponse._init(this);
  }

  UploadSshPublicKeyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sshPublicKey = $v.sshPublicKey?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadSshPublicKeyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadSshPublicKeyResponse;
  }

  @override
  void update(void Function(UploadSshPublicKeyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadSshPublicKeyResponse build() => _build();

  _$UploadSshPublicKeyResponse _build() {
    _$UploadSshPublicKeyResponse _$result;
    try {
      _$result = _$v ??
          new _$UploadSshPublicKeyResponse._(
              sshPublicKey: _sshPublicKey?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sshPublicKey';
        _sshPublicKey?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UploadSshPublicKeyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
