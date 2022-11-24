// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.aggregate_conformance_pack_compliance_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregateConformancePackComplianceSummary
    extends AggregateConformancePackComplianceSummary {
  @override
  final _i2.AggregateConformancePackComplianceCount? complianceSummary;
  @override
  final String? groupName;

  factory _$AggregateConformancePackComplianceSummary(
          [void Function(AggregateConformancePackComplianceSummaryBuilder)?
              updates]) =>
      (new AggregateConformancePackComplianceSummaryBuilder()..update(updates))
          ._build();

  _$AggregateConformancePackComplianceSummary._(
      {this.complianceSummary, this.groupName})
      : super._();

  @override
  AggregateConformancePackComplianceSummary rebuild(
          void Function(AggregateConformancePackComplianceSummaryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregateConformancePackComplianceSummaryBuilder toBuilder() =>
      new AggregateConformancePackComplianceSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregateConformancePackComplianceSummary &&
        complianceSummary == other.complianceSummary &&
        groupName == other.groupName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, complianceSummary.hashCode), groupName.hashCode));
  }
}

class AggregateConformancePackComplianceSummaryBuilder
    implements
        Builder<AggregateConformancePackComplianceSummary,
            AggregateConformancePackComplianceSummaryBuilder> {
  _$AggregateConformancePackComplianceSummary? _$v;

  _i2.AggregateConformancePackComplianceCountBuilder? _complianceSummary;
  _i2.AggregateConformancePackComplianceCountBuilder get complianceSummary =>
      _$this._complianceSummary ??=
          new _i2.AggregateConformancePackComplianceCountBuilder();
  set complianceSummary(
          _i2.AggregateConformancePackComplianceCountBuilder?
              complianceSummary) =>
      _$this._complianceSummary = complianceSummary;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  AggregateConformancePackComplianceSummaryBuilder() {
    AggregateConformancePackComplianceSummary._init(this);
  }

  AggregateConformancePackComplianceSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceSummary = $v.complianceSummary?.toBuilder();
      _groupName = $v.groupName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregateConformancePackComplianceSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AggregateConformancePackComplianceSummary;
  }

  @override
  void update(
      void Function(AggregateConformancePackComplianceSummaryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregateConformancePackComplianceSummary build() => _build();

  _$AggregateConformancePackComplianceSummary _build() {
    _$AggregateConformancePackComplianceSummary _$result;
    try {
      _$result = _$v ??
          new _$AggregateConformancePackComplianceSummary._(
              complianceSummary: _complianceSummary?.build(),
              groupName: groupName);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceSummary';
        _complianceSummary?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AggregateConformancePackComplianceSummary',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
