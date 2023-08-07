// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transact_write_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactWriteItem extends TransactWriteItem {
  @override
  final ConditionCheck? conditionCheck;
  @override
  final Put? put;
  @override
  final Delete? delete;
  @override
  final Update? update_;

  factory _$TransactWriteItem(
          [void Function(TransactWriteItemBuilder)? updates]) =>
      (new TransactWriteItemBuilder()..update(updates))._build();

  _$TransactWriteItem._(
      {this.conditionCheck, this.put, this.delete, this.update_})
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
        put == other.put &&
        delete == other.delete &&
        update_ == other.update_;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conditionCheck.hashCode);
    _$hash = $jc(_$hash, put.hashCode);
    _$hash = $jc(_$hash, delete.hashCode);
    _$hash = $jc(_$hash, update_.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TransactWriteItemBuilder
    implements Builder<TransactWriteItem, TransactWriteItemBuilder> {
  _$TransactWriteItem? _$v;

  ConditionCheckBuilder? _conditionCheck;
  ConditionCheckBuilder get conditionCheck =>
      _$this._conditionCheck ??= new ConditionCheckBuilder();
  set conditionCheck(ConditionCheckBuilder? conditionCheck) =>
      _$this._conditionCheck = conditionCheck;

  PutBuilder? _put;
  PutBuilder get put => _$this._put ??= new PutBuilder();
  set put(PutBuilder? put) => _$this._put = put;

  DeleteBuilder? _delete;
  DeleteBuilder get delete => _$this._delete ??= new DeleteBuilder();
  set delete(DeleteBuilder? delete) => _$this._delete = delete;

  UpdateBuilder? _update_;
  UpdateBuilder get update_ => _$this._update_ ??= new UpdateBuilder();
  set update_(UpdateBuilder? update_) => _$this._update_ = update_;

  TransactWriteItemBuilder();

  TransactWriteItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conditionCheck = $v.conditionCheck?.toBuilder();
      _put = $v.put?.toBuilder();
      _delete = $v.delete?.toBuilder();
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
              put: _put?.build(),
              delete: _delete?.build(),
              update_: _update_?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conditionCheck';
        _conditionCheck?.build();
        _$failedField = 'put';
        _put?.build();
        _$failedField = 'delete';
        _delete?.build();
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
