// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.compliance_summary_byresource_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComplianceSummaryByresourceType
    extends ComplianceSummaryByresourceType {
  @override
  final _i2.ComplianceSummary? complianceSummary;
  @override
  final String? resourceType;

  factory _$ComplianceSummaryByresourceType(
          [void Function(ComplianceSummaryByresourceTypeBuilder)? updates]) =>
      (new ComplianceSummaryByresourceTypeBuilder()..update(updates))._build();

  _$ComplianceSummaryByresourceType._(
      {this.complianceSummary, this.resourceType})
      : super._();

  @override
  ComplianceSummaryByresourceType rebuild(
          void Function(ComplianceSummaryByresourceTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplianceSummaryByresourceTypeBuilder toBuilder() =>
      new ComplianceSummaryByresourceTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplianceSummaryByresourceType &&
        complianceSummary == other.complianceSummary &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, complianceSummary.hashCode), resourceType.hashCode));
  }
}

class ComplianceSummaryByresourceTypeBuilder
    implements
        Builder<ComplianceSummaryByresourceType,
            ComplianceSummaryByresourceTypeBuilder> {
  _$ComplianceSummaryByresourceType? _$v;

  _i2.ComplianceSummaryBuilder? _complianceSummary;
  _i2.ComplianceSummaryBuilder get complianceSummary =>
      _$this._complianceSummary ??= new _i2.ComplianceSummaryBuilder();
  set complianceSummary(_i2.ComplianceSummaryBuilder? complianceSummary) =>
      _$this._complianceSummary = complianceSummary;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  ComplianceSummaryByresourceTypeBuilder() {
    ComplianceSummaryByresourceType._init(this);
  }

  ComplianceSummaryByresourceTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceSummary = $v.complianceSummary?.toBuilder();
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplianceSummaryByresourceType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComplianceSummaryByresourceType;
  }

  @override
  void update(void Function(ComplianceSummaryByresourceTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplianceSummaryByresourceType build() => _build();

  _$ComplianceSummaryByresourceType _build() {
    _$ComplianceSummaryByresourceType _$result;
    try {
      _$result = _$v ??
          new _$ComplianceSummaryByresourceType._(
              complianceSummary: _complianceSummary?.build(),
              resourceType: resourceType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceSummary';
        _complianceSummary?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ComplianceSummaryByresourceType', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
