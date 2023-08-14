// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_pair_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeyPairInfo extends KeyPairInfo {
  @override
  final String? keyPairId;
  @override
  final String? keyFingerprint;
  @override
  final String? keyName;
  @override
  final KeyType? keyType;
  @override
  final _i2.BuiltList<Tag>? tags;
  @override
  final String? publicKey;
  @override
  final DateTime? createTime;

  factory _$KeyPairInfo([void Function(KeyPairInfoBuilder)? updates]) =>
      (new KeyPairInfoBuilder()..update(updates))._build();

  _$KeyPairInfo._(
      {this.keyPairId,
      this.keyFingerprint,
      this.keyName,
      this.keyType,
      this.tags,
      this.publicKey,
      this.createTime})
      : super._();

  @override
  KeyPairInfo rebuild(void Function(KeyPairInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeyPairInfoBuilder toBuilder() => new KeyPairInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeyPairInfo &&
        keyPairId == other.keyPairId &&
        keyFingerprint == other.keyFingerprint &&
        keyName == other.keyName &&
        keyType == other.keyType &&
        tags == other.tags &&
        publicKey == other.publicKey &&
        createTime == other.createTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyPairId.hashCode);
    _$hash = $jc(_$hash, keyFingerprint.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, keyType.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, publicKey.hashCode);
    _$hash = $jc(_$hash, createTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class KeyPairInfoBuilder implements Builder<KeyPairInfo, KeyPairInfoBuilder> {
  _$KeyPairInfo? _$v;

  String? _keyPairId;
  String? get keyPairId => _$this._keyPairId;
  set keyPairId(String? keyPairId) => _$this._keyPairId = keyPairId;

  String? _keyFingerprint;
  String? get keyFingerprint => _$this._keyFingerprint;
  set keyFingerprint(String? keyFingerprint) =>
      _$this._keyFingerprint = keyFingerprint;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  KeyType? _keyType;
  KeyType? get keyType => _$this._keyType;
  set keyType(KeyType? keyType) => _$this._keyType = keyType;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  String? _publicKey;
  String? get publicKey => _$this._publicKey;
  set publicKey(String? publicKey) => _$this._publicKey = publicKey;

  DateTime? _createTime;
  DateTime? get createTime => _$this._createTime;
  set createTime(DateTime? createTime) => _$this._createTime = createTime;

  KeyPairInfoBuilder();

  KeyPairInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyPairId = $v.keyPairId;
      _keyFingerprint = $v.keyFingerprint;
      _keyName = $v.keyName;
      _keyType = $v.keyType;
      _tags = $v.tags?.toBuilder();
      _publicKey = $v.publicKey;
      _createTime = $v.createTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeyPairInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KeyPairInfo;
  }

  @override
  void update(void Function(KeyPairInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeyPairInfo build() => _build();

  _$KeyPairInfo _build() {
    _$KeyPairInfo _$result;
    try {
      _$result = _$v ??
          new _$KeyPairInfo._(
              keyPairId: keyPairId,
              keyFingerprint: keyFingerprint,
              keyName: keyName,
              keyType: keyType,
              tags: _tags?.build(),
              publicKey: publicKey,
              createTime: createTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'KeyPairInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
