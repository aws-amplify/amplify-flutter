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
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, retainUntilDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
