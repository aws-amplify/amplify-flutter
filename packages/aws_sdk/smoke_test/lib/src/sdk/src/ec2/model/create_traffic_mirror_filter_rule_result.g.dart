// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_traffic_mirror_filter_rule_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTrafficMirrorFilterRuleResult
    extends CreateTrafficMirrorFilterRuleResult {
  @override
  final TrafficMirrorFilterRule? trafficMirrorFilterRule;
  @override
  final String? clientToken;

  factory _$CreateTrafficMirrorFilterRuleResult(
          [void Function(CreateTrafficMirrorFilterRuleResultBuilder)?
              updates]) =>
      (new CreateTrafficMirrorFilterRuleResultBuilder()..update(updates))
          ._build();

  _$CreateTrafficMirrorFilterRuleResult._(
      {this.trafficMirrorFilterRule, this.clientToken})
      : super._();

  @override
  CreateTrafficMirrorFilterRuleResult rebuild(
          void Function(CreateTrafficMirrorFilterRuleResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTrafficMirrorFilterRuleResultBuilder toBuilder() =>
      new CreateTrafficMirrorFilterRuleResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTrafficMirrorFilterRuleResult &&
        trafficMirrorFilterRule == other.trafficMirrorFilterRule &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilterRule.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTrafficMirrorFilterRuleResultBuilder
    implements
        Builder<CreateTrafficMirrorFilterRuleResult,
            CreateTrafficMirrorFilterRuleResultBuilder> {
  _$CreateTrafficMirrorFilterRuleResult? _$v;

  TrafficMirrorFilterRuleBuilder? _trafficMirrorFilterRule;
  TrafficMirrorFilterRuleBuilder get trafficMirrorFilterRule =>
      _$this._trafficMirrorFilterRule ??= new TrafficMirrorFilterRuleBuilder();
  set trafficMirrorFilterRule(
          TrafficMirrorFilterRuleBuilder? trafficMirrorFilterRule) =>
      _$this._trafficMirrorFilterRule = trafficMirrorFilterRule;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateTrafficMirrorFilterRuleResultBuilder();

  CreateTrafficMirrorFilterRuleResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilterRule = $v.trafficMirrorFilterRule?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTrafficMirrorFilterRuleResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTrafficMirrorFilterRuleResult;
  }

  @override
  void update(
      void Function(CreateTrafficMirrorFilterRuleResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTrafficMirrorFilterRuleResult build() => _build();

  _$CreateTrafficMirrorFilterRuleResult _build() {
    _$CreateTrafficMirrorFilterRuleResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTrafficMirrorFilterRuleResult._(
              trafficMirrorFilterRule: _trafficMirrorFilterRule?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trafficMirrorFilterRule';
        _trafficMirrorFilterRule?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTrafficMirrorFilterRuleResult',
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
