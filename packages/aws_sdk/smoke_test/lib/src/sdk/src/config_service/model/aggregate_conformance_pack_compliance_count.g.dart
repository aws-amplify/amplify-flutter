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
    return $jf($jc($jc(0, compliantConformancePackCount.hashCode),
        nonCompliantConformancePackCount.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
