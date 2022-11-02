// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.billing_mode_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BillingModeSummary extends BillingModeSummary {
  @override
  final _i2.BillingMode? billingMode;
  @override
  final DateTime? lastUpdateToPayPerRequestDateTime;

  factory _$BillingModeSummary(
          [void Function(BillingModeSummaryBuilder)? updates]) =>
      (new BillingModeSummaryBuilder()..update(updates))._build();

  _$BillingModeSummary._(
      {this.billingMode, this.lastUpdateToPayPerRequestDateTime})
      : super._();

  @override
  BillingModeSummary rebuild(
          void Function(BillingModeSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BillingModeSummaryBuilder toBuilder() =>
      new BillingModeSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BillingModeSummary &&
        billingMode == other.billingMode &&
        lastUpdateToPayPerRequestDateTime ==
            other.lastUpdateToPayPerRequestDateTime;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, billingMode.hashCode),
        lastUpdateToPayPerRequestDateTime.hashCode));
  }
}

class BillingModeSummaryBuilder
    implements Builder<BillingModeSummary, BillingModeSummaryBuilder> {
  _$BillingModeSummary? _$v;

  _i2.BillingMode? _billingMode;
  _i2.BillingMode? get billingMode => _$this._billingMode;
  set billingMode(_i2.BillingMode? billingMode) =>
      _$this._billingMode = billingMode;

  DateTime? _lastUpdateToPayPerRequestDateTime;
  DateTime? get lastUpdateToPayPerRequestDateTime =>
      _$this._lastUpdateToPayPerRequestDateTime;
  set lastUpdateToPayPerRequestDateTime(
          DateTime? lastUpdateToPayPerRequestDateTime) =>
      _$this._lastUpdateToPayPerRequestDateTime =
          lastUpdateToPayPerRequestDateTime;

  BillingModeSummaryBuilder() {
    BillingModeSummary._init(this);
  }

  BillingModeSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _billingMode = $v.billingMode;
      _lastUpdateToPayPerRequestDateTime = $v.lastUpdateToPayPerRequestDateTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BillingModeSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BillingModeSummary;
  }

  @override
  void update(void Function(BillingModeSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BillingModeSummary build() => _build();

  _$BillingModeSummary _build() {
    final _$result = _$v ??
        new _$BillingModeSummary._(
            billingMode: billingMode,
            lastUpdateToPayPerRequestDateTime:
                lastUpdateToPayPerRequestDateTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
