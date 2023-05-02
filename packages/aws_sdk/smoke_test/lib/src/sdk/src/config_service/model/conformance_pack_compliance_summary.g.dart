// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_compliance_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackComplianceSummary
    extends ConformancePackComplianceSummary {
  @override
  final String conformancePackName;
  @override
  final _i2.ConformancePackComplianceType conformancePackComplianceStatus;

  factory _$ConformancePackComplianceSummary(
          [void Function(ConformancePackComplianceSummaryBuilder)? updates]) =>
      (new ConformancePackComplianceSummaryBuilder()..update(updates))._build();

  _$ConformancePackComplianceSummary._(
      {required this.conformancePackName,
      required this.conformancePackComplianceStatus})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(conformancePackName,
        r'ConformancePackComplianceSummary', 'conformancePackName');
    BuiltValueNullFieldError.checkNotNull(conformancePackComplianceStatus,
        r'ConformancePackComplianceSummary', 'conformancePackComplianceStatus');
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
        conformancePackName == other.conformancePackName &&
        conformancePackComplianceStatus ==
            other.conformancePackComplianceStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackName.hashCode);
    _$hash = $jc(_$hash, conformancePackComplianceStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConformancePackComplianceSummaryBuilder
    implements
        Builder<ConformancePackComplianceSummary,
            ConformancePackComplianceSummaryBuilder> {
  _$ConformancePackComplianceSummary? _$v;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  _i2.ConformancePackComplianceType? _conformancePackComplianceStatus;
  _i2.ConformancePackComplianceType? get conformancePackComplianceStatus =>
      _$this._conformancePackComplianceStatus;
  set conformancePackComplianceStatus(
          _i2.ConformancePackComplianceType? conformancePackComplianceStatus) =>
      _$this._conformancePackComplianceStatus = conformancePackComplianceStatus;

  ConformancePackComplianceSummaryBuilder() {
    ConformancePackComplianceSummary._init(this);
  }

  ConformancePackComplianceSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackName = $v.conformancePackName;
      _conformancePackComplianceStatus = $v.conformancePackComplianceStatus;
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
            conformancePackName: BuiltValueNullFieldError.checkNotNull(
                conformancePackName,
                r'ConformancePackComplianceSummary',
                'conformancePackName'),
            conformancePackComplianceStatus:
                BuiltValueNullFieldError.checkNotNull(
                    conformancePackComplianceStatus,
                    r'ConformancePackComplianceSummary',
                    'conformancePackComplianceStatus'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
