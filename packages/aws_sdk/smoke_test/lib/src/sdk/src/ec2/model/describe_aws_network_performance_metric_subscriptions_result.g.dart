// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_aws_network_performance_metric_subscriptions_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAwsNetworkPerformanceMetricSubscriptionsResult
    extends DescribeAwsNetworkPerformanceMetricSubscriptionsResult {
  @override
  final String? nextToken;
  @override
  final _i2.BuiltList<Subscription>? subscriptions;

  factory _$DescribeAwsNetworkPerformanceMetricSubscriptionsResult(
          [void Function(
                  DescribeAwsNetworkPerformanceMetricSubscriptionsResultBuilder)?
              updates]) =>
      (new DescribeAwsNetworkPerformanceMetricSubscriptionsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeAwsNetworkPerformanceMetricSubscriptionsResult._(
      {this.nextToken, this.subscriptions})
      : super._();

  @override
  DescribeAwsNetworkPerformanceMetricSubscriptionsResult rebuild(
          void Function(
                  DescribeAwsNetworkPerformanceMetricSubscriptionsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAwsNetworkPerformanceMetricSubscriptionsResultBuilder toBuilder() =>
      new DescribeAwsNetworkPerformanceMetricSubscriptionsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAwsNetworkPerformanceMetricSubscriptionsResult &&
        nextToken == other.nextToken &&
        subscriptions == other.subscriptions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, subscriptions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeAwsNetworkPerformanceMetricSubscriptionsResultBuilder
    implements
        Builder<DescribeAwsNetworkPerformanceMetricSubscriptionsResult,
            DescribeAwsNetworkPerformanceMetricSubscriptionsResultBuilder> {
  _$DescribeAwsNetworkPerformanceMetricSubscriptionsResult? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i2.ListBuilder<Subscription>? _subscriptions;
  _i2.ListBuilder<Subscription> get subscriptions =>
      _$this._subscriptions ??= new _i2.ListBuilder<Subscription>();
  set subscriptions(_i2.ListBuilder<Subscription>? subscriptions) =>
      _$this._subscriptions = subscriptions;

  DescribeAwsNetworkPerformanceMetricSubscriptionsResultBuilder();

  DescribeAwsNetworkPerformanceMetricSubscriptionsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _subscriptions = $v.subscriptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAwsNetworkPerformanceMetricSubscriptionsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAwsNetworkPerformanceMetricSubscriptionsResult;
  }

  @override
  void update(
      void Function(
              DescribeAwsNetworkPerformanceMetricSubscriptionsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAwsNetworkPerformanceMetricSubscriptionsResult build() => _build();

  _$DescribeAwsNetworkPerformanceMetricSubscriptionsResult _build() {
    _$DescribeAwsNetworkPerformanceMetricSubscriptionsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeAwsNetworkPerformanceMetricSubscriptionsResult._(
              nextToken: nextToken, subscriptions: _subscriptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'subscriptions';
        _subscriptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAwsNetworkPerformanceMetricSubscriptionsResult',
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
