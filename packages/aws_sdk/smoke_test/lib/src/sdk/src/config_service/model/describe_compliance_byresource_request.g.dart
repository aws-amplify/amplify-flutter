// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_compliance_byresource_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeComplianceByresourceRequest
    extends DescribeComplianceByresourceRequest {
  @override
  final _i3.BuiltList<_i4.ComplianceType>? complianceTypes;
  @override
  final int limit;
  @override
  final String? nextToken;
  @override
  final String? resourceId;
  @override
  final String? resourceType;

  factory _$DescribeComplianceByresourceRequest(
          [void Function(DescribeComplianceByresourceRequestBuilder)?
              updates]) =>
      (new DescribeComplianceByresourceRequestBuilder()..update(updates))
          ._build();

  _$DescribeComplianceByresourceRequest._(
      {this.complianceTypes,
      required this.limit,
      this.nextToken,
      this.resourceId,
      this.resourceType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        limit, r'DescribeComplianceByresourceRequest', 'limit');
  }

  @override
  DescribeComplianceByresourceRequest rebuild(
          void Function(DescribeComplianceByresourceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeComplianceByresourceRequestBuilder toBuilder() =>
      new DescribeComplianceByresourceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeComplianceByresourceRequest &&
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

class DescribeComplianceByresourceRequestBuilder
    implements
        Builder<DescribeComplianceByresourceRequest,
            DescribeComplianceByresourceRequestBuilder> {
  _$DescribeComplianceByresourceRequest? _$v;

  _i3.ListBuilder<_i4.ComplianceType>? _complianceTypes;
  _i3.ListBuilder<_i4.ComplianceType> get complianceTypes =>
      _$this._complianceTypes ??= new _i3.ListBuilder<_i4.ComplianceType>();
  set complianceTypes(_i3.ListBuilder<_i4.ComplianceType>? complianceTypes) =>
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

  DescribeComplianceByresourceRequestBuilder() {
    DescribeComplianceByresourceRequest._init(this);
  }

  DescribeComplianceByresourceRequestBuilder get _$this {
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
  void replace(DescribeComplianceByresourceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeComplianceByresourceRequest;
  }

  @override
  void update(
      void Function(DescribeComplianceByresourceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeComplianceByresourceRequest build() => _build();

  _$DescribeComplianceByresourceRequest _build() {
    _$DescribeComplianceByresourceRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeComplianceByresourceRequest._(
              complianceTypes: _complianceTypes?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit, r'DescribeComplianceByresourceRequest', 'limit'),
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
            r'DescribeComplianceByresourceRequest',
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
