// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregate_conformance_pack_compliance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregateConformancePackCompliance
    extends AggregateConformancePackCompliance {
  @override
  final _i2.ConformancePackComplianceType? complianceType;
  @override
  final int compliantRuleCount;
  @override
  final int nonCompliantRuleCount;
  @override
  final int totalRuleCount;

  factory _$AggregateConformancePackCompliance(
          [void Function(AggregateConformancePackComplianceBuilder)?
              updates]) =>
      (new AggregateConformancePackComplianceBuilder()..update(updates))
          ._build();

  _$AggregateConformancePackCompliance._(
      {this.complianceType,
      required this.compliantRuleCount,
      required this.nonCompliantRuleCount,
      required this.totalRuleCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(compliantRuleCount,
        r'AggregateConformancePackCompliance', 'compliantRuleCount');
    BuiltValueNullFieldError.checkNotNull(nonCompliantRuleCount,
        r'AggregateConformancePackCompliance', 'nonCompliantRuleCount');
    BuiltValueNullFieldError.checkNotNull(totalRuleCount,
        r'AggregateConformancePackCompliance', 'totalRuleCount');
  }

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
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, compliantRuleCount.hashCode);
    _$hash = $jc(_$hash, nonCompliantRuleCount.hashCode);
    _$hash = $jc(_$hash, totalRuleCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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
            compliantRuleCount: BuiltValueNullFieldError.checkNotNull(
                compliantRuleCount,
                r'AggregateConformancePackCompliance',
                'compliantRuleCount'),
            nonCompliantRuleCount: BuiltValueNullFieldError.checkNotNull(
                nonCompliantRuleCount,
                r'AggregateConformancePackCompliance',
                'nonCompliantRuleCount'),
            totalRuleCount: BuiltValueNullFieldError.checkNotNull(
                totalRuleCount,
                r'AggregateConformancePackCompliance',
                'totalRuleCount'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
