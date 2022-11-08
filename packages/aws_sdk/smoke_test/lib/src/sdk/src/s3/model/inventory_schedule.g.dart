// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.inventory_schedule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InventorySchedule extends InventorySchedule {
  @override
  final _i2.InventoryFrequency frequency;

  factory _$InventorySchedule(
          [void Function(InventoryScheduleBuilder)? updates]) =>
      (new InventoryScheduleBuilder()..update(updates))._build();

  _$InventorySchedule._({required this.frequency}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        frequency, r'InventorySchedule', 'frequency');
  }

  @override
  InventorySchedule rebuild(void Function(InventoryScheduleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InventoryScheduleBuilder toBuilder() =>
      new InventoryScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InventorySchedule && frequency == other.frequency;
  }

  @override
  int get hashCode {
    return $jf($jc(0, frequency.hashCode));
  }
}

class InventoryScheduleBuilder
    implements Builder<InventorySchedule, InventoryScheduleBuilder> {
  _$InventorySchedule? _$v;

  _i2.InventoryFrequency? _frequency;
  _i2.InventoryFrequency? get frequency => _$this._frequency;
  set frequency(_i2.InventoryFrequency? frequency) =>
      _$this._frequency = frequency;

  InventoryScheduleBuilder() {
    InventorySchedule._init(this);
  }

  InventoryScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _frequency = $v.frequency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InventorySchedule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InventorySchedule;
  }

  @override
  void update(void Function(InventoryScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InventorySchedule build() => _build();

  _$InventorySchedule _build() {
    final _$result = _$v ??
        new _$InventorySchedule._(
            frequency: BuiltValueNullFieldError.checkNotNull(
                frequency, r'InventorySchedule', 'frequency'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
