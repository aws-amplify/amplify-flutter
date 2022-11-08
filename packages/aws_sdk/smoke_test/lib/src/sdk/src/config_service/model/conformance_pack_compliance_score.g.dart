// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_compliance_score;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackComplianceScore extends ConformancePackComplianceScore {
  @override
  final String? conformancePackName;
  @override
  final DateTime? lastUpdatedTime;
  @override
  final String? score;

  factory _$ConformancePackComplianceScore(
          [void Function(ConformancePackComplianceScoreBuilder)? updates]) =>
      (new ConformancePackComplianceScoreBuilder()..update(updates))._build();

  _$ConformancePackComplianceScore._(
      {this.conformancePackName, this.lastUpdatedTime, this.score})
      : super._();

  @override
  ConformancePackComplianceScore rebuild(
          void Function(ConformancePackComplianceScoreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConformancePackComplianceScoreBuilder toBuilder() =>
      new ConformancePackComplianceScoreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConformancePackComplianceScore &&
        conformancePackName == other.conformancePackName &&
        lastUpdatedTime == other.lastUpdatedTime &&
        score == other.score;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, conformancePackName.hashCode), lastUpdatedTime.hashCode),
        score.hashCode));
  }
}

class ConformancePackComplianceScoreBuilder
    implements
        Builder<ConformancePackComplianceScore,
            ConformancePackComplianceScoreBuilder> {
  _$ConformancePackComplianceScore? _$v;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  DateTime? _lastUpdatedTime;
  DateTime? get lastUpdatedTime => _$this._lastUpdatedTime;
  set lastUpdatedTime(DateTime? lastUpdatedTime) =>
      _$this._lastUpdatedTime = lastUpdatedTime;

  String? _score;
  String? get score => _$this._score;
  set score(String? score) => _$this._score = score;

  ConformancePackComplianceScoreBuilder() {
    ConformancePackComplianceScore._init(this);
  }

  ConformancePackComplianceScoreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackName = $v.conformancePackName;
      _lastUpdatedTime = $v.lastUpdatedTime;
      _score = $v.score;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConformancePackComplianceScore other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConformancePackComplianceScore;
  }

  @override
  void update(void Function(ConformancePackComplianceScoreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConformancePackComplianceScore build() => _build();

  _$ConformancePackComplianceScore _build() {
    final _$result = _$v ??
        new _$ConformancePackComplianceScore._(
            conformancePackName: conformancePackName,
            lastUpdatedTime: lastUpdatedTime,
            score: score);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
