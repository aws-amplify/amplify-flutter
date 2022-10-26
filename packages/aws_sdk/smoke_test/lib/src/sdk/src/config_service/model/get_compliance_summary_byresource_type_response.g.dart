// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_compliance_summary_byresource_type_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceSummaryByresourceTypeResponse
    extends GetComplianceSummaryByresourceTypeResponse {
  @override
  final _i2.BuiltList<_i3.ComplianceSummaryByresourceType>?
      complianceSummariesByresourceType;

  factory _$GetComplianceSummaryByresourceTypeResponse(
          [void Function(GetComplianceSummaryByresourceTypeResponseBuilder)?
              updates]) =>
      (new GetComplianceSummaryByresourceTypeResponseBuilder()..update(updates))
          ._build();

  _$GetComplianceSummaryByresourceTypeResponse._(
      {this.complianceSummariesByresourceType})
      : super._();

  @override
  GetComplianceSummaryByresourceTypeResponse rebuild(
          void Function(GetComplianceSummaryByresourceTypeResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetComplianceSummaryByresourceTypeResponseBuilder toBuilder() =>
      new GetComplianceSummaryByresourceTypeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetComplianceSummaryByresourceTypeResponse &&
        complianceSummariesByresourceType ==
            other.complianceSummariesByresourceType;
  }

  @override
  int get hashCode {
    return $jf($jc(0, complianceSummariesByresourceType.hashCode));
  }
}

class GetComplianceSummaryByresourceTypeResponseBuilder
    implements
        Builder<GetComplianceSummaryByresourceTypeResponse,
            GetComplianceSummaryByresourceTypeResponseBuilder> {
  _$GetComplianceSummaryByresourceTypeResponse? _$v;

  _i2.ListBuilder<_i3.ComplianceSummaryByresourceType>?
      _complianceSummariesByresourceType;
  _i2.ListBuilder<_i3.ComplianceSummaryByresourceType>
      get complianceSummariesByresourceType =>
          _$this._complianceSummariesByresourceType ??=
              new _i2.ListBuilder<_i3.ComplianceSummaryByresourceType>();
  set complianceSummariesByresourceType(
          _i2.ListBuilder<_i3.ComplianceSummaryByresourceType>?
              complianceSummariesByresourceType) =>
      _$this._complianceSummariesByresourceType =
          complianceSummariesByresourceType;

  GetComplianceSummaryByresourceTypeResponseBuilder() {
    GetComplianceSummaryByresourceTypeResponse._init(this);
  }

  GetComplianceSummaryByresourceTypeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceSummariesByresourceType =
          $v.complianceSummariesByresourceType?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetComplianceSummaryByresourceTypeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetComplianceSummaryByresourceTypeResponse;
  }

  @override
  void update(
      void Function(GetComplianceSummaryByresourceTypeResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetComplianceSummaryByresourceTypeResponse build() => _build();

  _$GetComplianceSummaryByresourceTypeResponse _build() {
    _$GetComplianceSummaryByresourceTypeResponse _$result;
    try {
      _$result = _$v ??
          new _$GetComplianceSummaryByresourceTypeResponse._(
              complianceSummariesByresourceType:
                  _complianceSummariesByresourceType?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceSummariesByresourceType';
        _complianceSummariesByresourceType?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetComplianceSummaryByresourceTypeResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
