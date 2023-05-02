// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.source_selection_criteria;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceSelectionCriteria extends SourceSelectionCriteria {
  @override
  final _i2.SseKmsEncryptedObjects? sseKmsEncryptedObjects;
  @override
  final _i3.ReplicaModifications? replicaModifications;

  factory _$SourceSelectionCriteria(
          [void Function(SourceSelectionCriteriaBuilder)? updates]) =>
      (new SourceSelectionCriteriaBuilder()..update(updates))._build();

  _$SourceSelectionCriteria._(
      {this.sseKmsEncryptedObjects, this.replicaModifications})
      : super._();

  @override
  SourceSelectionCriteria rebuild(
          void Function(SourceSelectionCriteriaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SourceSelectionCriteriaBuilder toBuilder() =>
      new SourceSelectionCriteriaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SourceSelectionCriteria &&
        sseKmsEncryptedObjects == other.sseKmsEncryptedObjects &&
        replicaModifications == other.replicaModifications;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sseKmsEncryptedObjects.hashCode);
    _$hash = $jc(_$hash, replicaModifications.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SourceSelectionCriteriaBuilder
    implements
        Builder<SourceSelectionCriteria, SourceSelectionCriteriaBuilder> {
  _$SourceSelectionCriteria? _$v;

  _i2.SseKmsEncryptedObjectsBuilder? _sseKmsEncryptedObjects;
  _i2.SseKmsEncryptedObjectsBuilder get sseKmsEncryptedObjects =>
      _$this._sseKmsEncryptedObjects ??=
          new _i2.SseKmsEncryptedObjectsBuilder();
  set sseKmsEncryptedObjects(
          _i2.SseKmsEncryptedObjectsBuilder? sseKmsEncryptedObjects) =>
      _$this._sseKmsEncryptedObjects = sseKmsEncryptedObjects;

  _i3.ReplicaModificationsBuilder? _replicaModifications;
  _i3.ReplicaModificationsBuilder get replicaModifications =>
      _$this._replicaModifications ??= new _i3.ReplicaModificationsBuilder();
  set replicaModifications(
          _i3.ReplicaModificationsBuilder? replicaModifications) =>
      _$this._replicaModifications = replicaModifications;

  SourceSelectionCriteriaBuilder() {
    SourceSelectionCriteria._init(this);
  }

  SourceSelectionCriteriaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sseKmsEncryptedObjects = $v.sseKmsEncryptedObjects?.toBuilder();
      _replicaModifications = $v.replicaModifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SourceSelectionCriteria other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SourceSelectionCriteria;
  }

  @override
  void update(void Function(SourceSelectionCriteriaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SourceSelectionCriteria build() => _build();

  _$SourceSelectionCriteria _build() {
    _$SourceSelectionCriteria _$result;
    try {
      _$result = _$v ??
          new _$SourceSelectionCriteria._(
              sseKmsEncryptedObjects: _sseKmsEncryptedObjects?.build(),
              replicaModifications: _replicaModifications?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sseKmsEncryptedObjects';
        _sseKmsEncryptedObjects?.build();
        _$failedField = 'replicaModifications';
        _replicaModifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SourceSelectionCriteria', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
