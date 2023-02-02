// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.aggregate_conformance_pack_compliance_count;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AggregateConformancePackComplianceCount
    extends AggregateConformancePackComplianceCount {
  @override
  final int? compliantConformancePackCount;
  @override
  final int? nonCompliantConformancePackCount;

  factory _$AggregateConformancePackComplianceCount(
          [void Function(AggregateConformancePackComplianceCountBuilder)?
              updates]) =>
      (new AggregateConformancePackComplianceCountBuilder()..update(updates))
          ._build();

  _$AggregateConformancePackComplianceCount._(
      {this.compliantConformancePackCount,
      this.nonCompliantConformancePackCount})
      : super._();

  @override
  AggregateConformancePackComplianceCount rebuild(
          void Function(AggregateConformancePackComplianceCountBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AggregateConformancePackComplianceCountBuilder toBuilder() =>
      new AggregateConformancePackComplianceCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AggregateConformancePackComplianceCount &&
        compliantConformancePackCount == other.compliantConformancePackCount &&
        nonCompliantConformancePackCount ==
            other.nonCompliantConformancePackCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, compliantConformancePackCount.hashCode);
    _$hash = $jc(_$hash, nonCompliantConformancePackCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AggregateConformancePackComplianceCountBuilder
    implements
        Builder<AggregateConformancePackComplianceCount,
            AggregateConformancePackComplianceCountBuilder> {
  _$AggregateConformancePackComplianceCount? _$v;

  int? _compliantConformancePackCount;
  int? get compliantConformancePackCount =>
      _$this._compliantConformancePackCount;
  set compliantConformancePackCount(int? compliantConformancePackCount) =>
      _$this._compliantConformancePackCount = compliantConformancePackCount;

  int? _nonCompliantConformancePackCount;
  int? get nonCompliantConformancePackCount =>
      _$this._nonCompliantConformancePackCount;
  set nonCompliantConformancePackCount(int? nonCompliantConformancePackCount) =>
      _$this._nonCompliantConformancePackCount =
          nonCompliantConformancePackCount;

  AggregateConformancePackComplianceCountBuilder() {
    AggregateConformancePackComplianceCount._init(this);
  }

  AggregateConformancePackComplianceCountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _compliantConformancePackCount = $v.compliantConformancePackCount;
      _nonCompliantConformancePackCount = $v.nonCompliantConformancePackCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AggregateConformancePackComplianceCount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AggregateConformancePackComplianceCount;
  }

  @override
  void update(
      void Function(AggregateConformancePackComplianceCountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AggregateConformancePackComplianceCount build() => _build();

  _$AggregateConformancePackComplianceCount _build() {
    final _$result = _$v ??
        new _$AggregateConformancePackComplianceCount._(
            compliantConformancePackCount: compliantConformancePackCount,
            nonCompliantConformancePackCount: nonCompliantConformancePackCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
