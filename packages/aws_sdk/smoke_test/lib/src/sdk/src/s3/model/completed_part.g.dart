// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.completed_part;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CompletedPart extends CompletedPart {
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;
  @override
  final String? eTag;
  @override
  final int? partNumber;

  factory _$CompletedPart([void Function(CompletedPartBuilder)? updates]) =>
      (new CompletedPartBuilder()..update(updates))._build();

  _$CompletedPart._(
      {this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.eTag,
      this.partNumber})
      : super._();

  @override
  CompletedPart rebuild(void Function(CompletedPartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompletedPartBuilder toBuilder() => new CompletedPartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompletedPart &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        eTag == other.eTag &&
        partNumber == other.partNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, checksumCrc32.hashCode);
    _$hash = $jc(_$hash, checksumCrc32C.hashCode);
    _$hash = $jc(_$hash, checksumSha1.hashCode);
    _$hash = $jc(_$hash, checksumSha256.hashCode);
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, partNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CompletedPartBuilder
    implements Builder<CompletedPart, CompletedPartBuilder> {
  _$CompletedPart? _$v;

  String? _checksumCrc32;
  String? get checksumCrc32 => _$this._checksumCrc32;
  set checksumCrc32(String? checksumCrc32) =>
      _$this._checksumCrc32 = checksumCrc32;

  String? _checksumCrc32C;
  String? get checksumCrc32C => _$this._checksumCrc32C;
  set checksumCrc32C(String? checksumCrc32C) =>
      _$this._checksumCrc32C = checksumCrc32C;

  String? _checksumSha1;
  String? get checksumSha1 => _$this._checksumSha1;
  set checksumSha1(String? checksumSha1) => _$this._checksumSha1 = checksumSha1;

  String? _checksumSha256;
  String? get checksumSha256 => _$this._checksumSha256;
  set checksumSha256(String? checksumSha256) =>
      _$this._checksumSha256 = checksumSha256;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  int? _partNumber;
  int? get partNumber => _$this._partNumber;
  set partNumber(int? partNumber) => _$this._partNumber = partNumber;

  CompletedPartBuilder() {
    CompletedPart._init(this);
  }

  CompletedPartBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _eTag = $v.eTag;
      _partNumber = $v.partNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompletedPart other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompletedPart;
  }

  @override
  void update(void Function(CompletedPartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompletedPart build() => _build();

  _$CompletedPart _build() {
    final _$result = _$v ??
        new _$CompletedPart._(
            checksumCrc32: checksumCrc32,
            checksumCrc32C: checksumCrc32C,
            checksumSha1: checksumSha1,
            checksumSha256: checksumSha256,
            eTag: eTag,
            partNumber: partNumber);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
