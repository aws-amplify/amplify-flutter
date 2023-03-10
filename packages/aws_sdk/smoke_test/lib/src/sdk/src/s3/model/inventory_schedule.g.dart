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
    var _$hash = 0;
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
