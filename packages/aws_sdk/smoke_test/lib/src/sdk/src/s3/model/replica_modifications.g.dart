// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.replica_modifications;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaModifications extends ReplicaModifications {
  @override
  final _i2.ReplicaModificationsStatus status;

  factory _$ReplicaModifications(
          [void Function(ReplicaModificationsBuilder)? updates]) =>
      (new ReplicaModificationsBuilder()..update(updates))._build();

  _$ReplicaModifications._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, r'ReplicaModifications', 'status');
  }

  @override
  ReplicaModifications rebuild(
          void Function(ReplicaModificationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaModificationsBuilder toBuilder() =>
      new ReplicaModificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaModifications && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }
}

class ReplicaModificationsBuilder
    implements Builder<ReplicaModifications, ReplicaModificationsBuilder> {
  _$ReplicaModifications? _$v;

  _i2.ReplicaModificationsStatus? _status;
  _i2.ReplicaModificationsStatus? get status => _$this._status;
  set status(_i2.ReplicaModificationsStatus? status) => _$this._status = status;

  ReplicaModificationsBuilder() {
    ReplicaModifications._init(this);
  }

  ReplicaModificationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaModifications other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaModifications;
  }

  @override
  void update(void Function(ReplicaModificationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaModifications build() => _build();

  _$ReplicaModifications _build() {
    final _$result = _$v ??
        new _$ReplicaModifications._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'ReplicaModifications', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
