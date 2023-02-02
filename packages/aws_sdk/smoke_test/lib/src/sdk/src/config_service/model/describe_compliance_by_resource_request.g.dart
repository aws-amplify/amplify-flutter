// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_compliance_by_resource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeComplianceByResourceRequest
    extends DescribeComplianceByResourceRequest {
  @override
  final _i4.BuiltList<_i3.ComplianceType>? complianceTypes;
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final String? resourceId;
  @override
  final String? resourceType;

  factory _$DescribeComplianceByResourceRequest(
          [void Function(DescribeComplianceByResourceRequestBuilder)?
              updates]) =>
      (new DescribeComplianceByResourceRequestBuilder()..update(updates))
          ._build();

  _$DescribeComplianceByResourceRequest._(
      {this.complianceTypes,
      this.limit,
      this.nextToken,
      this.resourceId,
      this.resourceType})
      : super._();

  @override
  DescribeComplianceByResourceRequest rebuild(
          void Function(DescribeComplianceByResourceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeComplianceByResourceRequestBuilder toBuilder() =>
      new DescribeComplianceByResourceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeComplianceByResourceRequest &&
        complianceTypes == other.complianceTypes &&
        limit == other.limit &&
        nextToken == other.nextToken &&
        resourceId == other.resourceId &&
        resourceType == other.resourceType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, complianceTypes.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jc(_$hash, resourceType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeComplianceByResourceRequestBuilder
    implements
        Builder<DescribeComplianceByResourceRequest,
            DescribeComplianceByResourceRequestBuilder> {
  _$DescribeComplianceByResourceRequest? _$v;

  _i4.ListBuilder<_i3.ComplianceType>? _complianceTypes;
  _i4.ListBuilder<_i3.ComplianceType> get complianceTypes =>
      _$this._complianceTypes ??= new _i4.ListBuilder<_i3.ComplianceType>();
  set complianceTypes(_i4.ListBuilder<_i3.ComplianceType>? complianceTypes) =>
      _$this._complianceTypes = complianceTypes;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  String? _resourceType;
  String? get resourceType => _$this._resourceType;
  set resourceType(String? resourceType) => _$this._resourceType = resourceType;

  DescribeComplianceByResourceRequestBuilder() {
    DescribeComplianceByResourceRequest._init(this);
  }

  DescribeComplianceByResourceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _complianceTypes = $v.complianceTypes?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _resourceId = $v.resourceId;
      _resourceType = $v.resourceType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeComplianceByResourceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeComplianceByResourceRequest;
  }

  @override
  void update(
      void Function(DescribeComplianceByResourceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeComplianceByResourceRequest build() => _build();

  _$DescribeComplianceByResourceRequest _build() {
    _$DescribeComplianceByResourceRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeComplianceByResourceRequest._(
              complianceTypes: _complianceTypes?.build(),
              limit: limit,
              nextToken: nextToken,
              resourceId: resourceId,
              resourceType: resourceType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'complianceTypes';
        _complianceTypes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeComplianceByResourceRequest',
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
