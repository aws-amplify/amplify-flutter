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
    return $jf($jc(0, status.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
