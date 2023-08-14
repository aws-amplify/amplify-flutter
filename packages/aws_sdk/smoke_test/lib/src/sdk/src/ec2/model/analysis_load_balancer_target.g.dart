// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_load_balancer_target.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisLoadBalancerTarget extends AnalysisLoadBalancerTarget {
  @override
  final String? address;
  @override
  final String? availabilityZone;
  @override
  final AnalysisComponent? instance;
  @override
  final int port;

  factory _$AnalysisLoadBalancerTarget(
          [void Function(AnalysisLoadBalancerTargetBuilder)? updates]) =>
      (new AnalysisLoadBalancerTargetBuilder()..update(updates))._build();

  _$AnalysisLoadBalancerTarget._(
      {this.address, this.availabilityZone, this.instance, required this.port})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        port, r'AnalysisLoadBalancerTarget', 'port');
  }

  @override
  AnalysisLoadBalancerTarget rebuild(
          void Function(AnalysisLoadBalancerTargetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisLoadBalancerTargetBuilder toBuilder() =>
      new AnalysisLoadBalancerTargetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisLoadBalancerTarget &&
        address == other.address &&
        availabilityZone == other.availabilityZone &&
        instance == other.instance &&
        port == other.port;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, instance.hashCode);
    _$hash = $jc(_$hash, port.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AnalysisLoadBalancerTargetBuilder
    implements
        Builder<AnalysisLoadBalancerTarget, AnalysisLoadBalancerTargetBuilder> {
  _$AnalysisLoadBalancerTarget? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  AnalysisComponentBuilder? _instance;
  AnalysisComponentBuilder get instance =>
      _$this._instance ??= new AnalysisComponentBuilder();
  set instance(AnalysisComponentBuilder? instance) =>
      _$this._instance = instance;

  int? _port;
  int? get port => _$this._port;
  set port(int? port) => _$this._port = port;

  AnalysisLoadBalancerTargetBuilder() {
    AnalysisLoadBalancerTarget._init(this);
  }

  AnalysisLoadBalancerTargetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _availabilityZone = $v.availabilityZone;
      _instance = $v.instance?.toBuilder();
      _port = $v.port;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisLoadBalancerTarget other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnalysisLoadBalancerTarget;
  }

  @override
  void update(void Function(AnalysisLoadBalancerTargetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisLoadBalancerTarget build() => _build();

  _$AnalysisLoadBalancerTarget _build() {
    _$AnalysisLoadBalancerTarget _$result;
    try {
      _$result = _$v ??
          new _$AnalysisLoadBalancerTarget._(
              address: address,
              availabilityZone: availabilityZone,
              instance: _instance?.build(),
              port: BuiltValueNullFieldError.checkNotNull(
                  port, r'AnalysisLoadBalancerTarget', 'port'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instance';
        _instance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnalysisLoadBalancerTarget', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
