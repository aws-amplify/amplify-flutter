// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.checksum;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Checksum extends Checksum {
  @override
  final String? checksumCrc32;
  @override
  final String? checksumCrc32C;
  @override
  final String? checksumSha1;
  @override
  final String? checksumSha256;

  factory _$Checksum([void Function(ChecksumBuilder)? updates]) =>
      (new ChecksumBuilder()..update(updates))._build();

  _$Checksum._(
      {this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256})
      : super._();

  @override
  Checksum rebuild(void Function(ChecksumBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChecksumBuilder toBuilder() => new ChecksumBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Checksum &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, checksumCrc32.hashCode), checksumCrc32C.hashCode),
            checksumSha1.hashCode),
        checksumSha256.hashCode));
  }
}

class ChecksumBuilder implements Builder<Checksum, ChecksumBuilder> {
  _$Checksum? _$v;

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

  ChecksumBuilder() {
    Checksum._init(this);
  }

  ChecksumBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Checksum other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Checksum;
  }

  @override
  void update(void Function(ChecksumBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Checksum build() => _build();

  _$Checksum _build() {
    final _$result = _$v ??
        new _$Checksum._(
            checksumCrc32: checksumCrc32,
            checksumCrc32C: checksumCrc32C,
            checksumSha1: checksumSha1,
            checksumSha256: checksumSha256);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
