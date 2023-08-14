// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compliance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Compliance extends Compliance {
  @override
  final ComplianceType? complianceType;
  @override
  final ComplianceContributorCount? complianceContributorCount;

  factory _$Compliance([void Function(ComplianceBuilder)? updates]) =>
      (new ComplianceBuilder()..update(updates))._build();

  _$Compliance._({this.complianceType, this.complianceContributorCount})
      : super._();

  @override
  Compliance rebuild(void Function(ComplianceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplianceBuilder toBuilder() => new ComplianceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Compliance &&
        complianceType == other.complianceType &&
        complianceContributorCount == other.complianceContributorCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jc(_$hash, complianceContributorCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ComplianceBuilder implements Builder<Compliance, ComplianceBuilder> {
  _$Compliance? _$v;

  ComplianceType? _complianceType;
  ComplianceType? get complianceType => _$this._complianceType;
  set complianceType(ComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  ComplianceContributorCountBuilder? _complianceContributorCount;
  ComplianceContributorCountBuilder get complianceContributorCount =>
      _$this._complianceContributorCount ??=
          new ComplianceContributorCountBuilder();
  set complianceContributorCount(
          ComplianceContributorCountBuilder? complianceContributorCount) =>
      _$this._complianceContributorCount = complianceContributorCount;

  ComplianceBuilder();

  ComplianceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceType = $v.complianceType;
      _complianceContributorCount = $v.complianceContributorCount?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Compliance other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Compliance;
  }

  @override
  void update(void Function(ComplianceBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Compliance build() => _build();

  _$Compliance _build() {
    _$Compliance _$result;
    try {
      _$result = _$v ??
          new _$Compliance._(
              complianceType: complianceType,
              complianceContributorCount: _complianceContributorCount?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceContributorCount';
        _complianceContributorCount?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Compliance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
