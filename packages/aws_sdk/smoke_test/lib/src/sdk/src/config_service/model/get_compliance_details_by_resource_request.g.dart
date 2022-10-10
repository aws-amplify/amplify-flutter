// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_compliance_details_by_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceDetailsByResourceRequest
    extends GetComplianceDetailsByResourceRequest {
  @override
  final _i4.BuiltList<_i3.ComplianceType>? complianceTypes;
  @override
  final String? nextToken;
  @override
  final String resourceId;
  @override
  final String resourceType;

  factory _$GetComplianceDetailsByResourceRequest(
          [void Function(GetComplianceDetailsByResourceRequestBuilder)?
              updates]) =>
      (new GetComplianceDetailsByResourceRequestBuilder()..update(updates))
          ._build();

  _$GetComplianceDetailsByResourceRequest._(
      {this.complianceTypes,
      this.nextToken,
      required this.resourceId,
      required this.resourceType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceId, r'GetComplianceDetailsByResourceRequest', 'resourceId');
    BuiltValueNullFieldError.checkNotNull(
        resourceType, r'GetComplianceDetailsByResourceRequest', 'resourceType');
  }

  @override
  GetComplianceDetailsByResourceRequest rebuild(
          void Function(GetComplianceDetailsByResourceRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetComplianceDetailsByResourceRequestBuilder toBuilder() =>
      new GetComplianceDetailsByResourceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetComplianceDetailsByResourceRequest &&
        complianceTypes == other.complianceTypes &&
        nextToken == other.nextToken &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, complianceTypes.hashCode), nextToken.hashCode),
            resourceId.hashCode),
        resourceType.hashCode));
  }
}

class GetComplianceDetailsByResourceRequestBuilder
    implements
        Builder<GetComplianceDetailsByResourceRequest,
            GetComplianceDetailsByResourceRequestBuilder> {
  _$GetComplianceDetailsByResourceRequest? _$v;

  _i4.ListBuilder<_i3.ComplianceType>? _complianceTypes;
  _i4.ListBuilder<_i3.ComplianceType> get complianceTypes =>
      _$this._complianceTypes ??= new _i4.ListBuilder<_i3.ComplianceType>();
  set complianceTypes(_i4.ListBuilder<_i3.ComplianceType>? complianceTypes) =>
      _$this._complianceTypes = complianceTypes;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  GetComplianceDetailsByResourceRequestBuilder() {
    GetComplianceDetailsByResourceRequest._init(this);
  }

  GetComplianceDetailsByResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceTypes = $v.complianceTypes?.toBuilder();
      _nextToken = $v.nextToken;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetComplianceDetailsByResourceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetComplianceDetailsByResourceRequest;
  }

  @override
  void update(
      void Function(GetComplianceDetailsByResourceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetComplianceDetailsByResourceRequest build() => _build();

  _$GetComplianceDetailsByResourceRequest _build() {
    _$GetComplianceDetailsByResourceRequest _$result;
    try {
      _$result = _$v ??
          new _$GetComplianceDetailsByResourceRequest._(
              complianceTypes: _complianceTypes?.build(),
              nextToken: nextToken,
              resourceId: BuiltValueNullFieldError.checkNotNull(resourceId,
                  r'GetComplianceDetailsByResourceRequest', 'resourceId'),
              resourceType: BuiltValueNullFieldError.checkNotNull(resourceType,
                  r'GetComplianceDetailsByResourceRequest', 'resourceType'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceTypes';
        _complianceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetComplianceDetailsByResourceRequest',
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
