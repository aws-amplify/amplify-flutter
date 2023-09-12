// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replica_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplicaUpdate extends ReplicaUpdate {
  @override
  final CreateReplicaAction? create;
  @override
  final DeleteReplicaAction? delete;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, create.hashCode);
    _$hash = $jc(_$hash, delete.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplicaUpdateBuilder
    implements Builder<ReplicaUpdate, ReplicaUpdateBuilder> {
  _$ReplicaUpdate? _$v;

  CreateReplicaActionBuilder? _create;
  CreateReplicaActionBuilder get create =>
      _$this._create ??= new CreateReplicaActionBuilder();
  set create(CreateReplicaActionBuilder? create) => _$this._create = create;

  DeleteReplicaActionBuilder? _delete;
  DeleteReplicaActionBuilder get delete =>
      _$this._delete ??= new DeleteReplicaActionBuilder();
  set delete(DeleteReplicaActionBuilder? delete) => _$this._delete = delete;

  ReplicaUpdateBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint