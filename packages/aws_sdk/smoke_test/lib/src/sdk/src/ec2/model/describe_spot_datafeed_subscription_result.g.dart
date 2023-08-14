// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_spot_datafeed_subscription_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSpotDatafeedSubscriptionResult
    extends DescribeSpotDatafeedSubscriptionResult {
  @override
  final SpotDatafeedSubscription? spotDatafeedSubscription;

  factory _$DescribeSpotDatafeedSubscriptionResult(
          [void Function(DescribeSpotDatafeedSubscriptionResultBuilder)?
              updates]) =>
      (new DescribeSpotDatafeedSubscriptionResultBuilder()..update(updates))
          ._build();

  _$DescribeSpotDatafeedSubscriptionResult._({this.spotDatafeedSubscription})
      : super._();

  @override
  DescribeSpotDatafeedSubscriptionResult rebuild(
          void Function(DescribeSpotDatafeedSubscriptionResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSpotDatafeedSubscriptionResultBuilder toBuilder() =>
      new DescribeSpotDatafeedSubscriptionResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSpotDatafeedSubscriptionResult &&
        spotDatafeedSubscription == other.spotDatafeedSubscription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, spotDatafeedSubscription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSpotDatafeedSubscriptionResultBuilder
    implements
        Builder<DescribeSpotDatafeedSubscriptionResult,
            DescribeSpotDatafeedSubscriptionResultBuilder> {
  _$DescribeSpotDatafeedSubscriptionResult? _$v;

  SpotDatafeedSubscriptionBuilder? _spotDatafeedSubscription;
  SpotDatafeedSubscriptionBuilder get spotDatafeedSubscription =>
      _$this._spotDatafeedSubscription ??=
          new SpotDatafeedSubscriptionBuilder();
  set spotDatafeedSubscription(
          SpotDatafeedSubscriptionBuilder? spotDatafeedSubscription) =>
      _$this._spotDatafeedSubscription = spotDatafeedSubscription;

  DescribeSpotDatafeedSubscriptionResultBuilder();

  DescribeSpotDatafeedSubscriptionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _spotDatafeedSubscription = $v.spotDatafeedSubscription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSpotDatafeedSubscriptionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSpotDatafeedSubscriptionResult;
  }

  @override
  void update(
      void Function(DescribeSpotDatafeedSubscriptionResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSpotDatafeedSubscriptionResult build() => _build();

  _$DescribeSpotDatafeedSubscriptionResult _build() {
    _$DescribeSpotDatafeedSubscriptionResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeSpotDatafeedSubscriptionResult._(
              spotDatafeedSubscription: _spotDatafeedSubscription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotDatafeedSubscription';
        _spotDatafeedSubscription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSpotDatafeedSubscriptionResult',
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
