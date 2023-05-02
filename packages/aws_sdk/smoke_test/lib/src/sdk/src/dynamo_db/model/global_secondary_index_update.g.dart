// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.global_secondary_index_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalSecondaryIndexUpdate extends GlobalSecondaryIndexUpdate {
  @override
  final _i2.UpdateGlobalSecondaryIndexAction? update_;
  @override
  final _i3.CreateGlobalSecondaryIndexAction? create;
  @override
  final _i4.DeleteGlobalSecondaryIndexAction? delete;

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

  _i2.UpdateGlobalSecondaryIndexActionBuilder? _update_;
  _i2.UpdateGlobalSecondaryIndexActionBuilder get update_ =>
      _$this._update_ ??= new _i2.UpdateGlobalSecondaryIndexActionBuilder();
  set update_(_i2.UpdateGlobalSecondaryIndexActionBuilder? update_) =>
      _$this._update_ = update_;

  _i3.CreateGlobalSecondaryIndexActionBuilder? _create;
  _i3.CreateGlobalSecondaryIndexActionBuilder get create =>
      _$this._create ??= new _i3.CreateGlobalSecondaryIndexActionBuilder();
  set create(_i3.CreateGlobalSecondaryIndexActionBuilder? create) =>
      _$this._create = create;

  _i4.DeleteGlobalSecondaryIndexActionBuilder? _delete;
  _i4.DeleteGlobalSecondaryIndexActionBuilder get delete =>
      _$this._delete ??= new _i4.DeleteGlobalSecondaryIndexActionBuilder();
  set delete(_i4.DeleteGlobalSecondaryIndexActionBuilder? delete) =>
      _$this._delete = delete;

  GlobalSecondaryIndexUpdateBuilder() {
    GlobalSecondaryIndexUpdate._init(this);
  }

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
