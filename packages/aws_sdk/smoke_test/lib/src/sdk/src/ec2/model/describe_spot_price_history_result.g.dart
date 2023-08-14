// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_spot_price_history_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSpotPriceHistoryResult extends DescribeSpotPriceHistoryResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<SpotPrice>? spotPriceHistory;

  factory _$DescribeSpotPriceHistoryResult(
          [void Function(DescribeSpotPriceHistoryResultBuilder)? updates]) =>
      (new DescribeSpotPriceHistoryResultBuilder()..update(updates))._build();

  _$DescribeSpotPriceHistoryResult._({this.nextToken, this.spotPriceHistory})
      : super._();

  @override
  DescribeSpotPriceHistoryResult rebuild(
          void Function(DescribeSpotPriceHistoryResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSpotPriceHistoryResultBuilder toBuilder() =>
      new DescribeSpotPriceHistoryResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSpotPriceHistoryResult &&
        nextToken == other.nextToken &&
        spotPriceHistory == other.spotPriceHistory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, spotPriceHistory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSpotPriceHistoryResultBuilder
    implements
        Builder<DescribeSpotPriceHistoryResult,
            DescribeSpotPriceHistoryResultBuilder> {
  _$DescribeSpotPriceHistoryResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<SpotPrice>? _spotPriceHistory;
  _i2.ListBuilder<SpotPrice> get spotPriceHistory =>
      _$this._spotPriceHistory ??= new _i2.ListBuilder<SpotPrice>();
  set spotPriceHistory(_i2.ListBuilder<SpotPrice>? spotPriceHistory) =>
      _$this._spotPriceHistory = spotPriceHistory;

  DescribeSpotPriceHistoryResultBuilder();

  DescribeSpotPriceHistoryResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _spotPriceHistory = $v.spotPriceHistory?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSpotPriceHistoryResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSpotPriceHistoryResult;
  }

  @override
  void update(void Function(DescribeSpotPriceHistoryResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSpotPriceHistoryResult build() => _build();

  _$DescribeSpotPriceHistoryResult _build() {
    _$DescribeSpotPriceHistoryResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeSpotPriceHistoryResult._(
              nextToken: nextToken,
              spotPriceHistory: _spotPriceHistory?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotPriceHistory';
        _spotPriceHistory?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSpotPriceHistoryResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
