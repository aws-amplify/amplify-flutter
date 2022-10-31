// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_organization_conformance_packs_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationConformancePacksRequest
    extends DescribeOrganizationConformancePacksRequest {
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? organizationConformancePackNames;

  factory _$DescribeOrganizationConformancePacksRequest(
          [void Function(DescribeOrganizationConformancePacksRequestBuilder)?
              updates]) =>
      (new DescribeOrganizationConformancePacksRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeOrganizationConformancePacksRequest._(
      {this.limit, this.nextToken, this.organizationConformancePackNames})
      : super._();

  @override
  DescribeOrganizationConformancePacksRequest rebuild(
          void Function(DescribeOrganizationConformancePacksRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeOrganizationConformancePacksRequestBuilder toBuilder() =>
      new DescribeOrganizationConformancePacksRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeOrganizationConformancePacksRequest &&
        limit == other.limit &&
        nextToken == other.nextToken &&
        organizationConformancePackNames ==
            other.organizationConformancePackNames;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, limit.hashCode), nextToken.hashCode),
        organizationConformancePackNames.hashCode));
  }
}

class DescribeOrganizationConformancePacksRequestBuilder
    implements
        Builder<DescribeOrganizationConformancePacksRequest,
            DescribeOrganizationConformancePacksRequestBuilder> {
  _$DescribeOrganizationConformancePacksRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<String>? _organizationConformancePackNames;
  _i3.ListBuilder<String> get organizationConformancePackNames =>
      _$this._organizationConformancePackNames ??=
          new _i3.ListBuilder<String>();
  set organizationConformancePackNames(
          _i3.ListBuilder<String>? organizationConformancePackNames) =>
      _$this._organizationConformancePackNames =
          organizationConformancePackNames;

  DescribeOrganizationConformancePacksRequestBuilder() {
    DescribeOrganizationConformancePacksRequest._init(this);
  }

  DescribeOrganizationConformancePacksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _organizationConformancePackNames =
          $v.organizationConformancePackNames?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeOrganizationConformancePacksRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeOrganizationConformancePacksRequest;
  }

  @override
  void update(
      void Function(DescribeOrganizationConformancePacksRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeOrganizationConformancePacksRequest build() => _build();

  _$DescribeOrganizationConformancePacksRequest _build() {
    _$DescribeOrganizationConformancePacksRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeOrganizationConformancePacksRequest._(
              limit: limit,
              nextToken: nextToken,
              organizationConformancePackNames:
                  _organizationConformancePackNames?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationConformancePackNames';
        _organizationConformancePackNames?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeOrganizationConformancePacksRequest',
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
