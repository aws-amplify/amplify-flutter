// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_compliance_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackComplianceSummary
    extends ConformancePackComplianceSummary {
  @override
  final _i2.ConformancePackComplianceType conformancePackComplianceStatus;
  @override
  final String conformancePackName;

  factory _$ConformancePackComplianceSummary(
          [void Function(ConformancePackComplianceSummaryBuilder)? updates]) =>
      (new ConformancePackComplianceSummaryBuilder()..update(updates))._build();

  _$ConformancePackComplianceSummary._(
      {required this.conformancePackComplianceStatus,
      required this.conformancePackName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(conformancePackComplianceStatus,
        r'ConformancePackComplianceSummary', 'conformancePackComplianceStatus');
    BuiltValueNullFieldError.checkNotNull(conformancePackName,
        r'ConformancePackComplianceSummary', 'conformancePackName');
  }

  @override
  ConformancePackComplianceSummary rebuild(
          void Function(ConformancePackComplianceSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConformancePackComplianceSummaryBuilder toBuilder() =>
      new ConformancePackComplianceSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConformancePackComplianceSummary &&
        conformancePackComplianceStatus ==
            other.conformancePackComplianceStatus &&
        conformancePackName == other.conformancePackName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, conformancePackComplianceStatus.hashCode),
        conformancePackName.hashCode));
  }
}

class ConformancePackComplianceSummaryBuilder
    implements
        Builder<ConformancePackComplianceSummary,
            ConformancePackComplianceSummaryBuilder> {
  _$ConformancePackComplianceSummary? _$v;

  _i2.ConformancePackComplianceType? _conformancePackComplianceStatus;
  _i2.ConformancePackComplianceType? get conformancePackComplianceStatus =>
      _$this._conformancePackComplianceStatus;
  set conformancePackComplianceStatus(
          _i2.ConformancePackComplianceType? conformancePackComplianceStatus) =>
      _$this._conformancePackComplianceStatus = conformancePackComplianceStatus;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  ConformancePackComplianceSummaryBuilder() {
    ConformancePackComplianceSummary._init(this);
  }

  ConformancePackComplianceSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackComplianceStatus = $v.conformancePackComplianceStatus;
      _conformancePackName = $v.conformancePackName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConformancePackComplianceSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConformancePackComplianceSummary;
  }

  @override
  void update(void Function(ConformancePackComplianceSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConformancePackComplianceSummary build() => _build();

  _$ConformancePackComplianceSummary _build() {
    final _$result = _$v ??
        new _$ConformancePackComplianceSummary._(
            conformancePackComplianceStatus:
                BuiltValueNullFieldError.checkNotNull(
                    conformancePackComplianceStatus,
                    r'ConformancePackComplianceSummary',
                    'conformancePackComplianceStatus'),
            conformancePackName: BuiltValueNullFieldError.checkNotNull(
                conformancePackName,
                r'ConformancePackComplianceSummary',
                'conformancePackName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
