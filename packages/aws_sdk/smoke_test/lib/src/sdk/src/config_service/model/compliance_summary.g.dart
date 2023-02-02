// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.compliance_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplianceSummary extends ComplianceSummary {
  @override
  final DateTime? complianceSummaryTimestamp;
  @override
  final _i2.ComplianceContributorCount? compliantResourceCount;
  @override
  final _i2.ComplianceContributorCount? nonCompliantResourceCount;

  factory _$ComplianceSummary(
          [void Function(ComplianceSummaryBuilder)? updates]) =>
      (new ComplianceSummaryBuilder()..update(updates))._build();

  _$ComplianceSummary._(
      {this.complianceSummaryTimestamp,
      this.compliantResourceCount,
      this.nonCompliantResourceCount})
      : super._();

  @override
  ComplianceSummary rebuild(void Function(ComplianceSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplianceSummaryBuilder toBuilder() =>
      new ComplianceSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplianceSummary &&
        complianceSummaryTimestamp == other.complianceSummaryTimestamp &&
        compliantResourceCount == other.compliantResourceCount &&
        nonCompliantResourceCount == other.nonCompliantResourceCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceSummaryTimestamp.hashCode);
    _$hash = $jc(_$hash, compliantResourceCount.hashCode);
    _$hash = $jc(_$hash, nonCompliantResourceCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ComplianceSummaryBuilder
    implements Builder<ComplianceSummary, ComplianceSummaryBuilder> {
  _$ComplianceSummary? _$v;

  DateTime? _complianceSummaryTimestamp;
  DateTime? get complianceSummaryTimestamp =>
      _$this._complianceSummaryTimestamp;
  set complianceSummaryTimestamp(DateTime? complianceSummaryTimestamp) =>
      _$this._complianceSummaryTimestamp = complianceSummaryTimestamp;

  _i2.ComplianceContributorCountBuilder? _compliantResourceCount;
  _i2.ComplianceContributorCountBuilder get compliantResourceCount =>
      _$this._compliantResourceCount ??=
          new _i2.ComplianceContributorCountBuilder();
  set compliantResourceCount(
          _i2.ComplianceContributorCountBuilder? compliantResourceCount) =>
      _$this._compliantResourceCount = compliantResourceCount;

  _i2.ComplianceContributorCountBuilder? _nonCompliantResourceCount;
  _i2.ComplianceContributorCountBuilder get nonCompliantResourceCount =>
      _$this._nonCompliantResourceCount ??=
          new _i2.ComplianceContributorCountBuilder();
  set nonCompliantResourceCount(
          _i2.ComplianceContributorCountBuilder? nonCompliantResourceCount) =>
      _$this._nonCompliantResourceCount = nonCompliantResourceCount;

  ComplianceSummaryBuilder() {
    ComplianceSummary._init(this);
  }

  ComplianceSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceSummaryTimestamp = $v.complianceSummaryTimestamp;
      _compliantResourceCount = $v.compliantResourceCount?.toBuilder();
      _nonCompliantResourceCount = $v.nonCompliantResourceCount?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplianceSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComplianceSummary;
  }

  @override
  void update(void Function(ComplianceSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplianceSummary build() => _build();

  _$ComplianceSummary _build() {
    _$ComplianceSummary _$result;
    try {
      _$result = _$v ??
          new _$ComplianceSummary._(
              complianceSummaryTimestamp: complianceSummaryTimestamp,
              compliantResourceCount: _compliantResourceCount?.build(),
              nonCompliantResourceCount: _nonCompliantResourceCount?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'compliantResourceCount';
        _compliantResourceCount?.build();
        _$failedField = 'nonCompliantResourceCount';
        _nonCompliantResourceCount?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ComplianceSummary', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
