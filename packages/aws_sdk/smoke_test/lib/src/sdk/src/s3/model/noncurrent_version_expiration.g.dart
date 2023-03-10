// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.noncurrent_version_expiration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoncurrentVersionExpiration extends NoncurrentVersionExpiration {
  @override
  final int? newerNoncurrentVersions;
  @override
  final int? noncurrentDays;

  factory _$NoncurrentVersionExpiration(
          [void Function(NoncurrentVersionExpirationBuilder)? updates]) =>
      (new NoncurrentVersionExpirationBuilder()..update(updates))._build();

  _$NoncurrentVersionExpiration._(
      {this.newerNoncurrentVersions, this.noncurrentDays})
      : super._();

  @override
  NoncurrentVersionExpiration rebuild(
          void Function(NoncurrentVersionExpirationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoncurrentVersionExpirationBuilder toBuilder() =>
      new NoncurrentVersionExpirationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoncurrentVersionExpiration &&
        newerNoncurrentVersions == other.newerNoncurrentVersions &&
        noncurrentDays == other.noncurrentDays;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newerNoncurrentVersions.hashCode);
    _$hash = $jc(_$hash, noncurrentDays.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NoncurrentVersionExpirationBuilder
    implements
        Builder<NoncurrentVersionExpiration,
            NoncurrentVersionExpirationBuilder> {
  _$NoncurrentVersionExpiration? _$v;

  int? _newerNoncurrentVersions;
  int? get newerNoncurrentVersions => _$this._newerNoncurrentVersions;
  set newerNoncurrentVersions(int? newerNoncurrentVersions) =>
      _$this._newerNoncurrentVersions = newerNoncurrentVersions;

  int? _noncurrentDays;
  int? get noncurrentDays => _$this._noncurrentDays;
  set noncurrentDays(int? noncurrentDays) =>
      _$this._noncurrentDays = noncurrentDays;

  NoncurrentVersionExpirationBuilder() {
    NoncurrentVersionExpiration._init(this);
  }

  NoncurrentVersionExpirationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newerNoncurrentVersions = $v.newerNoncurrentVersions;
      _noncurrentDays = $v.noncurrentDays;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoncurrentVersionExpiration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoncurrentVersionExpiration;
  }

  @override
  void update(void Function(NoncurrentVersionExpirationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoncurrentVersionExpiration build() => _build();

  _$NoncurrentVersionExpiration _build() {
    final _$result = _$v ??
        new _$NoncurrentVersionExpiration._(
            newerNoncurrentVersions: newerNoncurrentVersions,
            noncurrentDays: noncurrentDays);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
