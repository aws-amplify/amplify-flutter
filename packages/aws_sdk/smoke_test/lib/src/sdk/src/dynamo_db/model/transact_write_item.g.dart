// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.transact_write_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactWriteItem extends TransactWriteItem {
  @override
  final _i2.ConditionCheck? conditionCheck;
  @override
  final _i3.Delete? delete;
  @override
  final _i4.Put? put;
  @override
  final _i5.Update? update_;

  factory _$TransactWriteItem(
          [void Function(TransactWriteItemBuilder)? updates]) =>
      (new TransactWriteItemBuilder()..update(updates))._build();

  _$TransactWriteItem._(
      {this.conditionCheck, this.delete, this.put, this.update_})
      : super._();

  @override
  TransactWriteItem rebuild(void Function(TransactWriteItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactWriteItemBuilder toBuilder() =>
      new TransactWriteItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactWriteItem &&
        conditionCheck == other.conditionCheck &&
        delete == other.delete &&
        put == other.put &&
        update_ == other.update_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conditionCheck.hashCode);
    _$hash = $jc(_$hash, delete.hashCode);
    _$hash = $jc(_$hash, put.hashCode);
    _$hash = $jc(_$hash, update_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransactWriteItemBuilder
    implements Builder<TransactWriteItem, TransactWriteItemBuilder> {
  _$TransactWriteItem? _$v;

  _i2.ConditionCheckBuilder? _conditionCheck;
  _i2.ConditionCheckBuilder get conditionCheck =>
      _$this._conditionCheck ??= new _i2.ConditionCheckBuilder();
  set conditionCheck(_i2.ConditionCheckBuilder? conditionCheck) =>
      _$this._conditionCheck = conditionCheck;

  _i3.DeleteBuilder? _delete;
  _i3.DeleteBuilder get delete => _$this._delete ??= new _i3.DeleteBuilder();
  set delete(_i3.DeleteBuilder? delete) => _$this._delete = delete;

  _i4.PutBuilder? _put;
  _i4.PutBuilder get put => _$this._put ??= new _i4.PutBuilder();
  set put(_i4.PutBuilder? put) => _$this._put = put;

  _i5.UpdateBuilder? _update_;
  _i5.UpdateBuilder get update_ => _$this._update_ ??= new _i5.UpdateBuilder();
  set update_(_i5.UpdateBuilder? update_) => _$this._update_ = update_;

  TransactWriteItemBuilder() {
    TransactWriteItem._init(this);
  }

  TransactWriteItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conditionCheck = $v.conditionCheck?.toBuilder();
      _delete = $v.delete?.toBuilder();
      _put = $v.put?.toBuilder();
      _update_ = $v.update_?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactWriteItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactWriteItem;
  }

  @override
  void update(void Function(TransactWriteItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactWriteItem build() => _build();

  _$TransactWriteItem _build() {
    _$TransactWriteItem _$result;
    try {
      _$result = _$v ??
          new _$TransactWriteItem._(
              conditionCheck: _conditionCheck?.build(),
              delete: _delete?.build(),
              put: _put?.build(),
              update_: _update_?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conditionCheck';
        _conditionCheck?.build();
        _$failedField = 'delete';
        _delete?.build();
        _$failedField = 'put';
        _put?.build();
        _$failedField = 'update_';
        _update_?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactWriteItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
