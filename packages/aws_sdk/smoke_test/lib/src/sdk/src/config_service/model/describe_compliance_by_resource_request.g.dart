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
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, complianceTypes.hashCode), limit.hashCode),
                nextToken.hashCode),
            resourceId.hashCode),
        resourceType.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
