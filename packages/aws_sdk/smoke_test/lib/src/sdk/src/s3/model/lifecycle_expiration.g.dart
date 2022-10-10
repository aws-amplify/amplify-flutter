// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.lifecycle_expiration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LifecycleExpiration extends LifecycleExpiration {
  @override
  final DateTime? date;
  @override
  final int? days;
  @override
  final bool? expiredObjectDeleteMarker;

  factory _$LifecycleExpiration(
          [void Function(LifecycleExpirationBuilder)? updates]) =>
      (new LifecycleExpirationBuilder()..update(updates))._build();

  _$LifecycleExpiration._(
      {this.date, this.days, this.expiredObjectDeleteMarker})
      : super._();

  @override
  LifecycleExpiration rebuild(
          void Function(LifecycleExpirationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LifecycleExpirationBuilder toBuilder() =>
      new LifecycleExpirationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LifecycleExpiration &&
        date == other.date &&
        days == other.days &&
        expiredObjectDeleteMarker == other.expiredObjectDeleteMarker;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, date.hashCode), days.hashCode),
        expiredObjectDeleteMarker.hashCode));
  }
}

class LifecycleExpirationBuilder
    implements Builder<LifecycleExpiration, LifecycleExpirationBuilder> {
  _$LifecycleExpiration? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  bool? _expiredObjectDeleteMarker;
  bool? get expiredObjectDeleteMarker => _$this._expiredObjectDeleteMarker;
  set expiredObjectDeleteMarker(bool? expiredObjectDeleteMarker) =>
      _$this._expiredObjectDeleteMarker = expiredObjectDeleteMarker;

  LifecycleExpirationBuilder() {
    LifecycleExpiration._init(this);
  }

  LifecycleExpirationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _days = $v.days;
      _expiredObjectDeleteMarker = $v.expiredObjectDeleteMarker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LifecycleExpiration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LifecycleExpiration;
  }

  @override
  void update(void Function(LifecycleExpirationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LifecycleExpiration build() => _build();

  _$LifecycleExpiration _build() {
    final _$result = _$v ??
        new _$LifecycleExpiration._(
            date: date,
            days: days,
            expiredObjectDeleteMarker: expiredObjectDeleteMarker);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
