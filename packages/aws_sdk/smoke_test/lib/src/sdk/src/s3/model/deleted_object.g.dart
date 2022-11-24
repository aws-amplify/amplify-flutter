// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.deleted_object;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeletedObject extends DeletedObject {
  @override
  final bool? deleteMarker;
  @override
  final String? deleteMarkerVersionId;
  @override
  final String? key;
  @override
  final String? versionId;

  factory _$DeletedObject([void Function(DeletedObjectBuilder)? updates]) =>
      (new DeletedObjectBuilder()..update(updates))._build();

  _$DeletedObject._(
      {this.deleteMarker, this.deleteMarkerVersionId, this.key, this.versionId})
      : super._();

  @override
  DeletedObject rebuild(void Function(DeletedObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeletedObjectBuilder toBuilder() => new DeletedObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeletedObject &&
        deleteMarker == other.deleteMarker &&
        deleteMarkerVersionId == other.deleteMarkerVersionId &&
        key == other.key &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, deleteMarker.hashCode), deleteMarkerVersionId.hashCode),
            key.hashCode),
        versionId.hashCode));
  }
}

class DeletedObjectBuilder
    implements Builder<DeletedObject, DeletedObjectBuilder> {
  _$DeletedObject? _$v;

  bool? _deleteMarker;
  bool? get deleteMarker => _$this._deleteMarker;
  set deleteMarker(bool? deleteMarker) => _$this._deleteMarker = deleteMarker;

  String? _deleteMarkerVersionId;
  String? get deleteMarkerVersionId => _$this._deleteMarkerVersionId;
  set deleteMarkerVersionId(String? deleteMarkerVersionId) =>
      _$this._deleteMarkerVersionId = deleteMarkerVersionId;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  DeletedObjectBuilder() {
    DeletedObject._init(this);
  }

  DeletedObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deleteMarker = $v.deleteMarker;
      _deleteMarkerVersionId = $v.deleteMarkerVersionId;
      _key = $v.key;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeletedObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeletedObject;
  }

  @override
  void update(void Function(DeletedObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeletedObject build() => _build();

  _$DeletedObject _build() {
    final _$result = _$v ??
        new _$DeletedObject._(
            deleteMarker: deleteMarker,
            deleteMarkerVersionId: deleteMarkerVersionId,
            key: key,
            versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
