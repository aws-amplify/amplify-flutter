// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.compliance_contributor_count;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplianceContributorCount extends ComplianceContributorCount {
  @override
  final bool? capExceeded;
  @override
  final int? cappedCount;

  factory _$ComplianceContributorCount(
          [void Function(ComplianceContributorCountBuilder)? updates]) =>
      (new ComplianceContributorCountBuilder()..update(updates))._build();

  _$ComplianceContributorCount._({this.capExceeded, this.cappedCount})
      : super._();

  @override
  ComplianceContributorCount rebuild(
          void Function(ComplianceContributorCountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplianceContributorCountBuilder toBuilder() =>
      new ComplianceContributorCountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplianceContributorCount &&
        capExceeded == other.capExceeded &&
        cappedCount == other.cappedCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, capExceeded.hashCode), cappedCount.hashCode));
  }
}

class ComplianceContributorCountBuilder
    implements
        Builder<ComplianceContributorCount, ComplianceContributorCountBuilder> {
  _$ComplianceContributorCount? _$v;

  bool? _capExceeded;
  bool? get capExceeded => _$this._capExceeded;
  set capExceeded(bool? capExceeded) => _$this._capExceeded = capExceeded;

  int? _cappedCount;
  int? get cappedCount => _$this._cappedCount;
  set cappedCount(int? cappedCount) => _$this._cappedCount = cappedCount;

  ComplianceContributorCountBuilder() {
    ComplianceContributorCount._init(this);
  }

  ComplianceContributorCountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capExceeded = $v.capExceeded;
      _cappedCount = $v.cappedCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplianceContributorCount other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComplianceContributorCount;
  }

  @override
  void update(void Function(ComplianceContributorCountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplianceContributorCount build() => _build();

  _$ComplianceContributorCount _build() {
    final _$result = _$v ??
        new _$ComplianceContributorCount._(
            capExceeded: capExceeded, cappedCount: cappedCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
