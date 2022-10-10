// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.aggregate_conformance_pack_compliance;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregateConformancePackCompliance
    extends AggregateConformancePackCompliance {
  @override
  final _i2.ConformancePackComplianceType? complianceType;
  @override
  final int? compliantRuleCount;
  @override
  final int? nonCompliantRuleCount;
  @override
  final int? totalRuleCount;

  factory _$AggregateConformancePackCompliance(
          [void Function(AggregateConformancePackComplianceBuilder)?
              updates]) =>
      (new AggregateConformancePackComplianceBuilder()..update(updates))
          ._build();

  _$AggregateConformancePackCompliance._(
      {this.complianceType,
      this.compliantRuleCount,
      this.nonCompliantRuleCount,
      this.totalRuleCount})
      : super._();

  @override
  AggregateConformancePackCompliance rebuild(
          void Function(AggregateConformancePackComplianceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregateConformancePackComplianceBuilder toBuilder() =>
      new AggregateConformancePackComplianceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregateConformancePackCompliance &&
        complianceType == other.complianceType &&
        compliantRuleCount == other.compliantRuleCount &&
        nonCompliantRuleCount == other.nonCompliantRuleCount &&
        totalRuleCount == other.totalRuleCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, complianceType.hashCode), compliantRuleCount.hashCode),
            nonCompliantRuleCount.hashCode),
        totalRuleCount.hashCode));
  }
}

class AggregateConformancePackComplianceBuilder
    implements
        Builder<AggregateConformancePackCompliance,
            AggregateConformancePackComplianceBuilder> {
  _$AggregateConformancePackCompliance? _$v;

  _i2.ConformancePackComplianceType? _complianceType;
  _i2.ConformancePackComplianceType? get complianceType =>
      _$this._complianceType;
  set complianceType(_i2.ConformancePackComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  int? _compliantRuleCount;
  int? get compliantRuleCount => _$this._compliantRuleCount;
  set compliantRuleCount(int? compliantRuleCount) =>
      _$this._compliantRuleCount = compliantRuleCount;

  int? _nonCompliantRuleCount;
  int? get nonCompliantRuleCount => _$this._nonCompliantRuleCount;
  set nonCompliantRuleCount(int? nonCompliantRuleCount) =>
      _$this._nonCompliantRuleCount = nonCompliantRuleCount;

  int? _totalRuleCount;
  int? get totalRuleCount => _$this._totalRuleCount;
  set totalRuleCount(int? totalRuleCount) =>
      _$this._totalRuleCount = totalRuleCount;

  AggregateConformancePackComplianceBuilder() {
    AggregateConformancePackCompliance._init(this);
  }

  AggregateConformancePackComplianceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceType = $v.complianceType;
      _compliantRuleCount = $v.compliantRuleCount;
      _nonCompliantRuleCount = $v.nonCompliantRuleCount;
      _totalRuleCount = $v.totalRuleCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregateConformancePackCompliance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AggregateConformancePackCompliance;
  }

  @override
  void update(
      void Function(AggregateConformancePackComplianceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregateConformancePackCompliance build() => _build();

  _$AggregateConformancePackCompliance _build() {
    final _$result = _$v ??
        new _$AggregateConformancePackCompliance._(
            complianceType: complianceType,
            compliantRuleCount: compliantRuleCount,
            nonCompliantRuleCount: nonCompliantRuleCount,
            totalRuleCount: totalRuleCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
