// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_compliance_details_by_resource_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetComplianceDetailsByResourceRequest
    extends GetComplianceDetailsByResourceRequest {
  @override
  final String? resourceType;
  @override
  final String? resourceId;
  @override
  final _i4.BuiltList<_i3.ComplianceType>? complianceTypes;
  @override
  final String? nextToken;
  @override
  final String? resourceEvaluationId;

  factory _$GetComplianceDetailsByResourceRequest(
          [void Function(GetComplianceDetailsByResourceRequestBuilder)?
              updates]) =>
      (new GetComplianceDetailsByResourceRequestBuilder()..update(updates))
          ._build();

  _$GetComplianceDetailsByResourceRequest._(
      {this.resourceType,
      this.resourceId,
      this.complianceTypes,
      this.nextToken,
      this.resourceEvaluationId})
      : super._();

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
        resourceType == other.resourceType &&
        resourceId == other.resourceId &&
        complianceTypes == other.complianceTypes &&
        nextToken == other.nextToken &&
        resourceEvaluationId == other.resourceEvaluationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, complianceTypes.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, resourceEvaluationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetComplianceDetailsByResourceRequestBuilder
    implements
        Builder<GetComplianceDetailsByResourceRequest,
            GetComplianceDetailsByResourceRequestBuilder> {
  _$GetComplianceDetailsByResourceRequest? _$v;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  _i4.ListBuilder<_i3.ComplianceType>? _complianceTypes;
  _i4.ListBuilder<_i3.ComplianceType> get complianceTypes =>
      _$this._complianceTypes ??= new _i4.ListBuilder<_i3.ComplianceType>();
  set complianceTypes(_i4.ListBuilder<_i3.ComplianceType>? complianceTypes) =>
      _$this._complianceTypes = complianceTypes;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _resourceEvaluationId;
  String? get resourceEvaluationId => _$this._resourceEvaluationId;
  set resourceEvaluationId(String? resourceEvaluationId) =>
      _$this._resourceEvaluationId = resourceEvaluationId;

  GetComplianceDetailsByResourceRequestBuilder() {
    GetComplianceDetailsByResourceRequest._init(this);
  }

  GetComplianceDetailsByResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceType = $v.resourceType;
      _resourceId = $v.resourceId;
      _complianceTypes = $v.complianceTypes?.toBuilder();
      _nextToken = $v.nextToken;
      _resourceEvaluationId = $v.resourceEvaluationId;
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
              resourceType: resourceType,
              resourceId: resourceId,
              complianceTypes: _complianceTypes?.build(),
              nextToken: nextToken,
              resourceEvaluationId: resourceEvaluationId);
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
