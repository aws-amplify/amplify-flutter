// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.replica_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaUpdate extends ReplicaUpdate {
  @override
  final _i2.CreateReplicaAction? create;
  @override
  final _i3.DeleteReplicaAction? delete;

  factory _$ReplicaUpdate([void Function(ReplicaUpdateBuilder)? updates]) =>
      (new ReplicaUpdateBuilder()..update(updates))._build();

  _$ReplicaUpdate._({this.create, this.delete}) : super._();

  @override
  ReplicaUpdate rebuild(void Function(ReplicaUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplicaUpdateBuilder toBuilder() => new ReplicaUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplicaUpdate &&
        create == other.create &&
        delete == other.delete;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, create.hashCode), delete.hashCode));
  }
}

class ReplicaUpdateBuilder
    implements Builder<ReplicaUpdate, ReplicaUpdateBuilder> {
  _$ReplicaUpdate? _$v;

  _i2.CreateReplicaActionBuilder? _create;
  _i2.CreateReplicaActionBuilder get create =>
      _$this._create ??= new _i2.CreateReplicaActionBuilder();
  set create(_i2.CreateReplicaActionBuilder? create) => _$this._create = create;

  _i3.DeleteReplicaActionBuilder? _delete;
  _i3.DeleteReplicaActionBuilder get delete =>
      _$this._delete ??= new _i3.DeleteReplicaActionBuilder();
  set delete(_i3.DeleteReplicaActionBuilder? delete) => _$this._delete = delete;

  ReplicaUpdateBuilder() {
    ReplicaUpdate._init(this);
  }

  ReplicaUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _create = $v.create?.toBuilder();
      _delete = $v.delete?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplicaUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplicaUpdate;
  }

  @override
  void update(void Function(ReplicaUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplicaUpdate build() => _build();

  _$ReplicaUpdate _build() {
    _$ReplicaUpdate _$result;
    try {
      _$result = _$v ??
          new _$ReplicaUpdate._(
              create: _create?.build(), delete: _delete?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'create';
        _create?.build();
        _$failedField = 'delete';
        _delete?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplicaUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
