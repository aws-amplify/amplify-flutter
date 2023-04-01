// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.object_version;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectVersion extends ObjectVersion {
  @override
  final String? eTag;
  @override
  final _i6.BuiltList<_i2.ChecksumAlgorithm>? checksumAlgorithm;
  @override
  final _i3.Int64 size;
  @override
  final _i4.ObjectVersionStorageClass? storageClass;
  @override
  final String? key;
  @override
  final String? versionId;
  @override
  final bool isLatest;
  @override
  final DateTime? lastModified;
  @override
  final _i5.Owner? owner;

  factory _$ObjectVersion([void Function(ObjectVersionBuilder)? updates]) =>
      (new ObjectVersionBuilder()..update(updates))._build();

  _$ObjectVersion._(
      {this.eTag,
      this.checksumAlgorithm,
      required this.size,
      this.storageClass,
      this.key,
      this.versionId,
      required this.isLatest,
      this.lastModified,
      this.owner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(size, r'ObjectVersion', 'size');
    BuiltValueNullFieldError.checkNotNull(
        isLatest, r'ObjectVersion', 'isLatest');
  }

  @override
  ObjectVersion rebuild(void Function(ObjectVersionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectVersionBuilder toBuilder() => new ObjectVersionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectVersion &&
        eTag == other.eTag &&
        checksumAlgorithm == other.checksumAlgorithm &&
        size == other.size &&
        storageClass == other.storageClass &&
        key == other.key &&
        versionId == other.versionId &&
        isLatest == other.isLatest &&
        lastModified == other.lastModified &&
        owner == other.owner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, isLatest.hashCode);
    _$hash = $jc(_$hash, lastModified.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ObjectVersionBuilder
    implements Builder<ObjectVersion, ObjectVersionBuilder> {
  _$ObjectVersion? _$v;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  _i6.ListBuilder<_i2.ChecksumAlgorithm>? _checksumAlgorithm;
  _i6.ListBuilder<_i2.ChecksumAlgorithm> get checksumAlgorithm =>
      _$this._checksumAlgorithm ??=
          new _i6.ListBuilder<_i2.ChecksumAlgorithm>();
  set checksumAlgorithm(
          _i6.ListBuilder<_i2.ChecksumAlgorithm>? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  _i3.Int64? _size;
  _i3.Int64? get size => _$this._size;
  set size(_i3.Int64? size) => _$this._size = size;

  _i4.ObjectVersionStorageClass? _storageClass;
  _i4.ObjectVersionStorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i4.ObjectVersionStorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  bool? _isLatest;
  bool? get isLatest => _$this._isLatest;
  set isLatest(bool? isLatest) => _$this._isLatest = isLatest;

  DateTime? _lastModified;
  DateTime? get lastModified => _$this._lastModified;
  set lastModified(DateTime? lastModified) =>
      _$this._lastModified = lastModified;

  _i5.OwnerBuilder? _owner;
  _i5.OwnerBuilder get owner => _$this._owner ??= new _i5.OwnerBuilder();
  set owner(_i5.OwnerBuilder? owner) => _$this._owner = owner;

  ObjectVersionBuilder() {
    ObjectVersion._init(this);
  }

  ObjectVersionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eTag = $v.eTag;
      _checksumAlgorithm = $v.checksumAlgorithm?.toBuilder();
      _size = $v.size;
      _storageClass = $v.storageClass;
      _key = $v.key;
      _versionId = $v.versionId;
      _isLatest = $v.isLatest;
      _lastModified = $v.lastModified;
      _owner = $v.owner?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectVersion other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectVersion;
  }

  @override
  void update(void Function(ObjectVersionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectVersion build() => _build();

  _$ObjectVersion _build() {
    _$ObjectVersion _$result;
    try {
      _$result = _$v ??
          new _$ObjectVersion._(
              eTag: eTag,
              checksumAlgorithm: _checksumAlgorithm?.build(),
              size: BuiltValueNullFieldError.checkNotNull(
                  size, r'ObjectVersion', 'size'),
              storageClass: storageClass,
              key: key,
              versionId: versionId,
              isLatest: BuiltValueNullFieldError.checkNotNull(
                  isLatest, r'ObjectVersion', 'isLatest'),
              lastModified: lastModified,
              owner: _owner?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checksumAlgorithm';
        _checksumAlgorithm?.build();

        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ObjectVersion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
