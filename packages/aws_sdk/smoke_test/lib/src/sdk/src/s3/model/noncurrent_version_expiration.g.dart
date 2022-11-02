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
    return $jf(
        $jc($jc(0, newerNoncurrentVersions.hashCode), noncurrentDays.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
