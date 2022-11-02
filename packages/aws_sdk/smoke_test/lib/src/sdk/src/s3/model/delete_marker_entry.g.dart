// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.delete_marker_entry;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteMarkerEntry extends DeleteMarkerEntry {
  @override
  final bool? isLatest;
  @override
  final String? key;
  @override
  final DateTime? lastModified;
  @override
  final _i2.Owner? owner;
  @override
  final String? versionId;

  factory _$DeleteMarkerEntry(
          [void Function(DeleteMarkerEntryBuilder)? updates]) =>
      (new DeleteMarkerEntryBuilder()..update(updates))._build();

  _$DeleteMarkerEntry._(
      {this.isLatest, this.key, this.lastModified, this.owner, this.versionId})
      : super._();

  @override
  DeleteMarkerEntry rebuild(void Function(DeleteMarkerEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteMarkerEntryBuilder toBuilder() =>
      new DeleteMarkerEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteMarkerEntry &&
        isLatest == other.isLatest &&
        key == other.key &&
        lastModified == other.lastModified &&
        owner == other.owner &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, isLatest.hashCode), key.hashCode),
                lastModified.hashCode),
            owner.hashCode),
        versionId.hashCode));
  }
}

class DeleteMarkerEntryBuilder
    implements Builder<DeleteMarkerEntry, DeleteMarkerEntryBuilder> {
  _$DeleteMarkerEntry? _$v;

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

  _i2.OwnerBuilder? _owner;
  _i2.OwnerBuilder get owner => _$this._owner ??= new _i2.OwnerBuilder();
  set owner(_i2.OwnerBuilder? owner) => _$this._owner = owner;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  DeleteMarkerEntryBuilder() {
    DeleteMarkerEntry._init(this);
  }

  DeleteMarkerEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLatest = $v.isLatest;
      _key = $v.key;
      _lastModified = $v.lastModified;
      _owner = $v.owner?.toBuilder();
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteMarkerEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteMarkerEntry;
  }

  @override
  void update(void Function(DeleteMarkerEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteMarkerEntry build() => _build();

  _$DeleteMarkerEntry _build() {
    _$DeleteMarkerEntry _$result;
    try {
      _$result = _$v ??
          new _$DeleteMarkerEntry._(
              isLatest: isLatest,
              key: key,
              lastModified: lastModified,
              owner: _owner?.build(),
              versionId: versionId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteMarkerEntry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
