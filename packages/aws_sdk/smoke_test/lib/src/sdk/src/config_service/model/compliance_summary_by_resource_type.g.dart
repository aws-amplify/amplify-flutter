// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.compliance_summary_by_resource_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplianceSummaryByResourceType
    extends ComplianceSummaryByResourceType {
  @override
  final String? resourceType;
  @override
  final _i2.ComplianceSummary? complianceSummary;

  factory _$ComplianceSummaryByResourceType(
          [void Function(ComplianceSummaryByResourceTypeBuilder)? updates]) =>
      (new ComplianceSummaryByResourceTypeBuilder()..update(updates))._build();

  _$ComplianceSummaryByResourceType._(
      {this.resourceType, this.complianceSummary})
      : super._();

  @override
  ComplianceSummaryByResourceType rebuild(
          void Function(ComplianceSummaryByResourceTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplianceSummaryByResourceTypeBuilder toBuilder() =>
      new ComplianceSummaryByResourceTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplianceSummaryByResourceType &&
        resourceType == other.resourceType &&
        complianceSummary == other.complianceSummary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, complianceSummary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ComplianceSummaryByResourceTypeBuilder
    implements
        Builder<ComplianceSummaryByResourceType,
            ComplianceSummaryByResourceTypeBuilder> {
  _$ComplianceSummaryByResourceType? _$v;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  _i2.ComplianceSummaryBuilder? _complianceSummary;
  _i2.ComplianceSummaryBuilder get complianceSummary =>
      _$this._complianceSummary ??= new _i2.ComplianceSummaryBuilder();
  set complianceSummary(_i2.ComplianceSummaryBuilder? complianceSummary) =>
      _$this._complianceSummary = complianceSummary;

  ComplianceSummaryByResourceTypeBuilder() {
    ComplianceSummaryByResourceType._init(this);
  }

  ComplianceSummaryByResourceTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _complianceSummary = $v.complianceSummary?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplianceSummaryByResourceType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComplianceSummaryByResourceType;
  }

  @override
  void update(void Function(ComplianceSummaryByResourceTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplianceSummaryByResourceType build() => _build();

  _$ComplianceSummaryByResourceType _build() {
    _$ComplianceSummaryByResourceType _$result;
    try {
      _$result = _$v ??
          new _$ComplianceSummaryByResourceType._(
              resourceType: resourceType,
              complianceSummary: _complianceSummary?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceSummary';
        _complianceSummary?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ComplianceSummaryByResourceType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
