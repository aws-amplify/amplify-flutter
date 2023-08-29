// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_aws_network_performance_metric_subscription_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableAwsNetworkPerformanceMetricSubscriptionResult
    extends EnableAwsNetworkPerformanceMetricSubscriptionResult {
  @override
  final bool output;

  factory _$EnableAwsNetworkPerformanceMetricSubscriptionResult(
          [void Function(
                  EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder)?
              updates]) =>
      (new EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder()
            ..update(updates))
          ._build();

  _$EnableAwsNetworkPerformanceMetricSubscriptionResult._(
      {required this.output})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(output,
        r'EnableAwsNetworkPerformanceMetricSubscriptionResult', 'output');
  }

  @override
  EnableAwsNetworkPerformanceMetricSubscriptionResult rebuild(
          void Function(
                  EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder toBuilder() =>
      new EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableAwsNetworkPerformanceMetricSubscriptionResult &&
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

class EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder
    implements
        Builder<EnableAwsNetworkPerformanceMetricSubscriptionResult,
            EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder> {
  _$EnableAwsNetworkPerformanceMetricSubscriptionResult? _$v;

  bool? _output;
  bool? get output => _$this._output;
  set output(bool? output) => _$this._output = output;

  EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder() {
    EnableAwsNetworkPerformanceMetricSubscriptionResult._init(this);
  }

  EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _output = $v.output;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableAwsNetworkPerformanceMetricSubscriptionResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableAwsNetworkPerformanceMetricSubscriptionResult;
  }

  @override
  void update(
      void Function(EnableAwsNetworkPerformanceMetricSubscriptionResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableAwsNetworkPerformanceMetricSubscriptionResult build() => _build();

  _$EnableAwsNetworkPerformanceMetricSubscriptionResult _build() {
    final _$result = _$v ??
        new _$EnableAwsNetworkPerformanceMetricSubscriptionResult._(
            output: BuiltValueNullFieldError.checkNotNull(
                output,
                r'EnableAwsNetworkPerformanceMetricSubscriptionResult',
                'output'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
