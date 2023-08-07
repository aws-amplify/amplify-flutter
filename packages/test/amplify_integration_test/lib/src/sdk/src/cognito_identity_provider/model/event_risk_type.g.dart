// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_risk_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventRiskType extends EventRiskType {
  @override
  final RiskDecisionType? riskDecision;
  @override
  final RiskLevelType? riskLevel;
  @override
  final bool? compromisedCredentialsDetected;

  factory _$EventRiskType([void Function(EventRiskTypeBuilder)? updates]) =>
      (new EventRiskTypeBuilder()..update(updates))._build();

  _$EventRiskType._(
      {this.riskDecision, this.riskLevel, this.compromisedCredentialsDetected})
      : super._();

  @override
  EventRiskType rebuild(void Function(EventRiskTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventRiskTypeBuilder toBuilder() => new EventRiskTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventRiskType &&
        riskDecision == other.riskDecision &&
        riskLevel == other.riskLevel &&
        compromisedCredentialsDetected == other.compromisedCredentialsDetected;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, riskDecision.hashCode);
    _$hash = $jc(_$hash, riskLevel.hashCode);
    _$hash = $jc(_$hash, compromisedCredentialsDetected.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EventRiskTypeBuilder
    implements Builder<EventRiskType, EventRiskTypeBuilder> {
  _$EventRiskType? _$v;

  RiskDecisionType? _riskDecision;
  RiskDecisionType? get riskDecision => _$this._riskDecision;
  set riskDecision(RiskDecisionType? riskDecision) =>
      _$this._riskDecision = riskDecision;

  RiskLevelType? _riskLevel;
  RiskLevelType? get riskLevel => _$this._riskLevel;
  set riskLevel(RiskLevelType? riskLevel) => _$this._riskLevel = riskLevel;

  bool? _compromisedCredentialsDetected;
  bool? get compromisedCredentialsDetected =>
      _$this._compromisedCredentialsDetected;
  set compromisedCredentialsDetected(bool? compromisedCredentialsDetected) =>
      _$this._compromisedCredentialsDetected = compromisedCredentialsDetected;

  EventRiskTypeBuilder();

  EventRiskTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _riskDecision = $v.riskDecision;
      _riskLevel = $v.riskLevel;
      _compromisedCredentialsDetected = $v.compromisedCredentialsDetected;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventRiskType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventRiskType;
  }

  @override
  void update(void Function(EventRiskTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventRiskType build() => _build();

  _$EventRiskType _build() {
    final _$result = _$v ??
        new _$EventRiskType._(
            riskDecision: riskDecision,
            riskLevel: riskLevel,
            compromisedCredentialsDetected: compromisedCredentialsDetected);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
