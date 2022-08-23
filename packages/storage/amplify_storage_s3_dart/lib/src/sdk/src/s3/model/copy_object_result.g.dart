// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.copy_object_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CopyObjectResult extends CopyObjectResult {
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
  final DateTime? lastModified;

  factory _$CopyObjectResult(
          [void Function(CopyObjectResultBuilder)? updates]) =>
      (new CopyObjectResultBuilder()..update(updates))._build();

  _$CopyObjectResult._(
      {this.checksumCrc32,
      this.checksumCrc32C,
      this.checksumSha1,
      this.checksumSha256,
      this.eTag,
      this.lastModified})
      : super._();

  @override
  CopyObjectResult rebuild(void Function(CopyObjectResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CopyObjectResultBuilder toBuilder() =>
      new CopyObjectResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CopyObjectResult &&
        checksumCrc32 == other.checksumCrc32 &&
        checksumCrc32C == other.checksumCrc32C &&
        checksumSha1 == other.checksumSha1 &&
        checksumSha256 == other.checksumSha256 &&
        eTag == other.eTag &&
        lastModified == other.lastModified;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, checksumCrc32.hashCode),
                        checksumCrc32C.hashCode),
                    checksumSha1.hashCode),
                checksumSha256.hashCode),
            eTag.hashCode),
        lastModified.hashCode));
  }
}

class CopyObjectResultBuilder
    implements Builder<CopyObjectResult, CopyObjectResultBuilder> {
  _$CopyObjectResult? _$v;

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

  DateTime? _lastModified;
  DateTime? get lastModified => _$this._lastModified;
  set lastModified(DateTime? lastModified) =>
      _$this._lastModified = lastModified;

  CopyObjectResultBuilder() {
    CopyObjectResult._init(this);
  }

  CopyObjectResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksumCrc32 = $v.checksumCrc32;
      _checksumCrc32C = $v.checksumCrc32C;
      _checksumSha1 = $v.checksumSha1;
      _checksumSha256 = $v.checksumSha256;
      _eTag = $v.eTag;
      _lastModified = $v.lastModified;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CopyObjectResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CopyObjectResult;
  }

  @override
  void update(void Function(CopyObjectResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CopyObjectResult build() => _build();

  _$CopyObjectResult _build() {
    final _$result = _$v ??
        new _$CopyObjectResult._(
            checksumCrc32: checksumCrc32,
            checksumCrc32C: checksumCrc32C,
            checksumSha1: checksumSha1,
            checksumSha256: checksumSha256,
            eTag: eTag,
            lastModified: lastModified);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
