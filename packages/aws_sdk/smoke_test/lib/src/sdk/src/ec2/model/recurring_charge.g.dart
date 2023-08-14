// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recurring_charge.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecurringCharge extends RecurringCharge {
  @override
  final double amount;
  @override
  final RecurringChargeFrequency? frequency;

  factory _$RecurringCharge([void Function(RecurringChargeBuilder)? updates]) =>
      (new RecurringChargeBuilder()..update(updates))._build();

  _$RecurringCharge._({required this.amount, this.frequency}) : super._() {
    BuiltValueNullFieldError.checkNotNull(amount, r'RecurringCharge', 'amount');
  }

  @override
  RecurringCharge rebuild(void Function(RecurringChargeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecurringChargeBuilder toBuilder() =>
      new RecurringChargeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecurringCharge &&
        amount == other.amount &&
        frequency == other.frequency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, frequency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RecurringChargeBuilder
    implements Builder<RecurringCharge, RecurringChargeBuilder> {
  _$RecurringCharge? _$v;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  RecurringChargeFrequency? _frequency;
  RecurringChargeFrequency? get frequency => _$this._frequency;
  set frequency(RecurringChargeFrequency? frequency) =>
      _$this._frequency = frequency;

  RecurringChargeBuilder() {
    RecurringCharge._init(this);
  }

  RecurringChargeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _frequency = $v.frequency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecurringCharge other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecurringCharge;
  }

  @override
  void update(void Function(RecurringChargeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecurringCharge build() => _build();

  _$RecurringCharge _build() {
    final _$result = _$v ??
        new _$RecurringCharge._(
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'RecurringCharge', 'amount'),
            frequency: frequency);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
