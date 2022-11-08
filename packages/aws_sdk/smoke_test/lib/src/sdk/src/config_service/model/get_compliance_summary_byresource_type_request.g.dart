// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_compliance_summary_byresource_type_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceSummaryByresourceTypeRequest
    extends GetComplianceSummaryByresourceTypeRequest {
  @override
  final _i3.BuiltList<String>? resourceTypes;

  factory _$GetComplianceSummaryByresourceTypeRequest(
          [void Function(GetComplianceSummaryByresourceTypeRequestBuilder)?
              updates]) =>
      (new GetComplianceSummaryByresourceTypeRequestBuilder()..update(updates))
          ._build();

  _$GetComplianceSummaryByresourceTypeRequest._({this.resourceTypes})
      : super._();

  @override
  GetComplianceSummaryByresourceTypeRequest rebuild(
          void Function(GetComplianceSummaryByresourceTypeRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetComplianceSummaryByresourceTypeRequestBuilder toBuilder() =>
      new GetComplianceSummaryByresourceTypeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetComplianceSummaryByresourceTypeRequest &&
        resourceTypes == other.resourceTypes;
  }

  @override
  int get hashCode {
    return $jf($jc(0, resourceTypes.hashCode));
  }
}

class GetComplianceSummaryByresourceTypeRequestBuilder
    implements
        Builder<GetComplianceSummaryByresourceTypeRequest,
            GetComplianceSummaryByresourceTypeRequestBuilder> {
  _$GetComplianceSummaryByresourceTypeRequest? _$v;

  _i3.ListBuilder<String>? _resourceTypes;
  _i3.ListBuilder<String> get resourceTypes =>
      _$this._resourceTypes ??= new _i3.ListBuilder<String>();
  set resourceTypes(_i3.ListBuilder<String>? resourceTypes) =>
      _$this._resourceTypes = resourceTypes;

  GetComplianceSummaryByresourceTypeRequestBuilder() {
    GetComplianceSummaryByresourceTypeRequest._init(this);
  }

  GetComplianceSummaryByresourceTypeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceTypes = $v.resourceTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetComplianceSummaryByresourceTypeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetComplianceSummaryByresourceTypeRequest;
  }

  @override
  void update(
      void Function(GetComplianceSummaryByresourceTypeRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetComplianceSummaryByresourceTypeRequest build() => _build();

  _$GetComplianceSummaryByresourceTypeRequest _build() {
    _$GetComplianceSummaryByresourceTypeRequest _$result;
    try {
      _$result = _$v ??
          new _$GetComplianceSummaryByresourceTypeRequest._(
              resourceTypes: _resourceTypes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceTypes';
        _resourceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetComplianceSummaryByresourceTypeRequest',
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
