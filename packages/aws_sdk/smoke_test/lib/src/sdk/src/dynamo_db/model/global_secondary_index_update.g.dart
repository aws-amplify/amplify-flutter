// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.global_secondary_index_update;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GlobalSecondaryIndexUpdate extends GlobalSecondaryIndexUpdate {
  @override
  final _i2.CreateGlobalSecondaryIndexAction? create;
  @override
  final _i3.DeleteGlobalSecondaryIndexAction? delete;
  @override
  final _i4.UpdateGlobalSecondaryIndexAction? update_;

  factory _$GlobalSecondaryIndexUpdate(
          [void Function(GlobalSecondaryIndexUpdateBuilder)? updates]) =>
      (new GlobalSecondaryIndexUpdateBuilder()..update(updates))._build();

  _$GlobalSecondaryIndexUpdate._({this.create, this.delete, this.update_})
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
        create == other.create &&
        delete == other.delete &&
        update_ == other.update_;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, create.hashCode), delete.hashCode), update_.hashCode));
  }
}

class GlobalSecondaryIndexUpdateBuilder
    implements
        Builder<GlobalSecondaryIndexUpdate, GlobalSecondaryIndexUpdateBuilder> {
  _$GlobalSecondaryIndexUpdate? _$v;

  _i2.CreateGlobalSecondaryIndexActionBuilder? _create;
  _i2.CreateGlobalSecondaryIndexActionBuilder get create =>
      _$this._create ??= new _i2.CreateGlobalSecondaryIndexActionBuilder();
  set create(_i2.CreateGlobalSecondaryIndexActionBuilder? create) =>
      _$this._create = create;

  _i3.DeleteGlobalSecondaryIndexActionBuilder? _delete;
  _i3.DeleteGlobalSecondaryIndexActionBuilder get delete =>
      _$this._delete ??= new _i3.DeleteGlobalSecondaryIndexActionBuilder();
  set delete(_i3.DeleteGlobalSecondaryIndexActionBuilder? delete) =>
      _$this._delete = delete;

  _i4.UpdateGlobalSecondaryIndexActionBuilder? _update_;
  _i4.UpdateGlobalSecondaryIndexActionBuilder get update_ =>
      _$this._update_ ??= new _i4.UpdateGlobalSecondaryIndexActionBuilder();
  set update_(_i4.UpdateGlobalSecondaryIndexActionBuilder? update_) =>
      _$this._update_ = update_;

  GlobalSecondaryIndexUpdateBuilder() {
    GlobalSecondaryIndexUpdate._init(this);
  }

  GlobalSecondaryIndexUpdateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _create = $v.create?.toBuilder();
      _delete = $v.delete?.toBuilder();
      _update_ = $v.update_?.toBuilder();
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
              create: _create?.build(),
              delete: _delete?.build(),
              update_: _update_?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'create';
        _create?.build();
        _$failedField = 'delete';
        _delete?.build();
        _$failedField = 'update_';
        _update_?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
