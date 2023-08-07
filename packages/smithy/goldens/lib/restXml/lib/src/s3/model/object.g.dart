// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3Object extends S3Object {
  @override
  final String? key;
  @override
  final DateTime? lastModified;
  @override
  final String? eTag;
  @override
  final int? size;
  @override
  final ObjectStorageClass? storageClass;
  @override
  final Owner? owner;

  factory _$S3Object([void Function(S3ObjectBuilder)? updates]) =>
      (new S3ObjectBuilder()..update(updates))._build();

  _$S3Object._(
      {this.key,
      this.lastModified,
      this.eTag,
      this.size,
      this.storageClass,
      this.owner})
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
        key == other.key &&
        lastModified == other.lastModified &&
        eTag == other.eTag &&
        size == other.size &&
        storageClass == other.storageClass &&
        owner == other.owner;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, lastModified.hashCode);
    _$hash = $jc(_$hash, eTag.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, storageClass.hashCode);
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class S3ObjectBuilder implements Builder<S3Object, S3ObjectBuilder> {
  _$S3Object? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  DateTime? _lastModified;
  DateTime? get lastModified => _$this._lastModified;
  set lastModified(DateTime? lastModified) =>
      _$this._lastModified = lastModified;

  String? _eTag;
  String? get eTag => _$this._eTag;
  set eTag(String? eTag) => _$this._eTag = eTag;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  ObjectStorageClass? _storageClass;
  ObjectStorageClass? get storageClass => _$this._storageClass;
  set storageClass(ObjectStorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  OwnerBuilder? _owner;
  OwnerBuilder get owner => _$this._owner ??= new OwnerBuilder();
  set owner(OwnerBuilder? owner) => _$this._owner = owner;

  S3ObjectBuilder();

  S3ObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _lastModified = $v.lastModified;
      _eTag = $v.eTag;
      _size = $v.size;
      _storageClass = $v.storageClass;
      _owner = $v.owner?.toBuilder();
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
              key: key,
              lastModified: lastModified,
              eTag: eTag,
              size: size,
              storageClass: storageClass,
              owner: _owner?.build());
    } catch (_) {
      late String _$failedField;
      try {
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
