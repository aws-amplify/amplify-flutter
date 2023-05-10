// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_ssh_public_key_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSshPublicKeyResponse extends GetSshPublicKeyResponse {
  @override
  final _i2.SshPublicKey? sshPublicKey;

  factory _$GetSshPublicKeyResponse(
          [void Function(GetSshPublicKeyResponseBuilder)? updates]) =>
      (new GetSshPublicKeyResponseBuilder()..update(updates))._build();

  _$GetSshPublicKeyResponse._({this.sshPublicKey}) : super._();

  @override
  GetSshPublicKeyResponse rebuild(
          void Function(GetSshPublicKeyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSshPublicKeyResponseBuilder toBuilder() =>
      new GetSshPublicKeyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSshPublicKeyResponse &&
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

class GetSshPublicKeyResponseBuilder
    implements
        Builder<GetSshPublicKeyResponse, GetSshPublicKeyResponseBuilder> {
  _$GetSshPublicKeyResponse? _$v;

  _i2.SshPublicKeyBuilder? _sshPublicKey;
  _i2.SshPublicKeyBuilder get sshPublicKey =>
      _$this._sshPublicKey ??= new _i2.SshPublicKeyBuilder();
  set sshPublicKey(_i2.SshPublicKeyBuilder? sshPublicKey) =>
      _$this._sshPublicKey = sshPublicKey;

  GetSshPublicKeyResponseBuilder() {
    GetSshPublicKeyResponse._init(this);
  }

  GetSshPublicKeyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sshPublicKey = $v.sshPublicKey?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSshPublicKeyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSshPublicKeyResponse;
  }

  @override
  void update(void Function(GetSshPublicKeyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSshPublicKeyResponse build() => _build();

  _$GetSshPublicKeyResponse _build() {
    _$GetSshPublicKeyResponse _$result;
    try {
      _$result = _$v ??
          new _$GetSshPublicKeyResponse._(sshPublicKey: _sshPublicKey?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sshPublicKey';
        _sshPublicKey?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetSshPublicKeyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
