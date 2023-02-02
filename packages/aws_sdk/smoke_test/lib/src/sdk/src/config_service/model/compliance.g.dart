// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.compliance;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Compliance extends Compliance {
  @override
  final _i2.ComplianceContributorCount? complianceContributorCount;
  @override
  final _i3.ComplianceType? complianceType;

  factory _$Compliance([void Function(ComplianceBuilder)? updates]) =>
      (new ComplianceBuilder()..update(updates))._build();

  _$Compliance._({this.complianceContributorCount, this.complianceType})
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
        complianceContributorCount == other.complianceContributorCount &&
        complianceType == other.complianceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceContributorCount.hashCode);
    _$hash = $jc(_$hash, complianceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ComplianceBuilder implements Builder<Compliance, ComplianceBuilder> {
  _$Compliance? _$v;

  _i2.ComplianceContributorCountBuilder? _complianceContributorCount;
  _i2.ComplianceContributorCountBuilder get complianceContributorCount =>
      _$this._complianceContributorCount ??=
          new _i2.ComplianceContributorCountBuilder();
  set complianceContributorCount(
          _i2.ComplianceContributorCountBuilder? complianceContributorCount) =>
      _$this._complianceContributorCount = complianceContributorCount;

  _i3.ComplianceType? _complianceType;
  _i3.ComplianceType? get complianceType => _$this._complianceType;
  set complianceType(_i3.ComplianceType? complianceType) =>
      _$this._complianceType = complianceType;

  ComplianceBuilder() {
    Compliance._init(this);
  }

  ComplianceBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceContributorCount = $v.complianceContributorCount?.toBuilder();
      _complianceType = $v.complianceType;
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
              complianceContributorCount: _complianceContributorCount?.build(),
              complianceType: complianceType);
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
