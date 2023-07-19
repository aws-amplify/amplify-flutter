// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_marker_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteMarkerEntry extends DeleteMarkerEntry {
  @override
  final _i2.Owner? owner;
  @override
  final String? key;
  @override
  final String? versionId;
  @override
  final bool? isLatest;
  @override
  final DateTime? lastModified;

  factory _$DeleteMarkerEntry(
          [void Function(DeleteMarkerEntryBuilder)? updates]) =>
      (new DeleteMarkerEntryBuilder()..update(updates))._build();

  _$DeleteMarkerEntry._(
      {this.owner, this.key, this.versionId, this.isLatest, this.lastModified})
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
        owner == other.owner &&
        key == other.key &&
        versionId == other.versionId &&
        isLatest == other.isLatest &&
        lastModified == other.lastModified;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, owner.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jc(_$hash, isLatest.hashCode);
    _$hash = $jc(_$hash, lastModified.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteMarkerEntryBuilder
    implements Builder<DeleteMarkerEntry, DeleteMarkerEntryBuilder> {
  _$DeleteMarkerEntry? _$v;

  _i2.OwnerBuilder? _owner;
  _i2.OwnerBuilder get owner => _$this._owner ??= new _i2.OwnerBuilder();
  set owner(_i2.OwnerBuilder? owner) => _$this._owner = owner;

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

  DeleteMarkerEntryBuilder();

  DeleteMarkerEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _owner = $v.owner?.toBuilder();
      _key = $v.key;
      _versionId = $v.versionId;
      _isLatest = $v.isLatest;
      _lastModified = $v.lastModified;
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
              owner: _owner?.build(),
              key: key,
              versionId: versionId,
              isLatest: isLatest,
              lastModified: lastModified);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
