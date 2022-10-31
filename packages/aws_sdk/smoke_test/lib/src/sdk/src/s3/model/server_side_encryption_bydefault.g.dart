// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.server_side_encryption_bydefault;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerSideEncryptionBydefault extends ServerSideEncryptionBydefault {
  @override
  final String? kmsMasterKeyId;
  @override
  final _i2.ServerSideEncryption sseAlgorithm;

  factory _$ServerSideEncryptionBydefault(
          [void Function(ServerSideEncryptionBydefaultBuilder)? updates]) =>
      (new ServerSideEncryptionBydefaultBuilder()..update(updates))._build();

  _$ServerSideEncryptionBydefault._(
      {this.kmsMasterKeyId, required this.sseAlgorithm})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        sseAlgorithm, r'ServerSideEncryptionBydefault', 'sseAlgorithm');
  }

  @override
  ServerSideEncryptionBydefault rebuild(
          void Function(ServerSideEncryptionBydefaultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerSideEncryptionBydefaultBuilder toBuilder() =>
      new ServerSideEncryptionBydefaultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerSideEncryptionBydefault &&
        kmsMasterKeyId == other.kmsMasterKeyId &&
        sseAlgorithm == other.sseAlgorithm;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, kmsMasterKeyId.hashCode), sseAlgorithm.hashCode));
  }
}

class ServerSideEncryptionBydefaultBuilder
    implements
        Builder<ServerSideEncryptionBydefault,
            ServerSideEncryptionBydefaultBuilder> {
  _$ServerSideEncryptionBydefault? _$v;

  String? _kmsMasterKeyId;
  String? get kmsMasterKeyId => _$this._kmsMasterKeyId;
  set kmsMasterKeyId(String? kmsMasterKeyId) =>
      _$this._kmsMasterKeyId = kmsMasterKeyId;

  _i2.ServerSideEncryption? _sseAlgorithm;
  _i2.ServerSideEncryption? get sseAlgorithm => _$this._sseAlgorithm;
  set sseAlgorithm(_i2.ServerSideEncryption? sseAlgorithm) =>
      _$this._sseAlgorithm = sseAlgorithm;

  ServerSideEncryptionBydefaultBuilder() {
    ServerSideEncryptionBydefault._init(this);
  }

  ServerSideEncryptionBydefaultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kmsMasterKeyId = $v.kmsMasterKeyId;
      _sseAlgorithm = $v.sseAlgorithm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerSideEncryptionBydefault other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServerSideEncryptionBydefault;
  }

  @override
  void update(void Function(ServerSideEncryptionBydefaultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServerSideEncryptionBydefault build() => _build();

  _$ServerSideEncryptionBydefault _build() {
    final _$result = _$v ??
        new _$ServerSideEncryptionBydefault._(
            kmsMasterKeyId: kmsMasterKeyId,
            sseAlgorithm: BuiltValueNullFieldError.checkNotNull(sseAlgorithm,
                r'ServerSideEncryptionBydefault', 'sseAlgorithm'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
