// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'part.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Part extends Part {
  @override
  final int? partNumber;
  @override
  final DateTime? lastModified;
  @override
  final String? eTag;
  @override
  final _i2.Int64? size;
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;

  factory _$Part([void Function(PartBuilder)? updates]) =>
      (new PartBuilder()..update(updates))._build();

  _$Part._(
      {this.partNumber,
      this.lastModified,
      this.eTag,
      this.size,
      this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256})
      : super._();

  @override
  Part rebuild(void Function(PartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PartBuilder toBuilder() => new PartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Part &&
        partNumber == other.partNumber &&
        lastModified == other.lastModified &&
        eTag == other.eTag &&
        size == other.size &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, partNumber.hashCode);
    _$hash = $jc(_$hash, lastModified.hashCode);
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, checksumCrc32.hashCode);
    _$hash = $jc(_$hash, checksumCrc32C.hashCode);
    _$hash = $jc(_$hash, checksumSha1.hashCode);
    _$hash = $jc(_$hash, checksumSha256.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PartBuilder implements Builder<Part, PartBuilder> {
  _$Part? _$v;

  int? _partNumber;
  int? get partNumber => _$this._partNumber;
  set partNumber(int? partNumber) => _$this._partNumber = partNumber;

  DateTime? _lastModified;
  DateTime? get lastModified => _$this._lastModified;
  set lastModified(DateTime? lastModified) =>
      _$this._lastModified = lastModified;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  _i2.Int64? _size;
  _i2.Int64? get size => _$this._size;
  set size(_i2.Int64? size) => _$this._size = size;

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

  PartBuilder();

  PartBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _partNumber = $v.partNumber;
      _lastModified = $v.lastModified;
      _eTag = $v.eTag;
      _size = $v.size;
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Part other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Part;
  }

  @override
  void update(void Function(PartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Part build() => _build();

  _$Part _build() {
    final _$result = _$v ??
        new _$Part._(
            partNumber: partNumber,
            lastModified: lastModified,
            eTag: eTag,
            size: size,
            checksumCrc32: checksumCrc32,
            checksumCrc32C: checksumCrc32C,
            checksumSha1: checksumSha1,
            checksumSha256: checksumSha256);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
