// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.encryption;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Encryption extends Encryption {
  @override
  final _i2.ServerSideEncryption encryptionType;
  @override
  final String? kmsKeyId;
  @override
  final String? kmsContext;

  factory _$Encryption([void Function(EncryptionBuilder)? updates]) =>
      (new EncryptionBuilder()..update(updates))._build();

  _$Encryption._({required this.encryptionType, this.kmsKeyId, this.kmsContext})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        encryptionType, r'Encryption', 'encryptionType');
  }

  @override
  Encryption rebuild(void Function(EncryptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EncryptionBuilder toBuilder() => new EncryptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Encryption &&
        encryptionType == other.encryptionType &&
        kmsKeyId == other.kmsKeyId &&
        kmsContext == other.kmsContext;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, encryptionType.hashCode);
    _$hash = $jc(_$hash, kmsKeyId.hashCode);
    _$hash = $jc(_$hash, kmsContext.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EncryptionBuilder implements Builder<Encryption, EncryptionBuilder> {
  _$Encryption? _$v;

  _i2.ServerSideEncryption? _encryptionType;
  _i2.ServerSideEncryption? get encryptionType => _$this._encryptionType;
  set encryptionType(_i2.ServerSideEncryption? encryptionType) =>
      _$this._encryptionType = encryptionType;

  String? _kmsKeyId;
  String? get kmsKeyId => _$this._kmsKeyId;
  set kmsKeyId(String? kmsKeyId) => _$this._kmsKeyId = kmsKeyId;

  String? _kmsContext;
  String? get kmsContext => _$this._kmsContext;
  set kmsContext(String? kmsContext) => _$this._kmsContext = kmsContext;

  EncryptionBuilder() {
    Encryption._init(this);
  }

  EncryptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _encryptionType = $v.encryptionType;
      _kmsKeyId = $v.kmsKeyId;
      _kmsContext = $v.kmsContext;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Encryption other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Encryption;
  }

  @override
  void update(void Function(EncryptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Encryption build() => _build();

  _$Encryption _build() {
    final _$result = _$v ??
        new _$Encryption._(
            encryptionType: BuiltValueNullFieldError.checkNotNull(
                encryptionType, r'Encryption', 'encryptionType'),
            kmsKeyId: kmsKeyId,
            kmsContext: kmsContext);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
