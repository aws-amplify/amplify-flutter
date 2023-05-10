// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.server_side_encryption_by_default;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerSideEncryptionByDefault extends ServerSideEncryptionByDefault {
  @override
  final _i2.ServerSideEncryption sseAlgorithm;
  @override
  final String? kmsMasterKeyId;

  factory _$ServerSideEncryptionByDefault(
          [void Function(ServerSideEncryptionByDefaultBuilder)? updates]) =>
      (new ServerSideEncryptionByDefaultBuilder()..update(updates))._build();

  _$ServerSideEncryptionByDefault._(
      {required this.sseAlgorithm, this.kmsMasterKeyId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sseAlgorithm, r'ServerSideEncryptionByDefault', 'sseAlgorithm');
  }

  @override
  ServerSideEncryptionByDefault rebuild(
          void Function(ServerSideEncryptionByDefaultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerSideEncryptionByDefaultBuilder toBuilder() =>
      new ServerSideEncryptionByDefaultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerSideEncryptionByDefault &&
        sseAlgorithm == other.sseAlgorithm &&
        kmsMasterKeyId == other.kmsMasterKeyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sseAlgorithm.hashCode);
    _$hash = $jc(_$hash, kmsMasterKeyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServerSideEncryptionByDefaultBuilder
    implements
        Builder<ServerSideEncryptionByDefault,
            ServerSideEncryptionByDefaultBuilder> {
  _$ServerSideEncryptionByDefault? _$v;

  _i2.ServerSideEncryption? _sseAlgorithm;
  _i2.ServerSideEncryption? get sseAlgorithm => _$this._sseAlgorithm;
  set sseAlgorithm(_i2.ServerSideEncryption? sseAlgorithm) =>
      _$this._sseAlgorithm = sseAlgorithm;

  String? _kmsMasterKeyId;
  String? get kmsMasterKeyId => _$this._kmsMasterKeyId;
  set kmsMasterKeyId(String? kmsMasterKeyId) =>
      _$this._kmsMasterKeyId = kmsMasterKeyId;

  ServerSideEncryptionByDefaultBuilder() {
    ServerSideEncryptionByDefault._init(this);
  }

  ServerSideEncryptionByDefaultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sseAlgorithm = $v.sseAlgorithm;
      _kmsMasterKeyId = $v.kmsMasterKeyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerSideEncryptionByDefault other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServerSideEncryptionByDefault;
  }

  @override
  void update(void Function(ServerSideEncryptionByDefaultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServerSideEncryptionByDefault build() => _build();

  _$ServerSideEncryptionByDefault _build() {
    final _$result = _$v ??
        new _$ServerSideEncryptionByDefault._(
            sseAlgorithm: BuiltValueNullFieldError.checkNotNull(
                sseAlgorithm, r'ServerSideEncryptionByDefault', 'sseAlgorithm'),
            kmsMasterKeyId: kmsMasterKeyId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
