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
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, days.hashCode);
    _$hash = $jc(_$hash, expiredObjectDeleteMarker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
