// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.ssh_public_key;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SshPublicKey extends SshPublicKey {
  @override
  final String userName;
  @override
  final String sshPublicKeyId;
  @override
  final String fingerprint;
  @override
  final String sshPublicKeyBody;
  @override
  final _i2.StatusType status;
  @override
  final DateTime? uploadDate;

  factory _$SshPublicKey([void Function(SshPublicKeyBuilder)? updates]) =>
      (new SshPublicKeyBuilder()..update(updates))._build();

  _$SshPublicKey._(
      {required this.userName,
      required this.sshPublicKeyId,
      required this.fingerprint,
      required this.sshPublicKeyBody,
      required this.status,
      this.uploadDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'SshPublicKey', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        sshPublicKeyId, r'SshPublicKey', 'sshPublicKeyId');
    BuiltValueNullFieldError.checkNotNull(
        fingerprint, r'SshPublicKey', 'fingerprint');
    BuiltValueNullFieldError.checkNotNull(
        sshPublicKeyBody, r'SshPublicKey', 'sshPublicKeyBody');
    BuiltValueNullFieldError.checkNotNull(status, r'SshPublicKey', 'status');
  }

  @override
  SshPublicKey rebuild(void Function(SshPublicKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SshPublicKeyBuilder toBuilder() => new SshPublicKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SshPublicKey &&
        userName == other.userName &&
        sshPublicKeyId == other.sshPublicKeyId &&
        fingerprint == other.fingerprint &&
        sshPublicKeyBody == other.sshPublicKeyBody &&
        status == other.status &&
        uploadDate == other.uploadDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, sshPublicKeyId.hashCode);
    _$hash = $jc(_$hash, fingerprint.hashCode);
    _$hash = $jc(_$hash, sshPublicKeyBody.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, uploadDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SshPublicKeyBuilder
    implements Builder<SshPublicKey, SshPublicKeyBuilder> {
  _$SshPublicKey? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _sshPublicKeyId;
  String? get sshPublicKeyId => _$this._sshPublicKeyId;
  set sshPublicKeyId(String? sshPublicKeyId) =>
      _$this._sshPublicKeyId = sshPublicKeyId;

  String? _fingerprint;
  String? get fingerprint => _$this._fingerprint;
  set fingerprint(String? fingerprint) => _$this._fingerprint = fingerprint;

  String? _sshPublicKeyBody;
  String? get sshPublicKeyBody => _$this._sshPublicKeyBody;
  set sshPublicKeyBody(String? sshPublicKeyBody) =>
      _$this._sshPublicKeyBody = sshPublicKeyBody;

  _i2.StatusType? _status;
  _i2.StatusType? get status => _$this._status;
  set status(_i2.StatusType? status) => _$this._status = status;

  DateTime? _uploadDate;
  DateTime? get uploadDate => _$this._uploadDate;
  set uploadDate(DateTime? uploadDate) => _$this._uploadDate = uploadDate;

  SshPublicKeyBuilder() {
    SshPublicKey._init(this);
  }

  SshPublicKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _sshPublicKeyId = $v.sshPublicKeyId;
      _fingerprint = $v.fingerprint;
      _sshPublicKeyBody = $v.sshPublicKeyBody;
      _status = $v.status;
      _uploadDate = $v.uploadDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SshPublicKey other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SshPublicKey;
  }

  @override
  void update(void Function(SshPublicKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SshPublicKey build() => _build();

  _$SshPublicKey _build() {
    final _$result = _$v ??
        new _$SshPublicKey._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'SshPublicKey', 'userName'),
            sshPublicKeyId: BuiltValueNullFieldError.checkNotNull(
                sshPublicKeyId, r'SshPublicKey', 'sshPublicKeyId'),
            fingerprint: BuiltValueNullFieldError.checkNotNull(
                fingerprint, r'SshPublicKey', 'fingerprint'),
            sshPublicKeyBody: BuiltValueNullFieldError.checkNotNull(
                sshPublicKeyBody, r'SshPublicKey', 'sshPublicKeyBody'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'SshPublicKey', 'status'),
            uploadDate: uploadDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
