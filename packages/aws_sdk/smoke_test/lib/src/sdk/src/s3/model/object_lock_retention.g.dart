// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.object_lock_retention;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ObjectLockRetention extends ObjectLockRetention {
  @override
  final _i2.ObjectLockRetentionMode? mode;
  @override
  final DateTime? retainUntilDate;

  factory _$ObjectLockRetention(
          [void Function(ObjectLockRetentionBuilder)? updates]) =>
      (new ObjectLockRetentionBuilder()..update(updates))._build();

  _$ObjectLockRetention._({this.mode, this.retainUntilDate}) : super._();

  @override
  ObjectLockRetention rebuild(
          void Function(ObjectLockRetentionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ObjectLockRetentionBuilder toBuilder() =>
      new ObjectLockRetentionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ObjectLockRetention &&
        mode == other.mode &&
        retainUntilDate == other.retainUntilDate;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, mode.hashCode), retainUntilDate.hashCode));
  }
}

class ObjectLockRetentionBuilder
    implements Builder<ObjectLockRetention, ObjectLockRetentionBuilder> {
  _$ObjectLockRetention? _$v;

  _i2.ObjectLockRetentionMode? _mode;
  _i2.ObjectLockRetentionMode? get mode => _$this._mode;
  set mode(_i2.ObjectLockRetentionMode? mode) => _$this._mode = mode;

  DateTime? _retainUntilDate;
  DateTime? get retainUntilDate => _$this._retainUntilDate;
  set retainUntilDate(DateTime? retainUntilDate) =>
      _$this._retainUntilDate = retainUntilDate;

  ObjectLockRetentionBuilder() {
    ObjectLockRetention._init(this);
  }

  ObjectLockRetentionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _retainUntilDate = $v.retainUntilDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ObjectLockRetention other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ObjectLockRetention;
  }

  @override
  void update(void Function(ObjectLockRetentionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ObjectLockRetention build() => _build();

  _$ObjectLockRetention _build() {
    final _$result = _$v ??
        new _$ObjectLockRetention._(
            mode: mode, retainUntilDate: retainUntilDate);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
