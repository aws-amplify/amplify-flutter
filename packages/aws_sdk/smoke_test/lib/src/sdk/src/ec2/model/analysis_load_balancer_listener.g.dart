// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_load_balancer_listener.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisLoadBalancerListener extends AnalysisLoadBalancerListener {
  @override
  final int loadBalancerPort;
  @override
  final int instancePort;

  factory _$AnalysisLoadBalancerListener(
          [void Function(AnalysisLoadBalancerListenerBuilder)? updates]) =>
      (new AnalysisLoadBalancerListenerBuilder()..update(updates))._build();

  _$AnalysisLoadBalancerListener._(
      {required this.loadBalancerPort, required this.instancePort})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        loadBalancerPort, r'AnalysisLoadBalancerListener', 'loadBalancerPort');
    BuiltValueNullFieldError.checkNotNull(
        instancePort, r'AnalysisLoadBalancerListener', 'instancePort');
  }

  @override
  AnalysisLoadBalancerListener rebuild(
          void Function(AnalysisLoadBalancerListenerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisLoadBalancerListenerBuilder toBuilder() =>
      new AnalysisLoadBalancerListenerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisLoadBalancerListener &&
        loadBalancerPort == other.loadBalancerPort &&
        instancePort == other.instancePort;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loadBalancerPort.hashCode);
    _$hash = $jc(_$hash, instancePort.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AnalysisLoadBalancerListenerBuilder
    implements
        Builder<AnalysisLoadBalancerListener,
            AnalysisLoadBalancerListenerBuilder> {
  _$AnalysisLoadBalancerListener? _$v;

  int? _loadBalancerPort;
  int? get loadBalancerPort => _$this._loadBalancerPort;
  set loadBalancerPort(int? loadBalancerPort) =>
      _$this._loadBalancerPort = loadBalancerPort;

  int? _instancePort;
  int? get instancePort => _$this._instancePort;
  set instancePort(int? instancePort) => _$this._instancePort = instancePort;

  AnalysisLoadBalancerListenerBuilder() {
    AnalysisLoadBalancerListener._init(this);
  }

  AnalysisLoadBalancerListenerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loadBalancerPort = $v.loadBalancerPort;
      _instancePort = $v.instancePort;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisLoadBalancerListener other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnalysisLoadBalancerListener;
  }

  @override
  void update(void Function(AnalysisLoadBalancerListenerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisLoadBalancerListener build() => _build();

  _$AnalysisLoadBalancerListener _build() {
    final _$result = _$v ??
        new _$AnalysisLoadBalancerListener._(
            loadBalancerPort: BuiltValueNullFieldError.checkNotNull(
                loadBalancerPort,
                r'AnalysisLoadBalancerListener',
                'loadBalancerPort'),
            instancePort: BuiltValueNullFieldError.checkNotNull(
                instancePort, r'AnalysisLoadBalancerListener', 'instancePort'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
