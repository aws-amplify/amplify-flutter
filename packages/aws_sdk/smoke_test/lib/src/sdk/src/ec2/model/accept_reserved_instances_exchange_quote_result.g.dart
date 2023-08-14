// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_reserved_instances_exchange_quote_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AcceptReservedInstancesExchangeQuoteResult
    extends AcceptReservedInstancesExchangeQuoteResult {
  @override
  final String? exchangeId;

  factory _$AcceptReservedInstancesExchangeQuoteResult(
          [void Function(AcceptReservedInstancesExchangeQuoteResultBuilder)?
              updates]) =>
      (new AcceptReservedInstancesExchangeQuoteResultBuilder()..update(updates))
          ._build();

  _$AcceptReservedInstancesExchangeQuoteResult._({this.exchangeId}) : super._();

  @override
  AcceptReservedInstancesExchangeQuoteResult rebuild(
          void Function(AcceptReservedInstancesExchangeQuoteResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AcceptReservedInstancesExchangeQuoteResultBuilder toBuilder() =>
      new AcceptReservedInstancesExchangeQuoteResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AcceptReservedInstancesExchangeQuoteResult &&
        exchangeId == other.exchangeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exchangeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AcceptReservedInstancesExchangeQuoteResultBuilder
    implements
        Builder<AcceptReservedInstancesExchangeQuoteResult,
            AcceptReservedInstancesExchangeQuoteResultBuilder> {
  _$AcceptReservedInstancesExchangeQuoteResult? _$v;

  String? _exchangeId;
  String? get exchangeId => _$this._exchangeId;
  set exchangeId(String? exchangeId) => _$this._exchangeId = exchangeId;

  AcceptReservedInstancesExchangeQuoteResultBuilder();

  AcceptReservedInstancesExchangeQuoteResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exchangeId = $v.exchangeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AcceptReservedInstancesExchangeQuoteResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AcceptReservedInstancesExchangeQuoteResult;
  }

  @override
  void update(
      void Function(AcceptReservedInstancesExchangeQuoteResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AcceptReservedInstancesExchangeQuoteResult build() => _build();

  _$AcceptReservedInstancesExchangeQuoteResult _build() {
    final _$result = _$v ??
        new _$AcceptReservedInstancesExchangeQuoteResult._(
            exchangeId: exchangeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
