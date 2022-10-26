// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.transition;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Transition extends Transition {
  @override
  final DateTime? date;
  @override
  final int? days;
  @override
  final _i2.TransitionStorageClass? storageClass;

  factory _$Transition([void Function(TransitionBuilder)? updates]) =>
      (new TransitionBuilder()..update(updates))._build();

  _$Transition._({this.date, this.days, this.storageClass}) : super._();

  @override
  Transition rebuild(void Function(TransitionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransitionBuilder toBuilder() => new TransitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Transition &&
        date == other.date &&
        days == other.days &&
        storageClass == other.storageClass;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, date.hashCode), days.hashCode), storageClass.hashCode));
  }
}

class TransitionBuilder implements Builder<Transition, TransitionBuilder> {
  _$Transition? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  _i2.TransitionStorageClass? _storageClass;
  _i2.TransitionStorageClass? get storageClass => _$this._storageClass;
  set storageClass(_i2.TransitionStorageClass? storageClass) =>
      _$this._storageClass = storageClass;

  TransitionBuilder() {
    Transition._init(this);
  }

  TransitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _days = $v.days;
      _storageClass = $v.storageClass;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Transition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Transition;
  }

  @override
  void update(void Function(TransitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Transition build() => _build();

  _$Transition _build() {
    final _$result = _$v ??
        new _$Transition._(date: date, days: days, storageClass: storageClass);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
