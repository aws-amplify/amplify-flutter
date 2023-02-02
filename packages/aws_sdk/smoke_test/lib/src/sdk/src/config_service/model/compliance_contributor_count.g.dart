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
    var _$hash = 0;
    _$hash = $jc(_$hash, capExceeded.hashCode);
    _$hash = $jc(_$hash, cappedCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
