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
    var _$hash = 0;
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, organizationConformancePackNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
