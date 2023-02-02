// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.default_retention;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultRetention extends DefaultRetention {
  @override
  final int? days;
  @override
  final _i2.ObjectLockRetentionMode? mode;
  @override
  final int? years;

  factory _$DefaultRetention(
          [void Function(DefaultRetentionBuilder)? updates]) =>
      (new DefaultRetentionBuilder()..update(updates))._build();

  _$DefaultRetention._({this.days, this.mode, this.years}) : super._();

  @override
  DefaultRetention rebuild(void Function(DefaultRetentionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DefaultRetentionBuilder toBuilder() =>
      new DefaultRetentionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultRetention &&
        days == other.days &&
        mode == other.mode &&
        years == other.years;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, years.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DefaultRetentionBuilder
    implements Builder<DefaultRetention, DefaultRetentionBuilder> {
  _$DefaultRetention? _$v;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  _i2.ObjectLockRetentionMode? _mode;
  _i2.ObjectLockRetentionMode? get mode => _$this._mode;
  set mode(_i2.ObjectLockRetentionMode? mode) => _$this._mode = mode;

  int? _years;
  int? get years => _$this._years;
  set years(int? years) => _$this._years = years;

  DefaultRetentionBuilder() {
    DefaultRetention._init(this);
  }

  DefaultRetentionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _days = $v.days;
      _mode = $v.mode;
      _years = $v.years;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DefaultRetention other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DefaultRetention;
  }

  @override
  void update(void Function(DefaultRetentionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DefaultRetention build() => _build();

  _$DefaultRetention _build() {
    final _$result =
        _$v ?? new _$DefaultRetention._(days: days, mode: mode, years: years);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
