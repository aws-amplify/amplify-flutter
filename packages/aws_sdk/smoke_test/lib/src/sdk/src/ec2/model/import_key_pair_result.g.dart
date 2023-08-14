// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_key_pair_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportKeyPairResult extends ImportKeyPairResult {
  @override
  final String? keyFingerprint;
  @override
  final String? keyName;
  @override
  final String? keyPairId;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$ImportKeyPairResult(
          [void Function(ImportKeyPairResultBuilder)? updates]) =>
      (new ImportKeyPairResultBuilder()..update(updates))._build();

  _$ImportKeyPairResult._(
      {this.keyFingerprint, this.keyName, this.keyPairId, this.tags})
      : super._();

  @override
  ImportKeyPairResult rebuild(
          void Function(ImportKeyPairResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportKeyPairResultBuilder toBuilder() =>
      new ImportKeyPairResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportKeyPairResult &&
        keyFingerprint == other.keyFingerprint &&
        keyName == other.keyName &&
        keyPairId == other.keyPairId &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, keyFingerprint.hashCode);
    _$hash = $jc(_$hash, keyName.hashCode);
    _$hash = $jc(_$hash, keyPairId.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportKeyPairResultBuilder
    implements Builder<ImportKeyPairResult, ImportKeyPairResultBuilder> {
  _$ImportKeyPairResult? _$v;

  String? _keyFingerprint;
  String? get keyFingerprint => _$this._keyFingerprint;
  set keyFingerprint(String? keyFingerprint) =>
      _$this._keyFingerprint = keyFingerprint;

  String? _keyName;
  String? get keyName => _$this._keyName;
  set keyName(String? keyName) => _$this._keyName = keyName;

  String? _keyPairId;
  String? get keyPairId => _$this._keyPairId;
  set keyPairId(String? keyPairId) => _$this._keyPairId = keyPairId;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  ImportKeyPairResultBuilder();

  ImportKeyPairResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _keyFingerprint = $v.keyFingerprint;
      _keyName = $v.keyName;
      _keyPairId = $v.keyPairId;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportKeyPairResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportKeyPairResult;
  }

  @override
  void update(void Function(ImportKeyPairResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportKeyPairResult build() => _build();

  _$ImportKeyPairResult _build() {
    _$ImportKeyPairResult _$result;
    try {
      _$result = _$v ??
          new _$ImportKeyPairResult._(
              keyFingerprint: keyFingerprint,
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
            r'ImportKeyPairResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
