// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.object;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3Object extends S3Object {
  @override
  final _i6.BuiltList<_i2.ChecksumAlgorithm>? checksumAlgorithm;
  @override
  final String? eTag;
  @override
  final String? key;
  @override
  final DateTime? lastModified;
  @override
  final _i3.Owner? owner;
  @override
  final _i4.Int64? size;
  @override
  final _i5.ObjectStorageClass? storageClass;

  factory _$S3Object([void Function(S3ObjectBuilder)? updates]) =>
      (new S3ObjectBuilder()..update(updates))._build();

  _$S3Object._(
      {this.checksumAlgorithm,
      this.eTag,
      this.key,
      this.lastModified,
      this.owner,
      this.size,
      this.storageClass})
      : super._();

  @override
  S3Object rebuild(void Function(S3ObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  S3ObjectBuilder toBuilder() => new S3ObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is S3Object &&
        checksumAlgorithm == other.checksumAlgorithm &&
        eTag == other.eTag &&
        key == other.key &&
        lastModified == other.lastModified &&
        owner == other.owner &&
        size == other.size &&
        storageClass == other.storageClass;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, lastModified.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class S3ObjectBuilder implements Builder<S3Object, S3ObjectBuilder> {
  _$S3Object? _$v;

  _i6.ListBuilder<_i2.ChecksumAlgorithm>? _checksumAlgorithm;
  _i6.ListBuilder<_i2.ChecksumAlgorithm> get checksumAlgorithm =>
      _$this._checksumAlgorithm ??=
          new _i6.ListBuilder<_i2.ChecksumAlgorithm>();
  set checksumAlgorithm(
          _i6.ListBuilder<_i2.ChecksumAlgorithm>? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  DateTime? _lastModified;
  DateTime? get lastModified => _$this._lastModified;
  set lastModified(DateTime? lastModified) =>
      _$this._lastModified = lastModified;

  _i3.OwnerBuilder? _owner;
  _i3.OwnerBuilder get owner => _$this._owner ??= new _i3.OwnerBuilder();
  set owner(_i3.OwnerBuilder? owner) => _$this._owner = owner;

  _i4.Int64? _size;
  _i4.Int64? get size => _$this._size;
  set size(_i4.Int64? size) => _$this._size = size;

  _i5.ObjectStorageClass? _storageClass;
  _i5.ObjectStorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i5.ObjectStorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  S3ObjectBuilder() {
    S3Object._init(this);
  }

  S3ObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksumAlgorithm = $v.checksumAlgorithm?.toBuilder();
      _eTag = $v.eTag;
      _key = $v.key;
      _lastModified = $v.lastModified;
      _owner = $v.owner?.toBuilder();
      _size = $v.size;
      _storageClass = $v.storageClass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(S3Object other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$S3Object;
  }

  @override
  void update(void Function(S3ObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  S3Object build() => _build();

  _$S3Object _build() {
    _$S3Object _$result;
    try {
      _$result = _$v ??
          new _$S3Object._(
              checksumAlgorithm: _checksumAlgorithm?.build(),
              eTag: eTag,
              key: key,
              lastModified: lastModified,
              owner: _owner?.build(),
              size: size,
              storageClass: storageClass);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checksumAlgorithm';
        _checksumAlgorithm?.build();

        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'S3Object', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
