// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_organization_conformance_packs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeOrganizationConformancePacksRequest
    extends DescribeOrganizationConformancePacksRequest {
  @override
  final _i3.BuiltList<String>? organizationConformancePackNames;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$DescribeOrganizationConformancePacksRequest(
          [void Function(DescribeOrganizationConformancePacksRequestBuilder)?
              updates]) =>
      (new DescribeOrganizationConformancePacksRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeOrganizationConformancePacksRequest._(
      {this.organizationConformancePackNames,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        limit, r'DescribeOrganizationConformancePacksRequest', 'limit');
  }

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
        organizationConformancePackNames ==
            other.organizationConformancePackNames &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, organizationConformancePackNames.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeOrganizationConformancePacksRequestBuilder
    implements
        Builder<DescribeOrganizationConformancePacksRequest,
            DescribeOrganizationConformancePacksRequestBuilder> {
  _$DescribeOrganizationConformancePacksRequest? _$v;

  _i3.ListBuilder<String>? _organizationConformancePackNames;
  _i3.ListBuilder<String> get organizationConformancePackNames =>
      _$this._organizationConformancePackNames ??=
          new _i3.ListBuilder<String>();
  set organizationConformancePackNames(
          _i3.ListBuilder<String>? organizationConformancePackNames) =>
      _$this._organizationConformancePackNames =
          organizationConformancePackNames;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeOrganizationConformancePacksRequestBuilder() {
    DescribeOrganizationConformancePacksRequest._init(this);
  }

  DescribeOrganizationConformancePacksRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _organizationConformancePackNames =
          $v.organizationConformancePackNames?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
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
              organizationConformancePackNames:
                  _organizationConformancePackNames?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(limit,
                  r'DescribeOrganizationConformancePacksRequest', 'limit'),
              nextToken: nextToken);
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
