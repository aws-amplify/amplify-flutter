// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_aws_network_performance_metric_subscription_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableAwsNetworkPerformanceMetricSubscriptionResult
    extends DisableAwsNetworkPerformanceMetricSubscriptionResult {
  @override
  final bool output;

  factory _$DisableAwsNetworkPerformanceMetricSubscriptionResult(
          [void Function(
                  DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder)?
              updates]) =>
      (new DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder()
            ..update(updates))
          ._build();

  _$DisableAwsNetworkPerformanceMetricSubscriptionResult._(
      {required this.output})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(output,
        r'DisableAwsNetworkPerformanceMetricSubscriptionResult', 'output');
  }

  @override
  DisableAwsNetworkPerformanceMetricSubscriptionResult rebuild(
          void Function(
                  DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder toBuilder() =>
      new DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableAwsNetworkPerformanceMetricSubscriptionResult &&
        output == other.output;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, output.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder
    implements
        Builder<DisableAwsNetworkPerformanceMetricSubscriptionResult,
            DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder> {
  _$DisableAwsNetworkPerformanceMetricSubscriptionResult? _$v;

  bool? _output;
  bool? get output => _$this._output;
  set output(bool? output) => _$this._output = output;

  DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder() {
    DisableAwsNetworkPerformanceMetricSubscriptionResult._init(this);
  }

  DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _output = $v.output;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableAwsNetworkPerformanceMetricSubscriptionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableAwsNetworkPerformanceMetricSubscriptionResult;
  }

  @override
  void update(
      void Function(
              DisableAwsNetworkPerformanceMetricSubscriptionResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableAwsNetworkPerformanceMetricSubscriptionResult build() => _build();

  _$DisableAwsNetworkPerformanceMetricSubscriptionResult _build() {
    final _$result = _$v ??
        new _$DisableAwsNetworkPerformanceMetricSubscriptionResult._(
            output: BuiltValueNullFieldError.checkNotNull(
                output,
                r'DisableAwsNetworkPerformanceMetricSubscriptionResult',
                'output'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
