// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_secondary_index_update.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalSecondaryIndexUpdate extends GlobalSecondaryIndexUpdate {
  @override
  final UpdateGlobalSecondaryIndexAction? update_;
  @override
  final CreateGlobalSecondaryIndexAction? create;
  @override
  final DeleteGlobalSecondaryIndexAction? delete;

  factory _$GlobalSecondaryIndexUpdate(
          [void Function(GlobalSecondaryIndexUpdateBuilder)? updates]) =>
      (new GlobalSecondaryIndexUpdateBuilder()..update(updates))._build();

  _$GlobalSecondaryIndexUpdate._({this.update_, this.create, this.delete})
      : super._();

  @override
  GlobalSecondaryIndexUpdate rebuild(
          void Function(GlobalSecondaryIndexUpdateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GlobalSecondaryIndexUpdateBuilder toBuilder() =>
      new GlobalSecondaryIndexUpdateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GlobalSecondaryIndexUpdate &&
        update_ == other.update_ &&
        create == other.create &&
        delete == other.delete;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, update_.hashCode);
    _$hash = $jc(_$hash, create.hashCode);
    _$hash = $jc(_$hash, delete.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GlobalSecondaryIndexUpdateBuilder
    implements
        Builder<GlobalSecondaryIndexUpdate, GlobalSecondaryIndexUpdateBuilder> {
  _$GlobalSecondaryIndexUpdate? _$v;

  UpdateGlobalSecondaryIndexActionBuilder? _update_;
  UpdateGlobalSecondaryIndexActionBuilder get update_ =>
      _$this._update_ ??= new UpdateGlobalSecondaryIndexActionBuilder();
  set update_(UpdateGlobalSecondaryIndexActionBuilder? update_) =>
      _$this._update_ = update_;

  CreateGlobalSecondaryIndexActionBuilder? _create;
  CreateGlobalSecondaryIndexActionBuilder get create =>
      _$this._create ??= new CreateGlobalSecondaryIndexActionBuilder();
  set create(CreateGlobalSecondaryIndexActionBuilder? create) =>
      _$this._create = create;

  DeleteGlobalSecondaryIndexActionBuilder? _delete;
  DeleteGlobalSecondaryIndexActionBuilder get delete =>
      _$this._delete ??= new DeleteGlobalSecondaryIndexActionBuilder();
  set delete(DeleteGlobalSecondaryIndexActionBuilder? delete) =>
      _$this._delete = delete;

  GlobalSecondaryIndexUpdateBuilder();

  GlobalSecondaryIndexUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _update_ = $v.update_?.toBuilder();
      _create = $v.create?.toBuilder();
      _delete = $v.delete?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GlobalSecondaryIndexUpdate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GlobalSecondaryIndexUpdate;
  }

  @override
  void update(void Function(GlobalSecondaryIndexUpdateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GlobalSecondaryIndexUpdate build() => _build();

  _$GlobalSecondaryIndexUpdate _build() {
    _$GlobalSecondaryIndexUpdate _$result;
    try {
      _$result = _$v ??
          new _$GlobalSecondaryIndexUpdate._(
              update_: _update_?.build(),
              create: _create?.build(),
              delete: _delete?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'update_';
        _update_?.build();
        _$failedField = 'create';
        _create?.build();
        _$failedField = 'delete';
        _delete?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GlobalSecondaryIndexUpdate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
