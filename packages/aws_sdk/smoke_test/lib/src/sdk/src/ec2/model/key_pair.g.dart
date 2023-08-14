// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_pair.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KeyPair extends KeyPair {
  @override
  final String? keyFingerprint;
  @override
  final String? keyMaterial;
  @override
  final String? keyName;
  @override
  final String? keyPairId;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$KeyPair([void Function(KeyPairBuilder)? updates]) =>
      (new KeyPairBuilder()..update(updates))._build();

  _$KeyPair._(
      {this.keyFingerprint,
      this.keyMaterial,
      this.keyName,
      this.keyPairId,
      this.tags})
      : super._();

  @override
  KeyPair rebuild(void Function(KeyPairBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeyPairBuilder toBuilder() => new KeyPairBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeyPair &&
        keyFingerprint == other.keyFingerprint &&
        keyMaterial == other.keyMaterial &&
        keyName == other.keyName &&
        keyPairId == other.keyPairId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyFingerprint.hashCode);
    _$hash = $jc(_$hash, keyMaterial.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, keyPairId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class KeyPairBuilder implements Builder<KeyPair, KeyPairBuilder> {
  _$KeyPair? _$v;

  String? _keyFingerprint;
  String? get keyFingerprint => _$this._keyFingerprint;
  set keyFingerprint(String? keyFingerprint) =>
      _$this._keyFingerprint = keyFingerprint;

  String? _keyMaterial;
  String? get keyMaterial => _$this._keyMaterial;
  set keyMaterial(String? keyMaterial) => _$this._keyMaterial = keyMaterial;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  String? _keyPairId;
  String? get keyPairId => _$this._keyPairId;
  set keyPairId(String? keyPairId) => _$this._keyPairId = keyPairId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  KeyPairBuilder();

  KeyPairBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyFingerprint = $v.keyFingerprint;
      _keyMaterial = $v.keyMaterial;
      _keyName = $v.keyName;
      _keyPairId = $v.keyPairId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeyPair other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KeyPair;
  }

  @override
  void update(void Function(KeyPairBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeyPair build() => _build();

  _$KeyPair _build() {
    _$KeyPair _$result;
    try {
      _$result = _$v ??
          new _$KeyPair._(
              keyFingerprint: keyFingerprint,
              keyMaterial: keyMaterial,
              keyName: keyName,
              keyPairId: keyPairId,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'KeyPair', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
