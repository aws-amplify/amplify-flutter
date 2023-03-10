// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_organization_conformance_pack_statuses_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationConformancePackStatusesRequest
    extends DescribeOrganizationConformancePackStatusesRequest {
  @override
  final int? limit;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? organizationConformancePackNames;

  factory _$DescribeOrganizationConformancePackStatusesRequest(
          [void Function(
                  DescribeOrganizationConformancePackStatusesRequestBuilder)?
              updates]) =>
      (new DescribeOrganizationConformancePackStatusesRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeOrganizationConformancePackStatusesRequest._(
      {this.limit, this.nextToken, this.organizationConformancePackNames})
      : super._();

  @override
  DescribeOrganizationConformancePackStatusesRequest rebuild(
          void Function(
                  DescribeOrganizationConformancePackStatusesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeOrganizationConformancePackStatusesRequestBuilder toBuilder() =>
      new DescribeOrganizationConformancePackStatusesRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeOrganizationConformancePackStatusesRequest &&
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

class DescribeOrganizationConformancePackStatusesRequestBuilder
    implements
        Builder<DescribeOrganizationConformancePackStatusesRequest,
            DescribeOrganizationConformancePackStatusesRequestBuilder> {
  _$DescribeOrganizationConformancePackStatusesRequest? _$v;

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

  DescribeOrganizationConformancePackStatusesRequestBuilder() {
    DescribeOrganizationConformancePackStatusesRequest._init(this);
  }

  DescribeOrganizationConformancePackStatusesRequestBuilder get _$this {
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
  void replace(DescribeOrganizationConformancePackStatusesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeOrganizationConformancePackStatusesRequest;
  }

  @override
  void update(
      void Function(DescribeOrganizationConformancePackStatusesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeOrganizationConformancePackStatusesRequest build() => _build();

  _$DescribeOrganizationConformancePackStatusesRequest _build() {
    _$DescribeOrganizationConformancePackStatusesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeOrganizationConformancePackStatusesRequest._(
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
            r'DescribeOrganizationConformancePackStatusesRequest',
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
