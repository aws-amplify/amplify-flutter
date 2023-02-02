// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.noncurrent_version_transition;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoncurrentVersionTransition extends NoncurrentVersionTransition {
  @override
  final int? newerNoncurrentVersions;
  @override
  final int? noncurrentDays;
  @override
  final _i2.TransitionStorageClass? storageClass;

  factory _$NoncurrentVersionTransition(
          [void Function(NoncurrentVersionTransitionBuilder)? updates]) =>
      (new NoncurrentVersionTransitionBuilder()..update(updates))._build();

  _$NoncurrentVersionTransition._(
      {this.newerNoncurrentVersions, this.noncurrentDays, this.storageClass})
      : super._();

  @override
  NoncurrentVersionTransition rebuild(
          void Function(NoncurrentVersionTransitionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoncurrentVersionTransitionBuilder toBuilder() =>
      new NoncurrentVersionTransitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoncurrentVersionTransition &&
        newerNoncurrentVersions == other.newerNoncurrentVersions &&
        noncurrentDays == other.noncurrentDays &&
        storageClass == other.storageClass;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newerNoncurrentVersions.hashCode);
    _$hash = $jc(_$hash, noncurrentDays.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NoncurrentVersionTransitionBuilder
    implements
        Builder<NoncurrentVersionTransition,
            NoncurrentVersionTransitionBuilder> {
  _$NoncurrentVersionTransition? _$v;

  int? _newerNoncurrentVersions;
  int? get newerNoncurrentVersions => _$this._newerNoncurrentVersions;
  set newerNoncurrentVersions(int? newerNoncurrentVersions) =>
      _$this._newerNoncurrentVersions = newerNoncurrentVersions;

  int? _noncurrentDays;
  int? get noncurrentDays => _$this._noncurrentDays;
  set noncurrentDays(int? noncurrentDays) =>
      _$this._noncurrentDays = noncurrentDays;

  _i2.TransitionStorageClass? _storageClass;
  _i2.TransitionStorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i2.TransitionStorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  NoncurrentVersionTransitionBuilder() {
    NoncurrentVersionTransition._init(this);
  }

  NoncurrentVersionTransitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newerNoncurrentVersions = $v.newerNoncurrentVersions;
      _noncurrentDays = $v.noncurrentDays;
      _storageClass = $v.storageClass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NoncurrentVersionTransition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoncurrentVersionTransition;
  }

  @override
  void update(void Function(NoncurrentVersionTransitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoncurrentVersionTransition build() => _build();

  _$NoncurrentVersionTransition _build() {
    final _$result = _$v ??
        new _$NoncurrentVersionTransition._(
            newerNoncurrentVersions: newerNoncurrentVersions,
            noncurrentDays: noncurrentDays,
            storageClass: storageClass);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
