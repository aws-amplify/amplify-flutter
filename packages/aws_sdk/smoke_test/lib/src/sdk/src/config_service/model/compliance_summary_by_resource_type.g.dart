// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.compliance_summary_by_resource_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplianceSummaryByResourceType
    extends ComplianceSummaryByResourceType {
  @override
  final _i2.ComplianceSummary? complianceSummary;
  @override
  final String? resourceType;

  factory _$ComplianceSummaryByResourceType(
          [void Function(ComplianceSummaryByResourceTypeBuilder)? updates]) =>
      (new ComplianceSummaryByResourceTypeBuilder()..update(updates))._build();

  _$ComplianceSummaryByResourceType._(
      {this.complianceSummary, this.resourceType})
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
        complianceSummary == other.complianceSummary &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, complianceSummary.hashCode), resourceType.hashCode));
  }
}

class ComplianceSummaryByResourceTypeBuilder
    implements
        Builder<ComplianceSummaryByResourceType,
            ComplianceSummaryByResourceTypeBuilder> {
  _$ComplianceSummaryByResourceType? _$v;

  _i2.ComplianceSummaryBuilder? _complianceSummary;
  _i2.ComplianceSummaryBuilder get complianceSummary =>
      _$this._complianceSummary ??= new _i2.ComplianceSummaryBuilder();
  set complianceSummary(_i2.ComplianceSummaryBuilder? complianceSummary) =>
      _$this._complianceSummary = complianceSummary;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  ComplianceSummaryByResourceTypeBuilder() {
    ComplianceSummaryByResourceType._init(this);
  }

  ComplianceSummaryByResourceTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceSummary = $v.complianceSummary?.toBuilder();
      _resourceType = $v.resourceType;
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
              complianceSummary: _complianceSummary?.build(),
              resourceType: resourceType);
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
