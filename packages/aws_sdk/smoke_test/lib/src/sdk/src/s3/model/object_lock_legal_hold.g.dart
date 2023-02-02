// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.object_lock_legal_hold;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectLockLegalHold extends ObjectLockLegalHold {
  @override
  final _i2.ObjectLockLegalHoldStatus? status;

  factory _$ObjectLockLegalHold(
          [void Function(ObjectLockLegalHoldBuilder)? updates]) =>
      (new ObjectLockLegalHoldBuilder()..update(updates))._build();

  _$ObjectLockLegalHold._({this.status}) : super._();

  @override
  ObjectLockLegalHold rebuild(
          void Function(ObjectLockLegalHoldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectLockLegalHoldBuilder toBuilder() =>
      new ObjectLockLegalHoldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectLockLegalHold && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ObjectLockLegalHoldBuilder
    implements Builder<ObjectLockLegalHold, ObjectLockLegalHoldBuilder> {
  _$ObjectLockLegalHold? _$v;

  _i2.ObjectLockLegalHoldStatus? _status;
  _i2.ObjectLockLegalHoldStatus? get status => _$this._status;
  set status(_i2.ObjectLockLegalHoldStatus? status) => _$this._status = status;

  ObjectLockLegalHoldBuilder() {
    ObjectLockLegalHold._init(this);
  }

  ObjectLockLegalHoldBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectLockLegalHold other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectLockLegalHold;
  }

  @override
  void update(void Function(ObjectLockLegalHoldBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectLockLegalHold build() => _build();

  _$ObjectLockLegalHold _build() {
    final _$result = _$v ?? new _$ObjectLockLegalHold._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
