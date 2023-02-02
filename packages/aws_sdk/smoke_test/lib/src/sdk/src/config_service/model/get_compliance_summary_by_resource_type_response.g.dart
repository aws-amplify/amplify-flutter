// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_compliance_summary_by_resource_type_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceSummaryByResourceTypeResponse
    extends GetComplianceSummaryByResourceTypeResponse {
  @override
  final _i3.BuiltList<_i2.ComplianceSummaryByResourceType>?
      complianceSummariesByResourceType;

  factory _$GetComplianceSummaryByResourceTypeResponse(
          [void Function(GetComplianceSummaryByResourceTypeResponseBuilder)?
              updates]) =>
      (new GetComplianceSummaryByResourceTypeResponseBuilder()..update(updates))
          ._build();

  _$GetComplianceSummaryByResourceTypeResponse._(
      {this.complianceSummariesByResourceType})
      : super._();

  @override
  GetComplianceSummaryByResourceTypeResponse rebuild(
          void Function(GetComplianceSummaryByResourceTypeResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetComplianceSummaryByResourceTypeResponseBuilder toBuilder() =>
      new GetComplianceSummaryByResourceTypeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetComplianceSummaryByResourceTypeResponse &&
        complianceSummariesByResourceType ==
            other.complianceSummariesByResourceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceSummariesByResourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetComplianceSummaryByResourceTypeResponseBuilder
    implements
        Builder<GetComplianceSummaryByResourceTypeResponse,
            GetComplianceSummaryByResourceTypeResponseBuilder> {
  _$GetComplianceSummaryByResourceTypeResponse? _$v;

  _i3.ListBuilder<_i2.ComplianceSummaryByResourceType>?
      _complianceSummariesByResourceType;
  _i3.ListBuilder<_i2.ComplianceSummaryByResourceType>
      get complianceSummariesByResourceType =>
          _$this._complianceSummariesByResourceType ??=
              new _i3.ListBuilder<_i2.ComplianceSummaryByResourceType>();
  set complianceSummariesByResourceType(
          _i3.ListBuilder<_i2.ComplianceSummaryByResourceType>?
              complianceSummariesByResourceType) =>
      _$this._complianceSummariesByResourceType =
          complianceSummariesByResourceType;

  GetComplianceSummaryByResourceTypeResponseBuilder() {
    GetComplianceSummaryByResourceTypeResponse._init(this);
  }

  GetComplianceSummaryByResourceTypeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceSummariesByResourceType =
          $v.complianceSummariesByResourceType?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetComplianceSummaryByResourceTypeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetComplianceSummaryByResourceTypeResponse;
  }

  @override
  void update(
      void Function(GetComplianceSummaryByResourceTypeResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetComplianceSummaryByResourceTypeResponse build() => _build();

  _$GetComplianceSummaryByResourceTypeResponse _build() {
    _$GetComplianceSummaryByResourceTypeResponse _$result;
    try {
      _$result = _$v ??
          new _$GetComplianceSummaryByResourceTypeResponse._(
              complianceSummariesByResourceType:
                  _complianceSummariesByResourceType?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceSummariesByResourceType';
        _complianceSummariesByResourceType?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetComplianceSummaryByResourceTypeResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
