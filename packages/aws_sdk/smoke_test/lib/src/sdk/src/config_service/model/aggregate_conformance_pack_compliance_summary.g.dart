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
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceSummary.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
