// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.ssh_public_key_metadata;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SshPublicKeyMetadata extends SshPublicKeyMetadata {
  @override
  final String userName;
  @override
  final String sshPublicKeyId;
  @override
  final _i2.StatusType status;
  @override
  final DateTime uploadDate;

  factory _$SshPublicKeyMetadata(
          [void Function(SshPublicKeyMetadataBuilder)? updates]) =>
      (new SshPublicKeyMetadataBuilder()..update(updates))._build();

  _$SshPublicKeyMetadata._(
      {required this.userName,
      required this.sshPublicKeyId,
      required this.status,
      required this.uploadDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'SshPublicKeyMetadata', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        sshPublicKeyId, r'SshPublicKeyMetadata', 'sshPublicKeyId');
    BuiltValueNullFieldError.checkNotNull(
        status, r'SshPublicKeyMetadata', 'status');
    BuiltValueNullFieldError.checkNotNull(
        uploadDate, r'SshPublicKeyMetadata', 'uploadDate');
  }

  @override
  SshPublicKeyMetadata rebuild(
          void Function(SshPublicKeyMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SshPublicKeyMetadataBuilder toBuilder() =>
      new SshPublicKeyMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SshPublicKeyMetadata &&
        userName == other.userName &&
        sshPublicKeyId == other.sshPublicKeyId &&
        status == other.status &&
        uploadDate == other.uploadDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, sshPublicKeyId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, uploadDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SshPublicKeyMetadataBuilder
    implements Builder<SshPublicKeyMetadata, SshPublicKeyMetadataBuilder> {
  _$SshPublicKeyMetadata? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _sshPublicKeyId;
  String? get sshPublicKeyId => _$this._sshPublicKeyId;
  set sshPublicKeyId(String? sshPublicKeyId) =>
      _$this._sshPublicKeyId = sshPublicKeyId;

  _i2.StatusType? _status;
  _i2.StatusType? get status => _$this._status;
  set status(_i2.StatusType? status) => _$this._status = status;

  DateTime? _uploadDate;
  DateTime? get uploadDate => _$this._uploadDate;
  set uploadDate(DateTime? uploadDate) => _$this._uploadDate = uploadDate;

  SshPublicKeyMetadataBuilder() {
    SshPublicKeyMetadata._init(this);
  }

  SshPublicKeyMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _sshPublicKeyId = $v.sshPublicKeyId;
      _status = $v.status;
      _uploadDate = $v.uploadDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SshPublicKeyMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SshPublicKeyMetadata;
  }

  @override
  void update(void Function(SshPublicKeyMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SshPublicKeyMetadata build() => _build();

  _$SshPublicKeyMetadata _build() {
    final _$result = _$v ??
        new _$SshPublicKeyMetadata._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'SshPublicKeyMetadata', 'userName'),
            sshPublicKeyId: BuiltValueNullFieldError.checkNotNull(
                sshPublicKeyId, r'SshPublicKeyMetadata', 'sshPublicKeyId'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'SshPublicKeyMetadata', 'status'),
            uploadDate: BuiltValueNullFieldError.checkNotNull(
                uploadDate, r'SshPublicKeyMetadata', 'uploadDate'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
