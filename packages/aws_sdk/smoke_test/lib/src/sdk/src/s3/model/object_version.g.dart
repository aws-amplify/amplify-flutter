// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.object_version;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectVersion extends ObjectVersion {
  @override
  final _i6.BuiltList<_i2.ChecksumAlgorithm>? checksumAlgorithm;
  @override
  final String? eTag;
  @override
  final bool? isLatest;
  @override
  final String? key;
  @override
  final DateTime? lastModified;
  @override
  final _i3.Owner? owner;
  @override
  final _i4.Int64? size;
  @override
  final _i5.ObjectVersionStorageClass? storageClass;
  @override
  final String? versionId;

  factory _$ObjectVersion([void Function(ObjectVersionBuilder)? updates]) =>
      (new ObjectVersionBuilder()..update(updates))._build();

  _$ObjectVersion._(
      {this.checksumAlgorithm,
      this.eTag,
      this.isLatest,
      this.key,
      this.lastModified,
      this.owner,
      this.size,
      this.storageClass,
      this.versionId})
      : super._();

  @override
  ObjectVersion rebuild(void Function(ObjectVersionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectVersionBuilder toBuilder() => new ObjectVersionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectVersion &&
        checksumAlgorithm == other.checksumAlgorithm &&
        eTag == other.eTag &&
        isLatest == other.isLatest &&
        key == other.key &&
        lastModified == other.lastModified &&
        owner == other.owner &&
        size == other.size &&
        storageClass == other.storageClass &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, checksumAlgorithm.hashCode),
                                    eTag.hashCode),
                                isLatest.hashCode),
                            key.hashCode),
                        lastModified.hashCode),
                    owner.hashCode),
                size.hashCode),
            storageClass.hashCode),
        versionId.hashCode));
  }
}

class ObjectVersionBuilder
    implements Builder<ObjectVersion, ObjectVersionBuilder> {
  _$ObjectVersion? _$v;

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

  bool? _isLatest;
  bool? get isLatest => _$this._isLatest;
  set isLatest(bool? isLatest) => _$this._isLatest = isLatest;

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

  _i5.ObjectVersionStorageClass? _storageClass;
  _i5.ObjectVersionStorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i5.ObjectVersionStorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  ObjectVersionBuilder() {
    ObjectVersion._init(this);
  }

  ObjectVersionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksumAlgorithm = $v.checksumAlgorithm?.toBuilder();
      _eTag = $v.eTag;
      _isLatest = $v.isLatest;
      _key = $v.key;
      _lastModified = $v.lastModified;
      _owner = $v.owner?.toBuilder();
      _size = $v.size;
      _storageClass = $v.storageClass;
      _versionId = $v.versionId;
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
              checksumAlgorithm: _checksumAlgorithm?.build(),
              eTag: eTag,
              isLatest: isLatest,
              key: key,
              lastModified: lastModified,
              owner: _owner?.build(),
              size: size,
              storageClass: storageClass,
              versionId: versionId);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
