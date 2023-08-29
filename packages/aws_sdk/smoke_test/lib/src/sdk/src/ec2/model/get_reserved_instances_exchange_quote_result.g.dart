// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_reserved_instances_exchange_quote_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetReservedInstancesExchangeQuoteResult
    extends GetReservedInstancesExchangeQuoteResult {
  @override
  final String? currencyCode;
  @override
  final bool isValidExchange;
  @override
  final DateTime? outputReservedInstancesWillExpireAt;
  @override
  final String? paymentDue;
  @override
  final ReservationValue? reservedInstanceValueRollup;
  @override
  final _i2.BuiltList<ReservedInstanceReservationValue>?
      reservedInstanceValueSet;
  @override
  final ReservationValue? targetConfigurationValueRollup;
  @override
  final _i2.BuiltList<TargetReservationValue>? targetConfigurationValueSet;
  @override
  final String? validationFailureReason;

  factory _$GetReservedInstancesExchangeQuoteResult(
          [void Function(GetReservedInstancesExchangeQuoteResultBuilder)?
              updates]) =>
      (new GetReservedInstancesExchangeQuoteResultBuilder()..update(updates))
          ._build();

  _$GetReservedInstancesExchangeQuoteResult._(
      {this.currencyCode,
      required this.isValidExchange,
      this.outputReservedInstancesWillExpireAt,
      this.paymentDue,
      this.reservedInstanceValueRollup,
      this.reservedInstanceValueSet,
      this.targetConfigurationValueRollup,
      this.targetConfigurationValueSet,
      this.validationFailureReason})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isValidExchange,
        r'GetReservedInstancesExchangeQuoteResult', 'isValidExchange');
  }

  @override
  GetReservedInstancesExchangeQuoteResult rebuild(
          void Function(GetReservedInstancesExchangeQuoteResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetReservedInstancesExchangeQuoteResultBuilder toBuilder() =>
      new GetReservedInstancesExchangeQuoteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetReservedInstancesExchangeQuoteResult &&
        currencyCode == other.currencyCode &&
        isValidExchange == other.isValidExchange &&
        outputReservedInstancesWillExpireAt ==
            other.outputReservedInstancesWillExpireAt &&
        paymentDue == other.paymentDue &&
        reservedInstanceValueRollup == other.reservedInstanceValueRollup &&
        reservedInstanceValueSet == other.reservedInstanceValueSet &&
        targetConfigurationValueRollup ==
            other.targetConfigurationValueRollup &&
        targetConfigurationValueSet == other.targetConfigurationValueSet &&
        validationFailureReason == other.validationFailureReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currencyCode.hashCode);
    _$hash = $jc(_$hash, isValidExchange.hashCode);
    _$hash = $jc(_$hash, outputReservedInstancesWillExpireAt.hashCode);
    _$hash = $jc(_$hash, paymentDue.hashCode);
    _$hash = $jc(_$hash, reservedInstanceValueRollup.hashCode);
    _$hash = $jc(_$hash, reservedInstanceValueSet.hashCode);
    _$hash = $jc(_$hash, targetConfigurationValueRollup.hashCode);
    _$hash = $jc(_$hash, targetConfigurationValueSet.hashCode);
    _$hash = $jc(_$hash, validationFailureReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetReservedInstancesExchangeQuoteResultBuilder
    implements
        Builder<GetReservedInstancesExchangeQuoteResult,
            GetReservedInstancesExchangeQuoteResultBuilder> {
  _$GetReservedInstancesExchangeQuoteResult? _$v;

  String? _currencyCode;
  String? get currencyCode => _$this._currencyCode;
  set currencyCode(String? currencyCode) => _$this._currencyCode = currencyCode;

  bool? _isValidExchange;
  bool? get isValidExchange => _$this._isValidExchange;
  set isValidExchange(bool? isValidExchange) =>
      _$this._isValidExchange = isValidExchange;

  DateTime? _outputReservedInstancesWillExpireAt;
  DateTime? get outputReservedInstancesWillExpireAt =>
      _$this._outputReservedInstancesWillExpireAt;
  set outputReservedInstancesWillExpireAt(
          DateTime? outputReservedInstancesWillExpireAt) =>
      _$this._outputReservedInstancesWillExpireAt =
          outputReservedInstancesWillExpireAt;

  String? _paymentDue;
  String? get paymentDue => _$this._paymentDue;
  set paymentDue(String? paymentDue) => _$this._paymentDue = paymentDue;

  ReservationValueBuilder? _reservedInstanceValueRollup;
  ReservationValueBuilder get reservedInstanceValueRollup =>
      _$this._reservedInstanceValueRollup ??= new ReservationValueBuilder();
  set reservedInstanceValueRollup(
          ReservationValueBuilder? reservedInstanceValueRollup) =>
      _$this._reservedInstanceValueRollup = reservedInstanceValueRollup;

  _i2.ListBuilder<ReservedInstanceReservationValue>? _reservedInstanceValueSet;
  _i2.ListBuilder<ReservedInstanceReservationValue>
      get reservedInstanceValueSet => _$this._reservedInstanceValueSet ??=
          new _i2.ListBuilder<ReservedInstanceReservationValue>();
  set reservedInstanceValueSet(
          _i2.ListBuilder<ReservedInstanceReservationValue>?
              reservedInstanceValueSet) =>
      _$this._reservedInstanceValueSet = reservedInstanceValueSet;

  ReservationValueBuilder? _targetConfigurationValueRollup;
  ReservationValueBuilder get targetConfigurationValueRollup =>
      _$this._targetConfigurationValueRollup ??= new ReservationValueBuilder();
  set targetConfigurationValueRollup(
          ReservationValueBuilder? targetConfigurationValueRollup) =>
      _$this._targetConfigurationValueRollup = targetConfigurationValueRollup;

  _i2.ListBuilder<TargetReservationValue>? _targetConfigurationValueSet;
  _i2.ListBuilder<TargetReservationValue> get targetConfigurationValueSet =>
      _$this._targetConfigurationValueSet ??=
          new _i2.ListBuilder<TargetReservationValue>();
  set targetConfigurationValueSet(
          _i2.ListBuilder<TargetReservationValue>?
              targetConfigurationValueSet) =>
      _$this._targetConfigurationValueSet = targetConfigurationValueSet;

  String? _validationFailureReason;
  String? get validationFailureReason => _$this._validationFailureReason;
  set validationFailureReason(String? validationFailureReason) =>
      _$this._validationFailureReason = validationFailureReason;

  GetReservedInstancesExchangeQuoteResultBuilder() {
    GetReservedInstancesExchangeQuoteResult._init(this);
  }

  GetReservedInstancesExchangeQuoteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currencyCode = $v.currencyCode;
      _isValidExchange = $v.isValidExchange;
      _outputReservedInstancesWillExpireAt =
          $v.outputReservedInstancesWillExpireAt;
      _paymentDue = $v.paymentDue;
      _reservedInstanceValueRollup =
          $v.reservedInstanceValueRollup?.toBuilder();
      _reservedInstanceValueSet = $v.reservedInstanceValueSet?.toBuilder();
      _targetConfigurationValueRollup =
          $v.targetConfigurationValueRollup?.toBuilder();
      _targetConfigurationValueSet =
          $v.targetConfigurationValueSet?.toBuilder();
      _validationFailureReason = $v.validationFailureReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetReservedInstancesExchangeQuoteResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetReservedInstancesExchangeQuoteResult;
  }

  @override
  void update(
      void Function(GetReservedInstancesExchangeQuoteResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetReservedInstancesExchangeQuoteResult build() => _build();

  _$GetReservedInstancesExchangeQuoteResult _build() {
    _$GetReservedInstancesExchangeQuoteResult _$result;
    try {
      _$result = _$v ??
          new _$GetReservedInstancesExchangeQuoteResult._(
              currencyCode: currencyCode,
              isValidExchange: BuiltValueNullFieldError.checkNotNull(
                  isValidExchange,
                  r'GetReservedInstancesExchangeQuoteResult',
                  'isValidExchange'),
              outputReservedInstancesWillExpireAt:
                  outputReservedInstancesWillExpireAt,
              paymentDue: paymentDue,
              reservedInstanceValueRollup:
                  _reservedInstanceValueRollup?.build(),
              reservedInstanceValueSet: _reservedInstanceValueSet?.build(),
              targetConfigurationValueRollup:
                  _targetConfigurationValueRollup?.build(),
              targetConfigurationValueSet:
                  _targetConfigurationValueSet?.build(),
              validationFailureReason: validationFailureReason);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reservedInstanceValueRollup';
        _reservedInstanceValueRollup?.build();
        _$failedField = 'reservedInstanceValueSet';
        _reservedInstanceValueSet?.build();
        _$failedField = 'targetConfigurationValueRollup';
        _targetConfigurationValueRollup?.build();
        _$failedField = 'targetConfigurationValueSet';
        _targetConfigurationValueSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetReservedInstancesExchangeQuoteResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
