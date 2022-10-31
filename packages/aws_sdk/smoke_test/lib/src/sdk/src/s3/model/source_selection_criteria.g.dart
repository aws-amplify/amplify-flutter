// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.source_selection_criteria;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SourceSelectionCriteria extends SourceSelectionCriteria {
  @override
  final _i2.ReplicaModifications? replicaModifications;
  @override
  final _i3.SseKmsEncryptedObjects? sseKmsEncryptedObjects;

  factory _$SourceSelectionCriteria(
          [void Function(SourceSelectionCriteriaBuilder)? updates]) =>
      (new SourceSelectionCriteriaBuilder()..update(updates))._build();

  _$SourceSelectionCriteria._(
      {this.replicaModifications, this.sseKmsEncryptedObjects})
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
        replicaModifications == other.replicaModifications &&
        sseKmsEncryptedObjects == other.sseKmsEncryptedObjects;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, replicaModifications.hashCode),
        sseKmsEncryptedObjects.hashCode));
  }
}

class SourceSelectionCriteriaBuilder
    implements
        Builder<SourceSelectionCriteria, SourceSelectionCriteriaBuilder> {
  _$SourceSelectionCriteria? _$v;

  _i2.ReplicaModificationsBuilder? _replicaModifications;
  _i2.ReplicaModificationsBuilder get replicaModifications =>
      _$this._replicaModifications ??= new _i2.ReplicaModificationsBuilder();
  set replicaModifications(
          _i2.ReplicaModificationsBuilder? replicaModifications) =>
      _$this._replicaModifications = replicaModifications;

  _i3.SseKmsEncryptedObjectsBuilder? _sseKmsEncryptedObjects;
  _i3.SseKmsEncryptedObjectsBuilder get sseKmsEncryptedObjects =>
      _$this._sseKmsEncryptedObjects ??=
          new _i3.SseKmsEncryptedObjectsBuilder();
  set sseKmsEncryptedObjects(
          _i3.SseKmsEncryptedObjectsBuilder? sseKmsEncryptedObjects) =>
      _$this._sseKmsEncryptedObjects = sseKmsEncryptedObjects;

  SourceSelectionCriteriaBuilder() {
    SourceSelectionCriteria._init(this);
  }

  SourceSelectionCriteriaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _replicaModifications = $v.replicaModifications?.toBuilder();
      _sseKmsEncryptedObjects = $v.sseKmsEncryptedObjects?.toBuilder();
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
              replicaModifications: _replicaModifications?.build(),
              sseKmsEncryptedObjects: _sseKmsEncryptedObjects?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicaModifications';
        _replicaModifications?.build();
        _$failedField = 'sseKmsEncryptedObjects';
        _sseKmsEncryptedObjects?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
