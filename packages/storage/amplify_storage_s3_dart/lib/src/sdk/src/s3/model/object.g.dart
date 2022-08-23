// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.object;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$S3Object extends S3Object {
  @override
  final _i2.BuiltList<_i3.ChecksumAlgorithm>? checksumAlgorithm;
  @override
  final String? eTag;
  @override
  final String? key;
  @override
  final DateTime? lastModified;
  @override
  final _i4.Owner? owner;
  @override
  final _i5.Int64? size;
  @override
  final _i6.ObjectStorageClass? storageClass;

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
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, checksumAlgorithm.hashCode), eTag.hashCode),
                        key.hashCode),
                    lastModified.hashCode),
                owner.hashCode),
            size.hashCode),
        storageClass.hashCode));
  }
}

class S3ObjectBuilder implements Builder<S3Object, S3ObjectBuilder> {
  _$S3Object? _$v;

  _i2.ListBuilder<_i3.ChecksumAlgorithm>? _checksumAlgorithm;
  _i2.ListBuilder<_i3.ChecksumAlgorithm> get checksumAlgorithm =>
      _$this._checksumAlgorithm ??=
          new _i2.ListBuilder<_i3.ChecksumAlgorithm>();
  set checksumAlgorithm(
          _i2.ListBuilder<_i3.ChecksumAlgorithm>? checksumAlgorithm) =>
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

  _i4.OwnerBuilder? _owner;
  _i4.OwnerBuilder get owner => _$this._owner ??= new _i4.OwnerBuilder();
  set owner(_i4.OwnerBuilder? owner) => _$this._owner = owner;

  _i5.Int64? _size;
  _i5.Int64? get size => _$this._size;
  set size(_i5.Int64? size) => _$this._size = size;

  _i6.ObjectStorageClass? _storageClass;
  _i6.ObjectStorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i6.ObjectStorageClass? storageClass) =>
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
